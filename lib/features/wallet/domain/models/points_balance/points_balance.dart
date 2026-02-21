import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loynova_app/features/wallet/domain/models/merchant_balance/merchant_balance.dart';

part 'points_balance.freezed.dart';
part 'points_balance.g.dart';

@freezed
abstract class PointsBalance with _$PointsBalance {
  const factory PointsBalance({
    required int totalPoints,
    required int pendingPoints,
    required int expiringPoints,
    required DateTime expiringDate,
    required DateTime lastUpdated,
    required List<MerchantBalance> balancesByMerchant,
  }) = _PointsBalance;

  factory PointsBalance.fromJson(Map<String, dynamic> json) =>
      _$PointsBalanceFromJson(json);
}
