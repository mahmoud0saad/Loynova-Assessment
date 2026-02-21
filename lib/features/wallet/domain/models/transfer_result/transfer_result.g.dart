// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransferResult _$TransferResultFromJson(Map<String, dynamic> json) =>
    _TransferResult(
      transactionId: json['transactionId'] as String,
      points: (json['points'] as num).toInt(),
      newBalance: (json['newBalance'] as num).toInt(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$TransferResultToJson(_TransferResult instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'points': instance.points,
      'newBalance': instance.newBalance,
      'status': instance.status,
    };
