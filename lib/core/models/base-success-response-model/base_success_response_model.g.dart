// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_success_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseSuccessResponseModel<T> _$BaseSuccessResponseModelFromJson<T>(
  Map<String, dynamic> json,
) => _BaseSuccessResponseModel<T>(
  message: json['message'] as String?,
  data: json['data'],
);

Map<String, dynamic> _$BaseSuccessResponseModelToJson<T>(
  _BaseSuccessResponseModel<T> instance,
) => <String, dynamic>{'message': instance.message, 'data': instance.data};
