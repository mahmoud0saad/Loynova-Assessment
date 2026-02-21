import 'dart:io';

import 'package:dio/dio.dart';

abstract class BaseNetwork {
  void updateBaseUrl(String baseUrl);
  Future get(String endPoint, {Map<String, dynamic>? queryParameters});
  Future post(String endPoint,
      {dynamic data, ProgressCallback? progressCallback});
  Future patch(String endPoint,
      {dynamic data, ProgressCallback? progressCallback});
  Future delete(String endPoint, int id);
  Future update(String endPoint, {Map<String, dynamic>? data});
  Future uploadImages(String endPoint, Map<String, File> data);
}
