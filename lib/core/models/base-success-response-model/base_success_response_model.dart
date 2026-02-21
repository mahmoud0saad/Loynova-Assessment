import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_success_response_model.freezed.dart';
part 'base_success_response_model.g.dart';

@freezed
abstract class BaseSuccessResponseModel<T> with _$BaseSuccessResponseModel<T> {
  const BaseSuccessResponseModel._(); // private constructor for the freezed union

  const factory BaseSuccessResponseModel({
    String? message,
    dynamic data,
  }) = _BaseSuccessResponseModel;

  factory BaseSuccessResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseSuccessResponseModelFromJson(json);
}
