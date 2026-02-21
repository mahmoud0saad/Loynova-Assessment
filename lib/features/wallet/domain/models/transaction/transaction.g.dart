// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Transaction _$TransactionFromJson(Map<String, dynamic> json) => _Transaction(
  id: json['id'] as String,
  type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
  points: (json['points'] as num).toInt(),
  description: json['description'] as String,
  merchantName: json['merchantName'] as String?,
  merchantLogo: json['merchantLogo'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  status: $enumDecode(_$TransactionStatusEnumMap, json['status']),
);

Map<String, dynamic> _$TransactionToJson(_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'points': instance.points,
      'description': instance.description,
      'merchantName': instance.merchantName,
      'merchantLogo': instance.merchantLogo,
      'createdAt': instance.createdAt.toIso8601String(),
      'status': _$TransactionStatusEnumMap[instance.status]!,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.EARN: 'EARN',
  TransactionType.REDEEM: 'REDEEM',
  TransactionType.TRANSFER_OUT: 'TRANSFER_OUT',
  TransactionType.TRANSFER_IN: 'TRANSFER_IN',
  TransactionType.PURCHASE: 'PURCHASE',
};

const _$TransactionStatusEnumMap = {
  TransactionStatus.COMPLETED: 'COMPLETED',
  TransactionStatus.PENDING: 'PENDING',
  TransactionStatus.FAILED: 'FAILED',
};
