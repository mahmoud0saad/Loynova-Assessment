// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_points_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransferPointsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferPointsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransferPointsEvent()';
}


}

/// @nodoc
class $TransferPointsEventCopyWith<$Res>  {
$TransferPointsEventCopyWith(TransferPointsEvent _, $Res Function(TransferPointsEvent) __);
}


/// Adds pattern-matching-related methods to [TransferPointsEvent].
extension TransferPointsEventPatterns on TransferPointsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Transfer value)?  transfer,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Transfer() when transfer != null:
return transfer(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Transfer value)  transfer,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Transfer():
return transfer(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Transfer value)?  transfer,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Transfer() when transfer != null:
return transfer(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String recipient,  int points,  String? note)?  transfer,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Transfer() when transfer != null:
return transfer(_that.recipient,_that.points,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String recipient,  int points,  String? note)  transfer,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Transfer():
return transfer(_that.recipient,_that.points,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String recipient,  int points,  String? note)?  transfer,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Transfer() when transfer != null:
return transfer(_that.recipient,_that.points,_that.note);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements TransferPointsEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransferPointsEvent.started()';
}


}




/// @nodoc


class _Transfer implements TransferPointsEvent {
  const _Transfer({required this.recipient, required this.points, this.note});
  

 final  String recipient;
 final  int points;
 final  String? note;

/// Create a copy of TransferPointsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransferCopyWith<_Transfer> get copyWith => __$TransferCopyWithImpl<_Transfer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transfer&&(identical(other.recipient, recipient) || other.recipient == recipient)&&(identical(other.points, points) || other.points == points)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,recipient,points,note);

@override
String toString() {
  return 'TransferPointsEvent.transfer(recipient: $recipient, points: $points, note: $note)';
}


}

/// @nodoc
abstract mixin class _$TransferCopyWith<$Res> implements $TransferPointsEventCopyWith<$Res> {
  factory _$TransferCopyWith(_Transfer value, $Res Function(_Transfer) _then) = __$TransferCopyWithImpl;
@useResult
$Res call({
 String recipient, int points, String? note
});




}
/// @nodoc
class __$TransferCopyWithImpl<$Res>
    implements _$TransferCopyWith<$Res> {
  __$TransferCopyWithImpl(this._self, this._then);

  final _Transfer _self;
  final $Res Function(_Transfer) _then;

/// Create a copy of TransferPointsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recipient = null,Object? points = null,Object? note = freezed,}) {
  return _then(_Transfer(
recipient: null == recipient ? _self.recipient : recipient // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$TransferPointsState {

 RequestState get requestState; TransferResult? get result; String? get errorMessage;
/// Create a copy of TransferPointsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransferPointsStateCopyWith<TransferPointsState> get copyWith => _$TransferPointsStateCopyWithImpl<TransferPointsState>(this as TransferPointsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferPointsState&&(identical(other.requestState, requestState) || other.requestState == requestState)&&(identical(other.result, result) || other.result == result)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,requestState,result,errorMessage);

@override
String toString() {
  return 'TransferPointsState(requestState: $requestState, result: $result, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $TransferPointsStateCopyWith<$Res>  {
  factory $TransferPointsStateCopyWith(TransferPointsState value, $Res Function(TransferPointsState) _then) = _$TransferPointsStateCopyWithImpl;
@useResult
$Res call({
 RequestState requestState, TransferResult? result, String? errorMessage
});


$TransferResultCopyWith<$Res>? get result;

}
/// @nodoc
class _$TransferPointsStateCopyWithImpl<$Res>
    implements $TransferPointsStateCopyWith<$Res> {
  _$TransferPointsStateCopyWithImpl(this._self, this._then);

  final TransferPointsState _self;
  final $Res Function(TransferPointsState) _then;

/// Create a copy of TransferPointsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requestState = null,Object? result = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
requestState: null == requestState ? _self.requestState : requestState // ignore: cast_nullable_to_non_nullable
as RequestState,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as TransferResult?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of TransferPointsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransferResultCopyWith<$Res>? get result {
    if (_self.result == null) {
    return null;
  }

  return $TransferResultCopyWith<$Res>(_self.result!, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [TransferPointsState].
extension TransferPointsStatePatterns on TransferPointsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransferPointsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransferPointsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransferPointsState value)  $default,){
final _that = this;
switch (_that) {
case _TransferPointsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransferPointsState value)?  $default,){
final _that = this;
switch (_that) {
case _TransferPointsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestState requestState,  TransferResult? result,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransferPointsState() when $default != null:
return $default(_that.requestState,_that.result,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestState requestState,  TransferResult? result,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _TransferPointsState():
return $default(_that.requestState,_that.result,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestState requestState,  TransferResult? result,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _TransferPointsState() when $default != null:
return $default(_that.requestState,_that.result,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _TransferPointsState implements TransferPointsState {
  const _TransferPointsState({this.requestState = RequestState.initial, this.result, this.errorMessage});
  

@override@JsonKey() final  RequestState requestState;
@override final  TransferResult? result;
@override final  String? errorMessage;

/// Create a copy of TransferPointsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransferPointsStateCopyWith<_TransferPointsState> get copyWith => __$TransferPointsStateCopyWithImpl<_TransferPointsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransferPointsState&&(identical(other.requestState, requestState) || other.requestState == requestState)&&(identical(other.result, result) || other.result == result)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,requestState,result,errorMessage);

@override
String toString() {
  return 'TransferPointsState(requestState: $requestState, result: $result, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$TransferPointsStateCopyWith<$Res> implements $TransferPointsStateCopyWith<$Res> {
  factory _$TransferPointsStateCopyWith(_TransferPointsState value, $Res Function(_TransferPointsState) _then) = __$TransferPointsStateCopyWithImpl;
@override @useResult
$Res call({
 RequestState requestState, TransferResult? result, String? errorMessage
});


@override $TransferResultCopyWith<$Res>? get result;

}
/// @nodoc
class __$TransferPointsStateCopyWithImpl<$Res>
    implements _$TransferPointsStateCopyWith<$Res> {
  __$TransferPointsStateCopyWithImpl(this._self, this._then);

  final _TransferPointsState _self;
  final $Res Function(_TransferPointsState) _then;

/// Create a copy of TransferPointsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requestState = null,Object? result = freezed,Object? errorMessage = freezed,}) {
  return _then(_TransferPointsState(
requestState: null == requestState ? _self.requestState : requestState // ignore: cast_nullable_to_non_nullable
as RequestState,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as TransferResult?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of TransferPointsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransferResultCopyWith<$Res>? get result {
    if (_self.result == null) {
    return null;
  }

  return $TransferResultCopyWith<$Res>(_self.result!, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

// dart format on
