import 'package:loynova_app/core/helpers/app_debuger.dart';

class SafeJsonConverter<T> {
  /// Safely converts a JSON map to an object  to know stack trace of error .
  ///
  /// If the fromJson function throws an exception, the error is logged and re-thrown.
  ///
  static T safeFromJson<T>(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    try {
      return fromJson(json);
    } catch (e, stacktrace) {
      // Log or handle the error
      AppDebuger.log('Safe FromJson Error parsing $T: $e');
      AppDebuger.log('Safe FromJson Stacktrace: $stacktrace');
      // Optionally, return a default value or throw the exception again
      rethrow;
    }
  }
}
