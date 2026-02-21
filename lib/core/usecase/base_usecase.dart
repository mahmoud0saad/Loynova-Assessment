import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '/core/errors/failure.dart';

abstract class BaseUseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

class NoParams extends Equatable {
  const NoParams();
  @override
  List<Object> get props => [];
}

class BaseRemoveItemParam extends Equatable {
  const BaseRemoveItemParam(this.id);
  final int id;
  @override
  List<Object> get props => [id];
}

class BaseShowItemParam extends Equatable {
  const BaseShowItemParam(this.id);
  final int id;
  @override
  List<Object> get props => [id];
}

class BaseAddItemParam<T> {
  BaseAddItemParam(this.item);
  final T item;
}

class BasePagedParams extends Equatable {
  const BasePagedParams({required this.page});
  final int page;
  static int pageSize = 10;

  @override
  List<Object?> get props => [page, pageSize];

  Map<String, dynamic> toJson() {
    return {
      'page': page,
    };
  }
}
