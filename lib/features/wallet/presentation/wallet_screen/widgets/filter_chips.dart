import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loynova_app/core/theme/app_colors.dart';
import 'package:loynova_app/features/wallet/domain/enums/transaction_type.dart';
import 'package:loynova_app/generated/l10n.dart';

class FilterChips extends StatelessWidget {
  final TransactionType? selectedType;
  final ValueChanged<TransactionType?> onSelected;
  const FilterChips({
    super.key,
    required this.selectedType,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final filters = <MapEntry<TransactionType?, String>>[
      MapEntry(null, S.of(context).filter_all),
      MapEntry(TransactionType.EARN, S.of(context).filter_earn),
      MapEntry(TransactionType.REDEEM, S.of(context).filter_redeem),
      MapEntry(TransactionType.TRANSFER_OUT, S.of(context).filter_transfer),
      MapEntry(TransactionType.TRANSFER_IN, S.of(context).filter_transfer),
      MapEntry(TransactionType.PURCHASE, S.of(context).filter_earn),
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: filters.map((f) {
            final isActive = selectedType == f.key;
            return Padding(
              padding: EdgeInsets.only(right: 8.w),
              child: FilterChip(
                selected: isActive,
                label: Text(f.value),
                labelStyle: TextStyle(
                  color: isActive ? Colors.white : Colors.grey.shade700,
                  fontWeight: FontWeight.w600,
                  fontSize: 12.spMin,
                ),
                backgroundColor: Colors.white,
                selectedColor: AppColors.walletPrimary,
                checkmarkColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  side: BorderSide(
                    color: isActive
                        ? AppColors.walletPrimary
                        : Colors.grey.shade300,
                  ),
                ),
                onSelected: (_) => onSelected(f.key),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
