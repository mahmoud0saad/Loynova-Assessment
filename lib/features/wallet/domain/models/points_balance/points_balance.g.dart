// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'points_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PointsBalance _$PointsBalanceFromJson(Map<String, dynamic> json) =>
    _PointsBalance(
      totalPoints: (json['totalPoints'] as num).toInt(),
      pendingPoints: (json['pendingPoints'] as num).toInt(),
      expiringPoints: (json['expiringPoints'] as num).toInt(),
      expiringDate: DateTime.parse(json['expiringDate'] as String),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      balancesByMerchant: (json['balancesByMerchant'] as List<dynamic>)
          .map((e) => MerchantBalance.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PointsBalanceToJson(_PointsBalance instance) =>
    <String, dynamic>{
      'totalPoints': instance.totalPoints,
      'pendingPoints': instance.pendingPoints,
      'expiringPoints': instance.expiringPoints,
      'expiringDate': instance.expiringDate.toIso8601String(),
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'balancesByMerchant': instance.balancesByMerchant,
    };
