import 'dart:io';

import 'package:dio/dio.dart';
import 'package:loynova_app/core/helpers/app_debuger.dart';

import '../../core/errors/exception.dart';

class NetworkUtils {
  static List<MapEntry<String, MultipartFile>> getImagesFiles({
    required Map body,
    String? key,
    required FormData formData,
    required List<MapEntry<String, MultipartFile>> files,
  }) {
    body.forEach((innerKey, value) {
      final String path = key == null ? innerKey : "$key[$innerKey]";
      if (value is Map) {
        getImagesFiles(
          formData: formData,
          body: value,
          files: files,
          key: path,
        );
      } else if (value is File) {
        files.add(MapEntry(path, convertToMultiPart(value)));
        formData.fields.removeWhere((MapEntry element) {
          if (element.key == path) {
            return true;
          }
          return false;
        });
      } else if (value is List) {
        for (int i = 0; i < value.length; i++) {
          final item = value[i];
          if (item is Map) {
            getImagesFiles(
              formData: formData,
              body: item,
              files: files,
              key: "$path[$i]",
            );
          } else if (item is File) {
            files.add(MapEntry("$path[]", convertToMultiPart(item)));
            formData.fields.removeWhere((element) => element.key == path);
          }
        }
      }
    });

    return files;
  }

  static MultipartFile convertToMultiPart(File file) {
    return MultipartFile.fromFileSync(
      file.path,
      filename: file.path.split("/").last,
    );
  }

  static Future networkExceptions(DioException exception) async {
    AppDebuger.log("DioException Error: ${exception.error}");

    if (exception.type == DioExceptionType.receiveTimeout ||
        exception.type == DioExceptionType.connectionTimeout ||
        exception.type == DioExceptionType.sendTimeout) {
      throw const ConnectivityException();
    }
    if (exception.response?.statusCode == 401) {
      // to do refresh permission list
      throw UnAuthorizeException(errorMsg(exception.response));
    } else if (exception.response?.statusCode == 500) {
      throw const ServerException();
    } else if (exception.response?.statusCode == 422 ||
        exception.type == DioExceptionType.badResponse) {
      throw UnprocessableContent(errorMsg(exception.response));
    } else if (exception.response?.statusCode == 404) {
      throw const NotFoundException();
    } else if (exception.response?.statusCode == 400) {
      throw UnprocessableContent(errorMsg(exception.response));
    } else if (exception.response?.statusCode == 403) {
      throw UnprocessableContent(errorMsg(exception.response));
    } else {
      throw const UnCaughtException();
    }
  }

  static String? errorMsg(Response? response) {
    if (response?.data['errors'] != null) {
      final errors = response?.data['errors'];

      if (errors != null) {
        if (errors is String) return errors.toString();
        if (errors is List) {
          return errors.first.toString();
        }
        if (errors is Map) {
          if (errors.entries.first.value is List) {
            return errors.entries.first.value.toList()[0];
          } else if (errors.entries.first.value is String) {
            return errors.entries.first.value;
          }
        }
      }
    } else if (response?.data['error'] != null) {
      return response?.data['error'];
    } else if (response?.statusMessage != null) {
      return response?.statusMessage;
    }
    return null;
  }
}
