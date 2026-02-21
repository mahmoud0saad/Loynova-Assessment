import 'package:loynova_app/core/errors/exception.dart';
import 'package:loynova_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

extension ExceptionHandler on Exception {
  Either<Failure, T> handleException<T>() {
    if (this is ServerException) {
      return Left(ServerFailure(message: (this as ServerException).msg ?? ""));
    } else if (this is UnAuthorizeException) {
      return Left(
        UnauthorizedFailure(message: (this as UnAuthorizeException).msg ?? ""),
      );
    } else if (this is UnprocessableContent) {
      return Left(
        UnprocessableContentFailure(
          message: (this as UnprocessableContent).msg ?? "",
        ),
      );
    } else if (this is NotFoundException) {
      return Left(
        NotFoundFailure(message: (this as NotFoundException).msg ?? ""),
      );
    } else if (this is ConnectivityException) {
      return Left(
        TimeoutFailure(message: (this as ConnectivityException).msg ?? ""),
      );
    } else if (this is AppException) {
      return Left(Failure(message: (this as AppException).msg ?? ""));
    } else {
      return Left(Failure(message: toString()));
    }
  }
}
