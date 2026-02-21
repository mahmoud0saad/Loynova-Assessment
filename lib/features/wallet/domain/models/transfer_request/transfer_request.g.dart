// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransferRequest _$TransferRequestFromJson(Map<String, dynamic> json) =>
    _TransferRequest(
      recipient: json['recipient'] as String,
      points: (json['points'] as num).toInt(),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$TransferRequestToJson(_TransferRequest instance) =>
    <String, dynamic>{
      'recipient': instance.recipient,
      'points': instance.points,
      'note': instance.note,
    };
