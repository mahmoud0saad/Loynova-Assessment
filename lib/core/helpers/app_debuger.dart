import 'dart:developer' as devtools;

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppDebuger {
  static void log(Object object) {
    if (kDebugMode) {
      devtools.log("$object");
    }
  }
}
