// ignore_for_file: invalid_annotation_target
//TODO: implement BaseErrorResponseModel

import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_error_response_model.freezed.dart';
part 'base_error_response_model.g.dart';

@freezed
abstract class BaseErrorResponseModel with _$BaseErrorResponseModel {
  const BaseErrorResponseModel._();

  const factory BaseErrorResponseModel() = _BaseErrorResponseModel;

  factory BaseErrorResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseErrorResponseModelFromJson(json);
}
