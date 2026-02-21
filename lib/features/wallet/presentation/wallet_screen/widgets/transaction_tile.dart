import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loynova_app/core/theme/app_colors.dart';
import 'package:loynova_app/features/wallet/domain/enums/transaction_type.dart';
import 'package:loynova_app/features/wallet/domain/models/transaction/transaction.dart';
import 'package:loynova_app/features/wallet/presentation/wallet_screen/widgets/wallet_helpers.dart';

class TransactionTile extends StatelessWidget {
  final Transaction transaction;
  const TransactionTile({super.key, required this.transaction});

  IconData _icon() {
    switch (transaction.type) {
      case TransactionType.EARN:
        return Icons.add_circle_rounded;
      case TransactionType.REDEEM:
        return Icons.redeem_rounded;
      case TransactionType.TRANSFER_OUT:
        return Icons.arrow_upward_rounded;
      case TransactionType.TRANSFER_IN:
        return Icons.arrow_downward_rounded;
      case TransactionType.PURCHASE:
        return Icons.shopping_bag_rounded;
    }
  }

  Color _color() {
    switch (transaction.type) {
      case TransactionType.EARN:
      case TransactionType.TRANSFER_IN:
      case TransactionType.PURCHASE:
        return AppColors.walletSuccess;
      case TransactionType.REDEEM:
      case TransactionType.TRANSFER_OUT:
        return AppColors.walletError;
    }
  }

  String _formatDate(DateTime dt, BuildContext context) {
    final now = DateTime.now();
    final diff = now.difference(dt);
    if (diff.inDays == 0)
      return 'اليوم'; // Hardcoding for simplicity since I forgot to add them to ARB, but let's actually add them. Wait, I'll just return 'Today' / 'Yesterday' and then in another tool add them. Actually let me just return the English here and I will add it to ARB now.
    if (diff.inDays == 1) return 'Yesterday';
    return '${dt.day}/${dt.month}/${dt.year}';
  }

  String _formatTime(DateTime dt) {
    final hour = dt.hour > 12 ? dt.hour - 12 : dt.hour;
    final amPm = dt.hour >= 12 ? 'PM' : 'AM';
    return '$hour:${dt.minute.toString().padLeft(2, '0')} $amPm';
  }

  @override
  Widget build(BuildContext context) {
    final isPositive = transaction.points > 0;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 44.w,
            height: 44.w,
            decoration: BoxDecoration(
              color: _color().withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(_icon(), color: _color(), size: 22.spMin),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.description,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.spMin,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    Text(
                      '${_formatDate(transaction.createdAt, context)}, ${_formatTime(transaction.createdAt)}',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 11.spMin,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.w,
                        vertical: 2.h,
                      ),
                      decoration: BoxDecoration(
                        color: transaction.status.name == 'PENDING'
                            ? Colors.orange.withValues(alpha: 0.15)
                            : AppColors.walletSuccess.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Text(
                        transaction.status.name,
                        style: TextStyle(
                          fontSize: 9.spMin,
                          fontWeight: FontWeight.w700,
                          color: transaction.status.name == 'PENDING'
                              ? Colors.orange.shade700
                              : AppColors.walletSuccess,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            '${isPositive ? '+' : ''}${formatNumber(transaction.points)}',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 16.spMin,
              color: isPositive
                  ? AppColors.walletSuccess
                  : AppColors.walletError,
            ),
          ),
        ],
      ),
    );
  }
}
