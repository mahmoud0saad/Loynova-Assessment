// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_configuration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppConfigurationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppConfigurationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppConfigurationEvent()';
}


}

/// @nodoc
class $AppConfigurationEventCopyWith<$Res>  {
$AppConfigurationEventCopyWith(AppConfigurationEvent _, $Res Function(AppConfigurationEvent) __);
}


/// Adds pattern-matching-related methods to [AppConfigurationEvent].
extension AppConfigurationEventPatterns on AppConfigurationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _ChangeLocale value)?  changeLocale,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ChangeLocale() when changeLocale != null:
return changeLocale(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _ChangeLocale value)  changeLocale,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _ChangeLocale():
return changeLocale(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _ChangeLocale value)?  changeLocale,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ChangeLocale() when changeLocale != null:
return changeLocale(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( Locale locale)?  changeLocale,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _ChangeLocale() when changeLocale != null:
return changeLocale(_that.locale);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( Locale locale)  changeLocale,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _ChangeLocale():
return changeLocale(_that.locale);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( Locale locale)?  changeLocale,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _ChangeLocale() when changeLocale != null:
return changeLocale(_that.locale);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AppConfigurationEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppConfigurationEvent.started()';
}


}




/// @nodoc


class _ChangeLocale implements AppConfigurationEvent {
  const _ChangeLocale({required this.locale});
  

 final  Locale locale;

/// Create a copy of AppConfigurationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeLocaleCopyWith<_ChangeLocale> get copyWith => __$ChangeLocaleCopyWithImpl<_ChangeLocale>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeLocale&&(identical(other.locale, locale) || other.locale == locale));
}


@override
int get hashCode => Object.hash(runtimeType,locale);

@override
String toString() {
  return 'AppConfigurationEvent.changeLocale(locale: $locale)';
}


}

/// @nodoc
abstract mixin class _$ChangeLocaleCopyWith<$Res> implements $AppConfigurationEventCopyWith<$Res> {
  factory _$ChangeLocaleCopyWith(_ChangeLocale value, $Res Function(_ChangeLocale) _then) = __$ChangeLocaleCopyWithImpl;
@useResult
$Res call({
 Locale locale
});




}
/// @nodoc
class __$ChangeLocaleCopyWithImpl<$Res>
    implements _$ChangeLocaleCopyWith<$Res> {
  __$ChangeLocaleCopyWithImpl(this._self, this._then);

  final _ChangeLocale _self;
  final $Res Function(_ChangeLocale) _then;

/// Create a copy of AppConfigurationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locale = null,}) {
  return _then(_ChangeLocale(
locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale,
  ));
}


}

/// @nodoc
mixin _$AppConfigurationState {

 RequestState get appConfigurationRequestState; AppHealthyModel? get appHealthyConfig; Locale get locale;
/// Create a copy of AppConfigurationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppConfigurationStateCopyWith<AppConfigurationState> get copyWith => _$AppConfigurationStateCopyWithImpl<AppConfigurationState>(this as AppConfigurationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppConfigurationState&&(identical(other.appConfigurationRequestState, appConfigurationRequestState) || other.appConfigurationRequestState == appConfigurationRequestState)&&(identical(other.appHealthyConfig, appHealthyConfig) || other.appHealthyConfig == appHealthyConfig)&&(identical(other.locale, locale) || other.locale == locale));
}


@override
int get hashCode => Object.hash(runtimeType,appConfigurationRequestState,appHealthyConfig,locale);

@override
String toString() {
  return 'AppConfigurationState(appConfigurationRequestState: $appConfigurationRequestState, appHealthyConfig: $appHealthyConfig, locale: $locale)';
}


}

