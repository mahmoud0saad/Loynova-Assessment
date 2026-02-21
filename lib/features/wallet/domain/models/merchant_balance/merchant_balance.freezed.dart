// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MerchantBalance {

 String get merchantId; String get merchantName; String get merchantLogo; int get points; String get tier;
/// Create a copy of MerchantBalance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantBalanceCopyWith<MerchantBalance> get copyWith => _$MerchantBalanceCopyWithImpl<MerchantBalance>(this as MerchantBalance, _$identity);

  /// Serializes this MerchantBalance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantBalance&&(identical(other.merchantId, merchantId) || other.merchantId == merchantId)&&(identical(other.merchantName, merchantName) || other.merchantName == merchantName)&&(identical(other.merchantLogo, merchantLogo) || other.merchantLogo == merchantLogo)&&(identical(other.points, points) || other.points == points)&&(identical(other.tier, tier) || other.tier == tier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,merchantId,merchantName,merchantLogo,points,tier);

@override
String toString() {
  return 'MerchantBalance(merchantId: $merchantId, merchantName: $merchantName, merchantLogo: $merchantLogo, points: $points, tier: $tier)';
}


}

/// @nodoc
abstract mixin class $MerchantBalanceCopyWith<$Res>  {
  factory $MerchantBalanceCopyWith(MerchantBalance value, $Res Function(MerchantBalance) _then) = _$MerchantBalanceCopyWithImpl;
@useResult
$Res call({
 String merchantId, String merchantName, String merchantLogo, int points, String tier
});




}
/// @nodoc
class _$MerchantBalanceCopyWithImpl<$Res>
    implements $MerchantBalanceCopyWith<$Res> {
  _$MerchantBalanceCopyWithImpl(this._self, this._then);

  final MerchantBalance _self;
  final $Res Function(MerchantBalance) _then;

/// Create a copy of MerchantBalance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? merchantId = null,Object? merchantName = null,Object? merchantLogo = null,Object? points = null,Object? tier = null,}) {
  return _then(_self.copyWith(
merchantId: null == merchantId ? _self.merchantId : merchantId // ignore: cast_nullable_to_non_nullable
as String,merchantName: null == merchantName ? _self.merchantName : merchantName // ignore: cast_nullable_to_non_nullable
as String,merchantLogo: null == merchantLogo ? _self.merchantLogo : merchantLogo // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,tier: null == tier ? _self.tier : tier // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchantBalance].
extension MerchantBalancePatterns on MerchantBalance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantBalance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantBalance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantBalance value)  $default,){
final _that = this;
switch (_that) {
case _MerchantBalance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantBalance value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantBalance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String merchantId,  String merchantName,  String merchantLogo,  int points,  String tier)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantBalance() when $default != null:
return $default(_that.merchantId,_that.merchantName,_that.merchantLogo,_that.points,_that.tier);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String merchantId,  String merchantName,  String merchantLogo,  int points,  String tier)  $default,) {final _that = this;
switch (_that) {
case _MerchantBalance():
return $default(_that.merchantId,_that.merchantName,_that.merchantLogo,_that.points,_that.tier);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String merchantId,  String merchantName,  String merchantLogo,  int points,  String tier)?  $default,) {final _that = this;
switch (_that) {
case _MerchantBalance() when $default != null:
return $default(_that.merchantId,_that.merchantName,_that.merchantLogo,_that.points,_that.tier);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantBalance implements MerchantBalance {
  const _MerchantBalance({required this.merchantId, required this.merchantName, required this.merchantLogo, required this.points, required this.tier});
  factory _MerchantBalance.fromJson(Map<String, dynamic> json) => _$MerchantBalanceFromJson(json);

@override final  String merchantId;
@override final  String merchantName;
@override final  String merchantLogo;
@override final  int points;
@override final  String tier;

/// Create a copy of MerchantBalance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantBalanceCopyWith<_MerchantBalance> get copyWith => __$MerchantBalanceCopyWithImpl<_MerchantBalance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantBalanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantBalance&&(identical(other.merchantId, merchantId) || other.merchantId == merchantId)&&(identical(other.merchantName, merchantName) || other.merchantName == merchantName)&&(identical(other.merchantLogo, merchantLogo) || other.merchantLogo == merchantLogo)&&(identical(other.points, points) || other.points == points)&&(identical(other.tier, tier) || other.tier == tier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,merchantId,merchantName,merchantLogo,points,tier);

@override
String toString() {
  return 'MerchantBalance(merchantId: $merchantId, merchantName: $merchantName, merchantLogo: $merchantLogo, points: $points, tier: $tier)';
}


}

/// @nodoc
abstract mixin class _$MerchantBalanceCopyWith<$Res> implements $MerchantBalanceCopyWith<$Res> {
  factory _$MerchantBalanceCopyWith(_MerchantBalance value, $Res Function(_MerchantBalance) _then) = __$MerchantBalanceCopyWithImpl;
@override @useResult
$Res call({
 String merchantId, String merchantName, String merchantLogo, int points, String tier
});




}
/// @nodoc
class __$MerchantBalanceCopyWithImpl<$Res>
    implements _$MerchantBalanceCopyWith<$Res> {
  __$MerchantBalanceCopyWithImpl(this._self, this._then);

  final _MerchantBalance _self;
  final $Res Function(_MerchantBalance) _then;

/// Create a copy of MerchantBalance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? merchantId = null,Object? merchantName = null,Object? merchantLogo = null,Object? points = null,Object? tier = null,}) {
  return _then(_MerchantBalance(
merchantId: null == merchantId ? _self.merchantId : merchantId // ignore: cast_nullable_to_non_nullable
as String,merchantName: null == merchantName ? _self.merchantName : merchantName // ignore: cast_nullable_to_non_nullable
as String,merchantLogo: null == merchantLogo ? _self.merchantLogo : merchantLogo // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,tier: null == tier ? _self.tier : tier // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
