import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loynova_app/core/theme/app_colors.dart';
import 'package:loynova_app/features/wallet/domain/models/points_balance/points_balance.dart';
import 'package:loynova_app/features/wallet/presentation/wallet_screen/widgets/wallet_helpers.dart';
import 'package:loynova_app/generated/l10n.dart';

class BalanceCard extends StatelessWidget {
  final PointsBalance balance;
  const BalanceCard({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16.w),
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 28.h),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.walletPrimary, Color(0xFF8B7CF7)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.walletPrimary.withValues(alpha: 0.35),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            '${formatNumber(balance.totalPoints)} ${S.of(context).points}',
            style: TextStyle(
              fontSize: 36.spMin,
              fontWeight: FontWeight.w800,
              color: Colors.white,
              letterSpacing: -1,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            S.of(context).available_balance,
            style: TextStyle(
              fontSize: 14.spMin,
              color: Colors.white70,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BalanceStat(
                  label: 'Pending',
                  value: formatNumber(balance.pendingPoints),
                  icon: Icons.schedule_rounded,
                ),
                Container(width: 1, height: 30.h, color: Colors.white24),
                BalanceStat(
                  label: 'Expiring',
                  value: formatNumber(balance.expiringPoints),
                  icon: Icons.warning_amber_rounded,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BalanceStat extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  const BalanceStat({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white70, size: 18.spMin),
        SizedBox(width: 6.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(color: Colors.white60, fontSize: 11.spMin),
            ),
            Text(
              value,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.spMin,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
