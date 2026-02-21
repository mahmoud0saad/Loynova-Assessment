import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:loynova_app/core/helpers/app_debuger.dart';
import 'package:loynova_app/core/network/auth_interceptor.dart';
import 'package:loynova_app/core/network/network_helper.dart';
import 'package:network_logger/network_logger.dart';

import '../../core/network/api_strings.dart';
import 'network_interface.dart';

@LazySingleton(as: BaseNetwork)
class DioHelper implements BaseNetwork {
  DioHelper() {
    // Initialize dio immediately to avoid LateInitializationError
    dio = Dio();

    _initDio();
  }
  late Dio dio;

  @override
  Future get(
    String endPoint, {
    Map<String, dynamic>? queryParameters = const {},
  }) async {
    try {
      final response = await dio.get(
        endPoint,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (error) {
      throw await NetworkUtils.networkExceptions(error);
    }
  }

  @override
  Future delete(String endPoint, int id) async {
    try {
      final response = await dio.delete("$endPoint/$id");
      return response.data;
    } on DioException catch (error) {
      throw await NetworkUtils.networkExceptions(error);
    }
  }

  @override
  Future post(
    String endPoint, {
    dynamic data,
    ProgressCallback? progressCallback,
  }) async {
    try {
      final response = await dio.post(
        endPoint,
        data: data,
        onReceiveProgress: progressCallback,
      );
      return response.data;
    } on DioException catch (error) {
      throw await NetworkUtils.networkExceptions(error);
    }
  }

  @override
  Future patch(
    String endPoint, {
    dynamic data,
    ProgressCallback? progressCallback,
  }) async {
    try {
      final response = await dio.patch(
        endPoint,
        data: data,
        onReceiveProgress: progressCallback,
      );

      return response.data;
    } on DioException catch (error) {
      throw await NetworkUtils.networkExceptions(error);
    }
  }

  @override
  Future update(String endPoint, {Map<String, dynamic>? data}) async {
    try {
      final response = await dio.patch(endPoint, data: data);
      return response.data;
    } on DioException catch (error) {
      throw await NetworkUtils.networkExceptions(error);
    }
  }

  @override
  Future uploadImages(String endPoint, Map<String, File> data) async {
    try {
      final FormData formData = FormData.fromMap(data);
      formData.files.add(
        MapEntry(
          data.entries.first.key,
          await MultipartFile.fromFile(data.entries.first.value.path),
        ),
      );

      final response = await dio.post(endPoint, data: formData);
      return response.data;
    } on DioException catch (error) {
      throw await NetworkUtils.networkExceptions(error);
    }
  }

  @override
  void updateBaseUrl(String baseUrl) {
    _initDio(baseUrl: baseUrl);
  }

  void _initDio({String? baseUrl}) {
    try {
      AppDebuger.log("Before: ${dio.options.baseUrl}");

      dio.options = BaseOptions(
        baseUrl: baseUrl ?? ApiStrings.apiUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
      );

      dio.interceptors.clear();
      dio.interceptors.add(AuthInterceptor());
      dio.interceptors.add(DioNetworkLogger());

      AppDebuger.log("After: ${dio.options.baseUrl}");
    } catch (e, stackTrace) {
      AppDebuger.log("Error updating base URL: $e");
      AppDebuger.log("Stack trace: $stackTrace");
    }
  }
}
