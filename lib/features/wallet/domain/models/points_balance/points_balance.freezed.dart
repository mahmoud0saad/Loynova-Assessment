// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'points_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PointsBalance {

 int get totalPoints; int get pendingPoints; int get expiringPoints; DateTime get expiringDate; DateTime get lastUpdated; List<MerchantBalance> get balancesByMerchant;
/// Create a copy of PointsBalance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PointsBalanceCopyWith<PointsBalance> get copyWith => _$PointsBalanceCopyWithImpl<PointsBalance>(this as PointsBalance, _$identity);

  /// Serializes this PointsBalance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PointsBalance&&(identical(other.totalPoints, totalPoints) || other.totalPoints == totalPoints)&&(identical(other.pendingPoints, pendingPoints) || other.pendingPoints == pendingPoints)&&(identical(other.expiringPoints, expiringPoints) || other.expiringPoints == expiringPoints)&&(identical(other.expiringDate, expiringDate) || other.expiringDate == expiringDate)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other.balancesByMerchant, balancesByMerchant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalPoints,pendingPoints,expiringPoints,expiringDate,lastUpdated,const DeepCollectionEquality().hash(balancesByMerchant));

@override
String toString() {
  return 'PointsBalance(totalPoints: $totalPoints, pendingPoints: $pendingPoints, expiringPoints: $expiringPoints, expiringDate: $expiringDate, lastUpdated: $lastUpdated, balancesByMerchant: $balancesByMerchant)';
}


}

/// @nodoc
abstract mixin class $PointsBalanceCopyWith<$Res>  {
  factory $PointsBalanceCopyWith(PointsBalance value, $Res Function(PointsBalance) _then) = _$PointsBalanceCopyWithImpl;
@useResult
$Res call({
 int totalPoints, int pendingPoints, int expiringPoints, DateTime expiringDate, DateTime lastUpdated, List<MerchantBalance> balancesByMerchant
});




}
/// @nodoc
class _$PointsBalanceCopyWithImpl<$Res>
    implements $PointsBalanceCopyWith<$Res> {
  _$PointsBalanceCopyWithImpl(this._self, this._then);

  final PointsBalance _self;
  final $Res Function(PointsBalance) _then;

/// Create a copy of PointsBalance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalPoints = null,Object? pendingPoints = null,Object? expiringPoints = null,Object? expiringDate = null,Object? lastUpdated = null,Object? balancesByMerchant = null,}) {
  return _then(_self.copyWith(
totalPoints: null == totalPoints ? _self.totalPoints : totalPoints // ignore: cast_nullable_to_non_nullable
as int,pendingPoints: null == pendingPoints ? _self.pendingPoints : pendingPoints // ignore: cast_nullable_to_non_nullable
as int,expiringPoints: null == expiringPoints ? _self.expiringPoints : expiringPoints // ignore: cast_nullable_to_non_nullable
as int,expiringDate: null == expiringDate ? _self.expiringDate : expiringDate // ignore: cast_nullable_to_non_nullable
as DateTime,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,balancesByMerchant: null == balancesByMerchant ? _self.balancesByMerchant : balancesByMerchant // ignore: cast_nullable_to_non_nullable
as List<MerchantBalance>,
  ));
}

}


