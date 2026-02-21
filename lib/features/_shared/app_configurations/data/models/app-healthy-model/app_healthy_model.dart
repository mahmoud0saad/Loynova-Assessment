// ignore_for_file: invalid_annotation_target

import 'package:loynova_app/core/helpers/converter/json_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_healthy_model.freezed.dart';
part 'app_healthy_model.g.dart';

@freezed
abstract class AppHealthyModel with _$AppHealthyModel {
  const factory AppHealthyModel({
    String? status,
    @JsonKey(name: "server_address", fromJson: serverAddressFromJson)
    String? serverAddress,
    String? environment,
  }) = _AppHealthyModel;

  factory AppHealthyModel.fromJson(Map<String, dynamic> json) =>
      SafeJsonConverter.safeFromJson(
        json,
        (json) => _$AppHealthyModelFromJson(json),
      );
}

String serverAddressFromJson(json) {
  return "http://$json/";
}
