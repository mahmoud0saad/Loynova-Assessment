import 'package:loynova_app/core/storage/secure_storage.dart';
import 'package:flutter/material.dart';

import '../../di/injection.dart';
import '../../storage/storage_keys.dart';

extension LocaleExtension on String? {
  Locale getLocale() {
    if (this == null) {
      getIt.get<SecureStorage>().setValue(
        StorageKeys.activeLocale,
        WidgetsBinding.instance.platformDispatcher.locale.languageCode,
      );
      if (WidgetsBinding.instance.platformDispatcher.locale.languageCode ==
          "en") {
        return const Locale('en', 'US');
      } else {
        return const Locale('ar', 'EG');
      }
    } else if (this!.toLowerCase().contains('ar')) {
      return const Locale('ar', 'EG');
    } else {
      return const Locale('en', 'US');
    }
  }
}
