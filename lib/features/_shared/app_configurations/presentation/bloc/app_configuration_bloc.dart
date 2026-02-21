// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loynova_app/core/enums/request_state.dart';
import 'package:loynova_app/core/storage/secure_storage.dart';
import 'package:loynova_app/core/storage/storage_keys.dart';

import '../../data/models/app-healthy-model/app_healthy_model.dart';

part 'app_configuration_bloc.freezed.dart';
part 'app_configuration_event.dart';
part 'app_configuration_state.dart';

@injectable
class AppConfigurationBloc
    extends Bloc<AppConfigurationEvent, AppConfigurationState> {
  AppConfigurationBloc(this._secureStorage)
    : super(const AppConfigurationState()) {
    on<AppConfigurationEvent>((event, emit) {
      event.when(started: _started, changeLocale: _changeLocale);
    });
  }
  final SecureStorage _secureStorage;

  void _changeLocale(Locale locale) {
    _secureStorage.setValue(StorageKeys.activeLocale, locale.languageCode);
    emit(state.copyWith(locale: locale));
  }

  Future<void> _started() async {
    final Locale locale = await getInitLocal();

    emit(
      state.copyWith(
        appConfigurationRequestState: RequestState.initial,
        appHealthyConfig: null,
        locale: locale,
      ),
    );
  }

  Future<Locale> getInitLocal() async {
    final String langCode =
        await _secureStorage.getValue(StorageKeys.activeLocale) ??
        WidgetsBinding.instance.platformDispatcher.locale.languageCode;

    if (langCode == "en") {
      return const Locale('en', 'US');
    } else {
      return const Locale('ar', 'EG');
    }
  }
}
