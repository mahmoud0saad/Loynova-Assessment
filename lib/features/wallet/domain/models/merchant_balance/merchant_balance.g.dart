// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MerchantBalance _$MerchantBalanceFromJson(Map<String, dynamic> json) =>
    _MerchantBalance(
      merchantId: json['merchantId'] as String,
      merchantName: json['merchantName'] as String,
      merchantLogo: json['merchantLogo'] as String,
      points: (json['points'] as num).toInt(),
      tier: json['tier'] as String,
    );

Map<String, dynamic> _$MerchantBalanceToJson(_MerchantBalance instance) =>
    <String, dynamic>{
      'merchantId': instance.merchantId,
      'merchantName': instance.merchantName,
      'merchantLogo': instance.merchantLogo,
      'points': instance.points,
      'tier': instance.tier,
    };
