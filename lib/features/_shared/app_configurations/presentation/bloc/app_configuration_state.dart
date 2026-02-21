part of 'app_configuration_bloc.dart';

@freezed
abstract class AppConfigurationState with _$AppConfigurationState {
  const factory AppConfigurationState({
    @Default(RequestState.initial) RequestState appConfigurationRequestState,
    AppHealthyModel? appHealthyConfig,
    @Default(Locale("en")) Locale locale,
  }) = _AppConfigurationState;
}
