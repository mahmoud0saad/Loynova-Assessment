import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  const Failure({required this.message});
  final String message;
  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  const ServerFailure({required super.message});
  @override
  List<Object?> get props => [message];
}

class UnprocessableContentFailure extends Failure {
  const UnprocessableContentFailure({required super.message});
  @override
  List<Object?> get props => [message];
}

class NotFoundFailure extends Failure {
  const NotFoundFailure({required super.message});
  @override
  List<Object?> get props => [message];
}

class TimeoutFailure extends Failure {
  const TimeoutFailure({required super.message});
  @override
  List<Object?> get props => [message];
}

class CacheFailure extends Failure {
  const CacheFailure({required super.message});
  @override
  List<Object?> get props => [message];
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure({required super.message});
  @override
  List<Object?> get props => [message];
}

class TooManyRequestFailure extends Failure {
  const TooManyRequestFailure({super.message = "too_many_requests_msg"});
  @override
  List<Object?> get props => [message];
}
