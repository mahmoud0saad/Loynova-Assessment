// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_success_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseSuccessResponseModel<T> {

 String? get message; dynamic get data;
/// Create a copy of BaseSuccessResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseSuccessResponseModelCopyWith<T, BaseSuccessResponseModel<T>> get copyWith => _$BaseSuccessResponseModelCopyWithImpl<T, BaseSuccessResponseModel<T>>(this as BaseSuccessResponseModel<T>, _$identity);

  /// Serializes this BaseSuccessResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseSuccessResponseModel<T>&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseSuccessResponseModel<$T>(message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $BaseSuccessResponseModelCopyWith<T,$Res>  {
  factory $BaseSuccessResponseModelCopyWith(BaseSuccessResponseModel<T> value, $Res Function(BaseSuccessResponseModel<T>) _then) = _$BaseSuccessResponseModelCopyWithImpl;
@useResult
$Res call({
 String? message, dynamic data
});




}
/// @nodoc
class _$BaseSuccessResponseModelCopyWithImpl<T,$Res>
    implements $BaseSuccessResponseModelCopyWith<T, $Res> {
  _$BaseSuccessResponseModelCopyWithImpl(this._self, this._then);

  final BaseSuccessResponseModel<T> _self;
  final $Res Function(BaseSuccessResponseModel<T>) _then;

/// Create a copy of BaseSuccessResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [BaseSuccessResponseModel].
extension BaseSuccessResponseModelPatterns<T> on BaseSuccessResponseModel<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseSuccessResponseModel<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseSuccessResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseSuccessResponseModel<T> value)  $default,){
final _that = this;
switch (_that) {
case _BaseSuccessResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseSuccessResponseModel<T> value)?  $default,){
final _that = this;
switch (_that) {
case _BaseSuccessResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? message,  dynamic data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseSuccessResponseModel() when $default != null:
return $default(_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? message,  dynamic data)  $default,) {final _that = this;
switch (_that) {
case _BaseSuccessResponseModel():
return $default(_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? message,  dynamic data)?  $default,) {final _that = this;
switch (_that) {
case _BaseSuccessResponseModel() when $default != null:
return $default(_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BaseSuccessResponseModel<T> extends BaseSuccessResponseModel<T> {
  const _BaseSuccessResponseModel({this.message, this.data}): super._();
  factory _BaseSuccessResponseModel.fromJson(Map<String, dynamic> json) => _$BaseSuccessResponseModelFromJson(json);

@override final  String? message;
@override final  dynamic data;

/// Create a copy of BaseSuccessResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseSuccessResponseModelCopyWith<T, _BaseSuccessResponseModel<T>> get copyWith => __$BaseSuccessResponseModelCopyWithImpl<T, _BaseSuccessResponseModel<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaseSuccessResponseModelToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseSuccessResponseModel<T>&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseSuccessResponseModel<$T>(message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BaseSuccessResponseModelCopyWith<T,$Res> implements $BaseSuccessResponseModelCopyWith<T, $Res> {
  factory _$BaseSuccessResponseModelCopyWith(_BaseSuccessResponseModel<T> value, $Res Function(_BaseSuccessResponseModel<T>) _then) = __$BaseSuccessResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? message, dynamic data
});




}
/// @nodoc
class __$BaseSuccessResponseModelCopyWithImpl<T,$Res>
    implements _$BaseSuccessResponseModelCopyWith<T, $Res> {
  __$BaseSuccessResponseModelCopyWithImpl(this._self, this._then);

  final _BaseSuccessResponseModel<T> _self;
  final $Res Function(_BaseSuccessResponseModel<T>) _then;

/// Create a copy of BaseSuccessResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? data = freezed,}) {
  return _then(_BaseSuccessResponseModel<T>(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