/// Adds pattern-matching-related methods to [PointsBalance].
extension PointsBalancePatterns on PointsBalance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PointsBalance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PointsBalance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PointsBalance value)  $default,){
final _that = this;
switch (_that) {
case _PointsBalance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PointsBalance value)?  $default,){
final _that = this;
switch (_that) {
case _PointsBalance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalPoints,  int pendingPoints,  int expiringPoints,  DateTime expiringDate,  DateTime lastUpdated,  List<MerchantBalance> balancesByMerchant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PointsBalance() when $default != null:
return $default(_that.totalPoints,_that.pendingPoints,_that.expiringPoints,_that.expiringDate,_that.lastUpdated,_that.balancesByMerchant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalPoints,  int pendingPoints,  int expiringPoints,  DateTime expiringDate,  DateTime lastUpdated,  List<MerchantBalance> balancesByMerchant)  $default,) {final _that = this;
switch (_that) {
case _PointsBalance():
return $default(_that.totalPoints,_that.pendingPoints,_that.expiringPoints,_that.expiringDate,_that.lastUpdated,_that.balancesByMerchant);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalPoints,  int pendingPoints,  int expiringPoints,  DateTime expiringDate,  DateTime lastUpdated,  List<MerchantBalance> balancesByMerchant)?  $default,) {final _that = this;
switch (_that) {
case _PointsBalance() when $default != null:
return $default(_that.totalPoints,_that.pendingPoints,_that.expiringPoints,_that.expiringDate,_that.lastUpdated,_that.balancesByMerchant);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PointsBalance implements PointsBalance {
  const _PointsBalance({required this.totalPoints, required this.pendingPoints, required this.expiringPoints, required this.expiringDate, required this.lastUpdated, required final  List<MerchantBalance> balancesByMerchant}): _balancesByMerchant = balancesByMerchant;
  factory _PointsBalance.fromJson(Map<String, dynamic> json) => _$PointsBalanceFromJson(json);

@override final  int totalPoints;
@override final  int pendingPoints;
@override final  int expiringPoints;
@override final  DateTime expiringDate;
@override final  DateTime lastUpdated;
 final  List<MerchantBalance> _balancesByMerchant;
@override List<MerchantBalance> get balancesByMerchant {
  if (_balancesByMerchant is EqualUnmodifiableListView) return _balancesByMerchant;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_balancesByMerchant);
}


/// Create a copy of PointsBalance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PointsBalanceCopyWith<_PointsBalance> get copyWith => __$PointsBalanceCopyWithImpl<_PointsBalance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PointsBalanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PointsBalance&&(identical(other.totalPoints, totalPoints) || other.totalPoints == totalPoints)&&(identical(other.pendingPoints, pendingPoints) || other.pendingPoints == pendingPoints)&&(identical(other.expiringPoints, expiringPoints) || other.expiringPoints == expiringPoints)&&(identical(other.expiringDate, expiringDate) || other.expiringDate == expiringDate)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other._balancesByMerchant, _balancesByMerchant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalPoints,pendingPoints,expiringPoints,expiringDate,lastUpdated,const DeepCollectionEquality().hash(_balancesByMerchant));

@override
String toString() {
  return 'PointsBalance(totalPoints: $totalPoints, pendingPoints: $pendingPoints, expiringPoints: $expiringPoints, expiringDate: $expiringDate, lastUpdated: $lastUpdated, balancesByMerchant: $balancesByMerchant)';
}


}

/// @nodoc
abstract mixin class _$PointsBalanceCopyWith<$Res> implements $PointsBalanceCopyWith<$Res> {
  factory _$PointsBalanceCopyWith(_PointsBalance value, $Res Function(_PointsBalance) _then) = __$PointsBalanceCopyWithImpl;
@override @useResult
$Res call({
 int totalPoints, int pendingPoints, int expiringPoints, DateTime expiringDate, DateTime lastUpdated, List<MerchantBalance> balancesByMerchant
});




}
/// @nodoc
class __$PointsBalanceCopyWithImpl<$Res>
    implements _$PointsBalanceCopyWith<$Res> {
  __$PointsBalanceCopyWithImpl(this._self, this._then);

  final _PointsBalance _self;
  final $Res Function(_PointsBalance) _then;

/// Create a copy of PointsBalance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalPoints = null,Object? pendingPoints = null,Object? expiringPoints = null,Object? expiringDate = null,Object? lastUpdated = null,Object? balancesByMerchant = null,}) {
  return _then(_PointsBalance(
totalPoints: null == totalPoints ? _self.totalPoints : totalPoints // ignore: cast_nullable_to_non_nullable
as int,pendingPoints: null == pendingPoints ? _self.pendingPoints : pendingPoints // ignore: cast_nullable_to_non_nullable
as int,expiringPoints: null == expiringPoints ? _self.expiringPoints : expiringPoints // ignore: cast_nullable_to_non_nullable
as int,expiringDate: null == expiringDate ? _self.expiringDate : expiringDate // ignore: cast_nullable_to_non_nullable
as DateTime,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,balancesByMerchant: null == balancesByMerchant ? _self._balancesByMerchant : balancesByMerchant // ignore: cast_nullable_to_non_nullable
as List<MerchantBalance>,
  ));
}


}

// dart format on
