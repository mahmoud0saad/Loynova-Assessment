import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:loynova_app/core/di/injection.dart';
import 'package:loynova_app/core/enums/request_state.dart';
import 'package:loynova_app/core/theme/app_colors.dart';
import 'package:loynova_app/features/wallet/presentation/transfer_points/bloc/transfer_points_bloc.dart';
import 'package:loynova_app/features/wallet/presentation/transfer_points/widgets/transfer_inputs.dart';
import 'package:loynova_app/features/wallet/presentation/transfer_points/widgets/transfer_success_dialog.dart';
import 'package:loynova_app/generated/l10n.dart';

// ──────────────────────────────────────────────────────────────────────────────
// Sensitive-data configuration: disable text suggestions and autocorrect on
// all form fields to prevent the OS from caching financial input in prediction
// dictionaries. On Android, FLAG_SECURE should be applied at the Activity level
// (e.g. via flutter_windowmanager) to block screenshots and screen recorders.
// ──────────────────────────────────────────────────────────────────────────────

class TransferPointsScreen extends StatelessWidget {
  /// The user's current available balance, passed via GoRouter extras.
  final int availableBalance;

  const TransferPointsScreen({super.key, required this.availableBalance});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TransferPointsBloc>(),
      child: _TransferPointsView(availableBalance: availableBalance),
    );
  }
}

class _TransferPointsView extends StatefulWidget {
  final int availableBalance;
  const _TransferPointsView({required this.availableBalance});

  @override
  State<_TransferPointsView> createState() => _TransferPointsViewState();
}

class _TransferPointsViewState extends State<_TransferPointsView> {
  final _formKey = GlobalKey<FormState>();
  final _recipientController = TextEditingController();
  final _pointsController = TextEditingController();
  final _noteController = TextEditingController();

  // Tracks real-time form validity so the submit button reacts immediately.
  bool _isFormValid = false;

  @override
  void initState() {
    super.initState();
    _recipientController.addListener(_onFieldChanged);
    _pointsController.addListener(_onFieldChanged);
    _noteController.addListener(_onFieldChanged);
  }

  void _onFieldChanged() {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (isValid != _isFormValid) {
      setState(() => _isFormValid = isValid);
    }
  }

  @override
  void dispose() {
    _recipientController.dispose();
    _pointsController.dispose();
    _noteController.dispose();
    super.dispose();
  }

  // ── Build ───────────────────────────────────────────────────────────────────

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
          S.of(context).transfer_points_title,
          style: TextStyle(fontSize: 18.spMin, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
      ),
      body: BlocConsumer<TransferPointsBloc, TransferPointsState>(
        listenWhen: (prev, curr) => prev.requestState != curr.requestState,
        listener: (context, state) {
          if (state.requestState == RequestState.success) {
            showTransferSuccessDialog(
              context: context,
              points: state.result!.points,
              newBalance: state.result!.newBalance,
            );
          } else if (state.requestState == RequestState.error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  state.errorMessage ?? S.of(context).err_transfer_failed,
                ),
                backgroundColor: AppColors.walletError,
                behavior: SnackBarBehavior.floating,
              ),
            );
          }
        },
        builder: (context, state) {
          final isLoading = state.requestState == RequestState.loading;
          return LayoutBuilder(
            builder: (context, constraints) {
              final maxWidth = constraints.maxWidth > 600
                  ? 500.0
                  : double.infinity;
              return SingleChildScrollView(
                padding: EdgeInsets.all(24.w),
                child: Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: maxWidth),
                    child: Form(
                      key: _formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: 8.h),
                          Center(
                            child: Container(
                              width: 80.w,
                              height: 80.w,
                              margin: EdgeInsets.only(bottom: 24.h),
                              decoration: BoxDecoration(
                                color: AppColors.walletPrimary.withValues(
                                  alpha: 0.1,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.send_rounded,
                                color: AppColors.walletPrimary,
                                size: 36.spMin,
                              ),
                            ),
                          ),

                          // ── Recipient ──────────────────────────────────────
                          TransferRecipientInput(
                            controller: _recipientController,
                            label: S.of(context).recipient_label,
                          ),

                          SizedBox(height: 20.h),

                          // ── Points ────────────────────────────────────────
                          TransferPointsInput(
                            controller: _pointsController,
                            availableBalance: widget.availableBalance,
                            label: S.of(context).points_to_transfer,
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            S
                                .of(context)
                                .available_label(widget.availableBalance),
                            style: TextStyle(
                              fontSize: 12.spMin,
                              color: Colors.grey.shade500,
                            ),
                          ),

                          SizedBox(height: 20.h),

                          // ── Note (optional) ───────────────────────────────
                          TransferNoteInput(
                            controller: _noteController,
                            label: S.of(context).note_optional,
                          ),

                          SizedBox(height: 36.h),

                          // ── Submit ────────────────────────────────────────
                          SizedBox(
                            height: 52.h,
                            child: ElevatedButton(
                              onPressed: (isLoading || !_isFormValid)
                                  ? null
                                  : () {
                                      if (_formKey.currentState!.validate()) {
                                        context.read<TransferPointsBloc>().add(
                                          TransferPointsEvent.transfer(
                                            recipient: _recipientController.text
                                                .trim(),
                                            points: int.parse(
                                              _pointsController.text.trim(),
                                            ),
                                            note:
                                                _noteController.text
                                                    .trim()
                                                    .isEmpty
                                                ? null
                                                : _noteController.text.trim(),
                                          ),
                                        );
                                      }
                                    },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.walletPrimary,
                                foregroundColor: Colors.white,
                                disabledBackgroundColor: Colors.grey.shade300,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14.r),
                                ),
                                elevation: 0,
                              ),
                              child: isLoading
                                  ? const SizedBox(
                                      height: 24,
                                      width: 24,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                        strokeWidth: 2.5,
                                      ),
                                    )
                                  : Text(
                                      S.of(context).send_points,
                                      style: TextStyle(
                                        fontSize: 16.spMin,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
