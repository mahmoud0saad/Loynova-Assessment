import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant_balance.freezed.dart';
part 'merchant_balance.g.dart';

@freezed
abstract class MerchantBalance with _$MerchantBalance {
  const factory MerchantBalance({
    required String merchantId,
    required String merchantName,
    required String merchantLogo,
    required int points,
    required String tier,
  }) = _MerchantBalance;

  factory MerchantBalance.fromJson(Map<String, dynamic> json) =>
      _$MerchantBalanceFromJson(json);
}
