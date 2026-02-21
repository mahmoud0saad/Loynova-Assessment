import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:loynova_app/core/di/injection.dart';
import 'package:loynova_app/core/enums/request_state.dart';
import 'package:loynova_app/core/theme/app_colors.dart';
import 'package:loynova_app/features/_shared/app_configurations/presentation/bloc/app_configuration_bloc.dart';
import 'package:loynova_app/features/wallet/presentation/wallet_screen/bloc/wallet_bloc.dart';
import 'package:loynova_app/features/wallet/presentation/wallet_screen/widgets/balance_card.dart';
import 'package:loynova_app/features/wallet/presentation/wallet_screen/widgets/empty_state.dart';
import 'package:loynova_app/features/wallet/presentation/wallet_screen/widgets/error_view.dart';
import 'package:loynova_app/features/wallet/presentation/wallet_screen/widgets/filter_chips.dart';
import 'package:loynova_app/features/wallet/presentation/wallet_screen/widgets/merchant_balances.dart';
import 'package:loynova_app/features/wallet/presentation/wallet_screen/widgets/transaction_tile.dart';
import 'package:loynova_app/generated/l10n.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<WalletBloc>()..add(const WalletEvent.started()),
      child: const _WalletView(),
    );
  }
}

class _WalletView extends StatelessWidget {
  const _WalletView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: AppColors.walletPrimary,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          S.of(context).wallet_title,
          style: TextStyle(fontSize: 18.spMin, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.language_rounded),
            onPressed: () {
              final configBloc = context.read<AppConfigurationBloc>();
              final currentLocale = configBloc.state.locale.languageCode;
              final newLocale = currentLocale == 'en' ? 'ar' : 'en';
              configBloc.add(
                AppConfigurationEvent.changeLocale(locale: Locale(newLocale)),
              );
            },
          ),
        ],
      ),
      // FAB inside BlocBuilder so it can pass the real available balance.
      floatingActionButton: BlocBuilder<WalletBloc, WalletState>(
        buildWhen: (prev, curr) => prev.balance != curr.balance,
        builder: (context, state) {
          return FloatingActionButton.extended(
            backgroundColor: AppColors.walletPrimary,
            foregroundColor: Colors.white,
            icon: const Icon(Icons.send_rounded),
            label: Text(S.of(context).transfer_points_title),
            onPressed: () => context.push(
              '/wallet/transfer',
              extra: state.balance?.totalPoints ?? 0,
            ),
          );
        },
      ),
      body: RefreshIndicator(
        color: AppColors.walletPrimary,
        onRefresh: () async {
          context.read<WalletBloc>().add(const WalletEvent.refresh());
          await Future.delayed(const Duration(seconds: 1));
        },
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth > 700;
            return BlocBuilder<WalletBloc, WalletState>(
              builder: (context, state) {
                if (state.balanceState == RequestState.loading &&
                    state.transactionsState == RequestState.loading) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.walletPrimary,
                    ),
                  );
                }

                if (state.balanceState == RequestState.error &&
                    state.balance == null) {
                  return ErrorView(
                    message:
                        state.errorMessage ??
                        S.of(context).something_went_wrong,
                    onRetry: () => context.read<WalletBloc>().add(
                      const WalletEvent.started(),
                    ),
                  );
                }

                return NotificationListener<ScrollNotification>(
                  onNotification: (notification) {
                    // Trigger load-more when the user scrolls close to the
                    // bottom edge (within 200 px).  This is safer than calling
                    // the event inside the SliverChildBuilderDelegate because
                    // the delegate can be called multiple times per frame.
                    if (notification is ScrollUpdateNotification) {
                      final metrics = notification.metrics;
                      final distanceToEnd =
                          metrics.maxScrollExtent - metrics.pixels;
                      if (distanceToEnd < 200 &&
                          state.hasNext &&
                          state.transactionsState != RequestState.loading) {
                        context.read<WalletBloc>().add(
                          const WalletEvent.loadMore(),
                        );
                      }
                    }
                    return false;
                  },
                  child: CustomScrollView(
                    slivers: [
                      if (state.balance != null)
                        SliverToBoxAdapter(
                          child: BalanceCard(balance: state.balance!),
                        ),
                      if (state.balance != null)
                        SliverToBoxAdapter(
                          child: MerchantBalances(
                            merchants: state.balance!.balancesByMerchant,
                            isWide: isWide,
                          ),
                        ),
                      SliverToBoxAdapter(
                        child: FilterChips(
                          selectedType: state.selectedType,
                          onSelected: (type) => context.read<WalletBloc>().add(
                            WalletEvent.filterByType(type: type),
                          ),
                        ),
                      ),
                      if (state.transactionsState == RequestState.loading &&
                          state.transactions.isEmpty)
                        const SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.all(32),
                            child: Center(
                              child: CircularProgressIndicator(
                                color: AppColors.walletPrimary,
                              ),
                            ),
                          ),
                        )
                      else if (state.transactions.isEmpty)
                        SliverToBoxAdapter(
                          child: EmptyState(selectedType: state.selectedType),
                        )
                      else ...[
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) => TransactionTile(
                              transaction: state.transactions[index],
                            ),
                            childCount: state.transactions.length,
                          ),
                        ),
                        // Pagination footer – spinner while loading more,
                        // extra bottom padding when there is no more data.
                        SliverToBoxAdapter(
                          child: state.hasNext
                              ? const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Center(
                                    child: CircularProgressIndicator(
                                      color: AppColors.walletPrimary,
                                    ),
                                  ),
                                )
                              : const SizedBox(height: 80),
                        ),
                      ],
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
