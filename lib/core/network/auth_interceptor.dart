import 'package:dio/dio.dart';
import 'package:loynova_app/core/di/injection.dart';
import 'package:loynova_app/core/helpers/app_debuger.dart';
import 'package:loynova_app/core/network/token_handler.dart';
import 'package:loynova_app/core/storage/secure_storage.dart';
import 'package:loynova_app/core/storage/storage_keys.dart';

/// Custom Dio interceptor to add authentication token and language headers to all requests
class AuthInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      // Get token from TokenHandler
      final String? token = await getIt.get<TokenHandler>().getUserToken();

      // Get language from SecureStorage
      final String language =
          await getIt.get<SecureStorage>().getValue(StorageKeys.activeLocale) ??
          'en';

      // Add default headers if not present
      options.headers['Accept'] ??= 'application/json';
      options.headers['Content-Type'] ??= 'application/json';

      // Add language header
      options.headers['Accept-Language'] = language;

      // Add token if available
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }

      handler.next(options);
    } catch (e) {
      AppDebuger.log('Error in AuthInterceptor: $e');
      handler.next(options);
    }
  }
}
