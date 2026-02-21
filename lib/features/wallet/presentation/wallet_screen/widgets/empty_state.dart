import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loynova_app/features/wallet/domain/enums/transaction_type.dart';
import 'package:loynova_app/generated/l10n.dart';

class EmptyState extends StatelessWidget {
  final TransactionType? selectedType;
  const EmptyState({super.key, required this.selectedType});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(48.w),
        child: Column(
          children: [
            Icon(
              Icons.receipt_long_rounded,
              size: 64.spMin,
              color: Colors.grey.shade400,
            ),
            SizedBox(height: 12.h),
            Text(
              S.of(context).no_transactions,
              style: TextStyle(
                fontSize: 16.spMin,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
