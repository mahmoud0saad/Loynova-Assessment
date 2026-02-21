// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_healthy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppHealthyModel _$AppHealthyModelFromJson(Map<String, dynamic> json) =>
    _AppHealthyModel(
      status: json['status'] as String?,
      serverAddress: serverAddressFromJson(json['server_address']),
      environment: json['environment'] as String?,
    );

Map<String, dynamic> _$AppHealthyModelToJson(_AppHealthyModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'server_address': instance.serverAddress,
      'environment': instance.environment,
    };
