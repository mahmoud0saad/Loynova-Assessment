import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:loynova_app/features/wallet/presentation/transfer_points/transfer_points_screen.dart';
import 'package:loynova_app/features/wallet/presentation/wallet_screen/wallet_screen.dart';

@singleton
class AppRouter {
  late final GoRouter config = GoRouter(
    initialLocation: '/wallet',
    routes: [
      GoRoute(
        path: '/wallet',
        builder: (context, state) => const WalletScreen(),
      ),
      GoRoute(
        path: '/wallet/transfer',
        builder: (context, state) {
          final availableBalance = (state.extra as int?) ?? 0;
          return TransferPointsScreen(availableBalance: availableBalance);
        },
      ),
    ],
  );
}
