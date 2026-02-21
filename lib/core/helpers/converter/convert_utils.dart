import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:loynova_app/core/errors/failure.dart';

class ConvertUtils {
  ConvertUtils._();

  static dynamic foldEitherResponse<T>(
    Either<Failure, T> response,
    Function(T result) onSuccess, {
    Function(Failure error)? onError,
  }) {
    return response.fold(
      (l) {
        if (onError != null) {
          return onError(l);
        } else {
          debugPrint(l.message);
        }
      },
      (r) {
        return onSuccess(r);
      },
    );
  }
}
