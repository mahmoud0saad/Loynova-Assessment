// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransferResult {

 String get transactionId; int get points; int get newBalance; String get status;
/// Create a copy of TransferResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransferResultCopyWith<TransferResult> get copyWith => _$TransferResultCopyWithImpl<TransferResult>(this as TransferResult, _$identity);

  /// Serializes this TransferResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferResult&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.points, points) || other.points == points)&&(identical(other.newBalance, newBalance) || other.newBalance == newBalance)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,points,newBalance,status);

@override
String toString() {
  return 'TransferResult(transactionId: $transactionId, points: $points, newBalance: $newBalance, status: $status)';
}


}

/// @nodoc
abstract mixin class $TransferResultCopyWith<$Res>  {
  factory $TransferResultCopyWith(TransferResult value, $Res Function(TransferResult) _then) = _$TransferResultCopyWithImpl;
@useResult
$Res call({
 String transactionId, int points, int newBalance, String status
});




}
/// @nodoc
class _$TransferResultCopyWithImpl<$Res>
    implements $TransferResultCopyWith<$Res> {
  _$TransferResultCopyWithImpl(this._self, this._then);

  final TransferResult _self;
  final $Res Function(TransferResult) _then;

/// Create a copy of TransferResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? points = null,Object? newBalance = null,Object? status = null,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,newBalance: null == newBalance ? _self.newBalance : newBalance // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransferResult].
extension TransferResultPatterns on TransferResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransferResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransferResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransferResult value)  $default,){
final _that = this;
switch (_that) {
case _TransferResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransferResult value)?  $default,){
final _that = this;
switch (_that) {
case _TransferResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  int points,  int newBalance,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransferResult() when $default != null:
return $default(_that.transactionId,_that.points,_that.newBalance,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  int points,  int newBalance,  String status)  $default,) {final _that = this;
switch (_that) {
case _TransferResult():
return $default(_that.transactionId,_that.points,_that.newBalance,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  int points,  int newBalance,  String status)?  $default,) {final _that = this;
switch (_that) {
case _TransferResult() when $default != null:
return $default(_that.transactionId,_that.points,_that.newBalance,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransferResult implements TransferResult {
  const _TransferResult({required this.transactionId, required this.points, required this.newBalance, required this.status});
  factory _TransferResult.fromJson(Map<String, dynamic> json) => _$TransferResultFromJson(json);

@override final  String transactionId;
@override final  int points;
@override final  int newBalance;
@override final  String status;

/// Create a copy of TransferResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransferResultCopyWith<_TransferResult> get copyWith => __$TransferResultCopyWithImpl<_TransferResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransferResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransferResult&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.points, points) || other.points == points)&&(identical(other.newBalance, newBalance) || other.newBalance == newBalance)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,points,newBalance,status);

@override
String toString() {
  return 'TransferResult(transactionId: $transactionId, points: $points, newBalance: $newBalance, status: $status)';
}


}

/// @nodoc
abstract mixin class _$TransferResultCopyWith<$Res> implements $TransferResultCopyWith<$Res> {
  factory _$TransferResultCopyWith(_TransferResult value, $Res Function(_TransferResult) _then) = __$TransferResultCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, int points, int newBalance, String status
});




}
/// @nodoc
class __$TransferResultCopyWithImpl<$Res>
    implements _$TransferResultCopyWith<$Res> {
  __$TransferResultCopyWithImpl(this._self, this._then);

  final _TransferResult _self;
  final $Res Function(_TransferResult) _then;

/// Create a copy of TransferResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? points = null,Object? newBalance = null,Object? status = null,}) {
  return _then(_TransferResult(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,newBalance: null == newBalance ? _self.newBalance : newBalance // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