/// @nodoc
abstract mixin class $AppConfigurationStateCopyWith<$Res>  {
  factory $AppConfigurationStateCopyWith(AppConfigurationState value, $Res Function(AppConfigurationState) _then) = _$AppConfigurationStateCopyWithImpl;
@useResult
$Res call({
 RequestState appConfigurationRequestState, AppHealthyModel? appHealthyConfig, Locale locale
});


$AppHealthyModelCopyWith<$Res>? get appHealthyConfig;

}
/// @nodoc
class _$AppConfigurationStateCopyWithImpl<$Res>
    implements $AppConfigurationStateCopyWith<$Res> {
  _$AppConfigurationStateCopyWithImpl(this._self, this._then);

  final AppConfigurationState _self;
  final $Res Function(AppConfigurationState) _then;

/// Create a copy of AppConfigurationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appConfigurationRequestState = null,Object? appHealthyConfig = freezed,Object? locale = null,}) {
  return _then(_self.copyWith(
appConfigurationRequestState: null == appConfigurationRequestState ? _self.appConfigurationRequestState : appConfigurationRequestState // ignore: cast_nullable_to_non_nullable
as RequestState,appHealthyConfig: freezed == appHealthyConfig ? _self.appHealthyConfig : appHealthyConfig // ignore: cast_nullable_to_non_nullable
as AppHealthyModel?,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale,
  ));
}
/// Create a copy of AppConfigurationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppHealthyModelCopyWith<$Res>? get appHealthyConfig {
    if (_self.appHealthyConfig == null) {
    return null;
  }

  return $AppHealthyModelCopyWith<$Res>(_self.appHealthyConfig!, (value) {
    return _then(_self.copyWith(appHealthyConfig: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppConfigurationState].
extension AppConfigurationStatePatterns on AppConfigurationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppConfigurationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppConfigurationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppConfigurationState value)  $default,){
final _that = this;
switch (_that) {
case _AppConfigurationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppConfigurationState value)?  $default,){
final _that = this;
switch (_that) {
case _AppConfigurationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestState appConfigurationRequestState,  AppHealthyModel? appHealthyConfig,  Locale locale)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppConfigurationState() when $default != null:
return $default(_that.appConfigurationRequestState,_that.appHealthyConfig,_that.locale);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestState appConfigurationRequestState,  AppHealthyModel? appHealthyConfig,  Locale locale)  $default,) {final _that = this;
switch (_that) {
case _AppConfigurationState():
return $default(_that.appConfigurationRequestState,_that.appHealthyConfig,_that.locale);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestState appConfigurationRequestState,  AppHealthyModel? appHealthyConfig,  Locale locale)?  $default,) {final _that = this;
switch (_that) {
case _AppConfigurationState() when $default != null:
return $default(_that.appConfigurationRequestState,_that.appHealthyConfig,_that.locale);case _:
  return null;

}
}

}

/// @nodoc


class _AppConfigurationState implements AppConfigurationState {
  const _AppConfigurationState({this.appConfigurationRequestState = RequestState.initial, this.appHealthyConfig, this.locale = const Locale("en")});
  

@override@JsonKey() final  RequestState appConfigurationRequestState;
@override final  AppHealthyModel? appHealthyConfig;
@override@JsonKey() final  Locale locale;

/// Create a copy of AppConfigurationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppConfigurationStateCopyWith<_AppConfigurationState> get copyWith => __$AppConfigurationStateCopyWithImpl<_AppConfigurationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppConfigurationState&&(identical(other.appConfigurationRequestState, appConfigurationRequestState) || other.appConfigurationRequestState == appConfigurationRequestState)&&(identical(other.appHealthyConfig, appHealthyConfig) || other.appHealthyConfig == appHealthyConfig)&&(identical(other.locale, locale) || other.locale == locale));
}


@override
int get hashCode => Object.hash(runtimeType,appConfigurationRequestState,appHealthyConfig,locale);

@override
String toString() {
  return 'AppConfigurationState(appConfigurationRequestState: $appConfigurationRequestState, appHealthyConfig: $appHealthyConfig, locale: $locale)';
}


}

/// @nodoc
abstract mixin class _$AppConfigurationStateCopyWith<$Res> implements $AppConfigurationStateCopyWith<$Res> {
  factory _$AppConfigurationStateCopyWith(_AppConfigurationState value, $Res Function(_AppConfigurationState) _then) = __$AppConfigurationStateCopyWithImpl;
@override @useResult
$Res call({
 RequestState appConfigurationRequestState, AppHealthyModel? appHealthyConfig, Locale locale
});


@override $AppHealthyModelCopyWith<$Res>? get appHealthyConfig;

}
/// @nodoc
class __$AppConfigurationStateCopyWithImpl<$Res>
    implements _$AppConfigurationStateCopyWith<$Res> {
  __$AppConfigurationStateCopyWithImpl(this._self, this._then);

  final _AppConfigurationState _self;
  final $Res Function(_AppConfigurationState) _then;

/// Create a copy of AppConfigurationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appConfigurationRequestState = null,Object? appHealthyConfig = freezed,Object? locale = null,}) {
  return _then(_AppConfigurationState(
appConfigurationRequestState: null == appConfigurationRequestState ? _self.appConfigurationRequestState : appConfigurationRequestState // ignore: cast_nullable_to_non_nullable
as RequestState,appHealthyConfig: freezed == appHealthyConfig ? _self.appHealthyConfig : appHealthyConfig // ignore: cast_nullable_to_non_nullable
as AppHealthyModel?,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale,
  ));
}

/// Create a copy of AppConfigurationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppHealthyModelCopyWith<$Res>? get appHealthyConfig {
    if (_self.appHealthyConfig == null) {
    return null;
  }

  return $AppHealthyModelCopyWith<$Res>(_self.appHealthyConfig!, (value) {
    return _then(_self.copyWith(appHealthyConfig: value));
  });
}
}

// dart format on
