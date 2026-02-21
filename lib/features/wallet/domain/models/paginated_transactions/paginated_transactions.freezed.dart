// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginatedTransactions {

 List<Transaction> get transactions; int get page; int get totalItems; bool get hasNext;
/// Create a copy of PaginatedTransactions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedTransactionsCopyWith<PaginatedTransactions> get copyWith => _$PaginatedTransactionsCopyWithImpl<PaginatedTransactions>(this as PaginatedTransactions, _$identity);

  /// Serializes this PaginatedTransactions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedTransactions&&const DeepCollectionEquality().equals(other.transactions, transactions)&&(identical(other.page, page) || other.page == page)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(transactions),page,totalItems,hasNext);

@override
String toString() {
  return 'PaginatedTransactions(transactions: $transactions, page: $page, totalItems: $totalItems, hasNext: $hasNext)';
}


}

/// @nodoc
abstract mixin class $PaginatedTransactionsCopyWith<$Res>  {
  factory $PaginatedTransactionsCopyWith(PaginatedTransactions value, $Res Function(PaginatedTransactions) _then) = _$PaginatedTransactionsCopyWithImpl;
@useResult
$Res call({
 List<Transaction> transactions, int page, int totalItems, bool hasNext
});




}
/// @nodoc
class _$PaginatedTransactionsCopyWithImpl<$Res>
    implements $PaginatedTransactionsCopyWith<$Res> {
  _$PaginatedTransactionsCopyWithImpl(this._self, this._then);

  final PaginatedTransactions _self;
  final $Res Function(PaginatedTransactions) _then;

/// Create a copy of PaginatedTransactions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactions = null,Object? page = null,Object? totalItems = null,Object? hasNext = null,}) {
  return _then(_self.copyWith(
transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginatedTransactions].
extension PaginatedTransactionsPatterns on PaginatedTransactions {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedTransactions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedTransactions() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedTransactions value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedTransactions():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedTransactions value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedTransactions() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Transaction> transactions,  int page,  int totalItems,  bool hasNext)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedTransactions() when $default != null:
return $default(_that.transactions,_that.page,_that.totalItems,_that.hasNext);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Transaction> transactions,  int page,  int totalItems,  bool hasNext)  $default,) {final _that = this;
switch (_that) {
case _PaginatedTransactions():
return $default(_that.transactions,_that.page,_that.totalItems,_that.hasNext);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Transaction> transactions,  int page,  int totalItems,  bool hasNext)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedTransactions() when $default != null:
return $default(_that.transactions,_that.page,_that.totalItems,_that.hasNext);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginatedTransactions implements PaginatedTransactions {
  const _PaginatedTransactions({required final  List<Transaction> transactions, required this.page, required this.totalItems, required this.hasNext}): _transactions = transactions;
  factory _PaginatedTransactions.fromJson(Map<String, dynamic> json) => _$PaginatedTransactionsFromJson(json);

 final  List<Transaction> _transactions;
@override List<Transaction> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}

@override final  int page;
@override final  int totalItems;
@override final  bool hasNext;

/// Create a copy of PaginatedTransactions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedTransactionsCopyWith<_PaginatedTransactions> get copyWith => __$PaginatedTransactionsCopyWithImpl<_PaginatedTransactions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginatedTransactionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedTransactions&&const DeepCollectionEquality().equals(other._transactions, _transactions)&&(identical(other.page, page) || other.page == page)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transactions),page,totalItems,hasNext);

@override
String toString() {
  return 'PaginatedTransactions(transactions: $transactions, page: $page, totalItems: $totalItems, hasNext: $hasNext)';
}


}

/// @nodoc
abstract mixin class _$PaginatedTransactionsCopyWith<$Res> implements $PaginatedTransactionsCopyWith<$Res> {
  factory _$PaginatedTransactionsCopyWith(_PaginatedTransactions value, $Res Function(_PaginatedTransactions) _then) = __$PaginatedTransactionsCopyWithImpl;
@override @useResult
$Res call({
 List<Transaction> transactions, int page, int totalItems, bool hasNext
});




}
/// @nodoc
class __$PaginatedTransactionsCopyWithImpl<$Res>
    implements _$PaginatedTransactionsCopyWith<$Res> {
  __$PaginatedTransactionsCopyWithImpl(this._self, this._then);

  final _PaginatedTransactions _self;
  final $Res Function(_PaginatedTransactions) _then;

/// Create a copy of PaginatedTransactions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactions = null,Object? page = null,Object? totalItems = null,Object? hasNext = null,}) {
  return _then(_PaginatedTransactions(
transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
