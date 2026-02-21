import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:loynova_app/core/theme/app_colors.dart';
import 'package:loynova_app/generated/l10n.dart';

Future<void> showTransferSuccessDialog({
  required BuildContext context,
  required int points,
  required int newBalance,
}) async {
  await showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (_) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      contentPadding: EdgeInsets.fromLTRB(24.w, 32.h, 24.w, 24.h),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 72.w,
            height: 72.w,
            decoration: BoxDecoration(
              color: AppColors.walletSuccess.withValues(alpha: 0.12),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.check_circle_rounded,
              color: AppColors.walletSuccess,
              size: 40.spMin,
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            S.of(context).transfer_successful,
            style: TextStyle(fontSize: 18.spMin, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12.h),
          DialogRow(
            label: S.of(context).points_transferred,
            value: '$points ${S.of(context).points}',
          ),
          SizedBox(height: 6.h),
          DialogRow(
            label: S.of(context).new_balance,
            value: '$newBalance ${S.of(context).points}',
          ),
        ],
      ),
      actions: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(); // close dialog
              context.pop(); // back to wallet
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.walletPrimary,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Text(S.of(context).done),
          ),
        ),
      ],
    ),
  );
}

class DialogRow extends StatelessWidget {
  final String label;
  final String value;

  const DialogRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 14.spMin, color: Colors.grey.shade600),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 14.spMin, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
