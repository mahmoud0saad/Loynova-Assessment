part of 'app_configuration_bloc.dart';

@freezed
class AppConfigurationEvent with _$AppConfigurationEvent {
  const factory AppConfigurationEvent.started() = _Started;
  const factory AppConfigurationEvent.changeLocale({required Locale locale}) =
      _ChangeLocale;
}
