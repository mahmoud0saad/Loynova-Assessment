import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loynova_app/core/theme/app_colors.dart';
import 'package:loynova_app/features/wallet/domain/models/merchant_balance/merchant_balance.dart';
import 'package:loynova_app/features/wallet/presentation/wallet_screen/widgets/wallet_helpers.dart';
import 'package:loynova_app/generated/l10n.dart';

class MerchantBalances extends StatelessWidget {
  final List<MerchantBalance> merchants;
  final bool isWide;
  const MerchantBalances({
    super.key,
    required this.merchants,
    required this.isWide,
  });

  @override
  Widget build(BuildContext context) {
    if (isWide) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: merchants
              .map((m) => Expanded(child: MerchantTile(merchant: m)))
              .toList(),
        ),
      );
    }
    return SizedBox(
      height: 110.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: merchants.length,
        separatorBuilder: (_, __) => SizedBox(width: 10.w),
        itemBuilder: (context, index) =>
            MerchantTile(merchant: merchants[index]),
      ),
    );
  }
}

class MerchantTile extends StatelessWidget {
  final MerchantBalance merchant;
  const MerchantTile({super.key, required this.merchant});

  Color _tierColor() {
    switch (merchant.tier) {
      case 'Gold':
        return const Color(0xFFFFD700);
      case 'Silver':
        return const Color(0xFFC0C0C0);
      case 'Bronze':
        return const Color(0xFFCD7F32);
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      padding: EdgeInsets.all(12.w),
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 16.r,
                backgroundColor: AppColors.walletPrimary.withValues(alpha: 0.1),
                child: Text(
                  merchant.merchantName[0],
                  style: TextStyle(
                    color: AppColors.walletPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.spMin,
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  merchant.merchantName,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13.spMin,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${formatNumber(merchant.points)} ${S.of(context).points}',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 15.spMin,
                  color: AppColors.walletPrimary,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: _tierColor().withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  merchant.tier,
                  style: TextStyle(
                    fontSize: 10.spMin,
                    fontWeight: FontWeight.w700,
                    color: _tierColor(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
