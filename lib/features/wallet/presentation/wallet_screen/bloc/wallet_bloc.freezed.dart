// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalletEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletEvent()';
}


}

/// @nodoc
class $WalletEventCopyWith<$Res>  {
$WalletEventCopyWith(WalletEvent _, $Res Function(WalletEvent) __);
}


/// Adds pattern-matching-related methods to [WalletEvent].
extension WalletEventPatterns on WalletEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadMore value)?  loadMore,TResult Function( _FilterByType value)?  filterByType,TResult Function( _Refresh value)?  refresh,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _FilterByType() when filterByType != null:
return filterByType(_that);case _Refresh() when refresh != null:
return refresh(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadMore value)  loadMore,required TResult Function( _FilterByType value)  filterByType,required TResult Function( _Refresh value)  refresh,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadMore():
return loadMore(_that);case _FilterByType():
return filterByType(_that);case _Refresh():
return refresh(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadMore value)?  loadMore,TResult? Function( _FilterByType value)?  filterByType,TResult? Function( _Refresh value)?  refresh,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _FilterByType() when filterByType != null:
return filterByType(_that);case _Refresh() when refresh != null:
return refresh(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  loadMore,TResult Function( TransactionType? type)?  filterByType,TResult Function()?  refresh,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadMore() when loadMore != null:
return loadMore();case _FilterByType() when filterByType != null:
return filterByType(_that.type);case _Refresh() when refresh != null:
return refresh();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  loadMore,required TResult Function( TransactionType? type)  filterByType,required TResult Function()  refresh,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _LoadMore():
return loadMore();case _FilterByType():
return filterByType(_that.type);case _Refresh():
return refresh();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  loadMore,TResult? Function( TransactionType? type)?  filterByType,TResult? Function()?  refresh,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadMore() when loadMore != null:
return loadMore();case _FilterByType() when filterByType != null:
return filterByType(_that.type);case _Refresh() when refresh != null:
return refresh();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements WalletEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletEvent.started()';
}


}




/// @nodoc


class _LoadMore implements WalletEvent {
  const _LoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletEvent.loadMore()';
}


}




/// @nodoc


class _FilterByType implements WalletEvent {
  const _FilterByType({this.type});
  

 final  TransactionType? type;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterByTypeCopyWith<_FilterByType> get copyWith => __$FilterByTypeCopyWithImpl<_FilterByType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterByType&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'WalletEvent.filterByType(type: $type)';
}


}

/// @nodoc
abstract mixin class _$FilterByTypeCopyWith<$Res> implements $WalletEventCopyWith<$Res> {
  factory _$FilterByTypeCopyWith(_FilterByType value, $Res Function(_FilterByType) _then) = __$FilterByTypeCopyWithImpl;
@useResult
$Res call({
 TransactionType? type
});




}
/// @nodoc
class __$FilterByTypeCopyWithImpl<$Res>
    implements _$FilterByTypeCopyWith<$Res> {
  __$FilterByTypeCopyWithImpl(this._self, this._then);

  final _FilterByType _self;
  final $Res Function(_FilterByType) _then;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = freezed,}) {
  return _then(_FilterByType(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType?,
  ));
}


}

/// @nodoc


class _Refresh implements WalletEvent {
  const _Refresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletEvent.refresh()';
}


}




/// @nodoc
mixin _$WalletState {

 RequestState get balanceState; RequestState get transactionsState; PointsBalance? get balance; List<Transaction> get transactions; int get currentPage; bool get hasNext; TransactionType? get selectedType; String? get errorMessage;
/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletStateCopyWith<WalletState> get copyWith => _$WalletStateCopyWithImpl<WalletState>(this as WalletState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletState&&(identical(other.balanceState, balanceState) || other.balanceState == balanceState)&&(identical(other.transactionsState, transactionsState) || other.transactionsState == transactionsState)&&(identical(other.balance, balance) || other.balance == balance)&&const DeepCollectionEquality().equals(other.transactions, transactions)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.selectedType, selectedType) || other.selectedType == selectedType)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,balanceState,transactionsState,balance,const DeepCollectionEquality().hash(transactions),currentPage,hasNext,selectedType,errorMessage);

@override
String toString() {
  return 'WalletState(balanceState: $balanceState, transactionsState: $transactionsState, balance: $balance, transactions: $transactions, currentPage: $currentPage, hasNext: $hasNext, selectedType: $selectedType, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $WalletStateCopyWith<$Res>  {
  factory $WalletStateCopyWith(WalletState value, $Res Function(WalletState) _then) = _$WalletStateCopyWithImpl;
@useResult
$Res call({
 RequestState balanceState, RequestState transactionsState, PointsBalance? balance, List<Transaction> transactions, int currentPage, bool hasNext, TransactionType? selectedType, String? errorMessage
});


$PointsBalanceCopyWith<$Res>? get balance;

}
/// @nodoc
class _$WalletStateCopyWithImpl<$Res>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._self, this._then);

  final WalletState _self;
  final $Res Function(WalletState) _then;

/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? balanceState = null,Object? transactionsState = null,Object? balance = freezed,Object? transactions = null,Object? currentPage = null,Object? hasNext = null,Object? selectedType = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
balanceState: null == balanceState ? _self.balanceState : balanceState // ignore: cast_nullable_to_non_nullable
as RequestState,transactionsState: null == transactionsState ? _self.transactionsState : transactionsState // ignore: cast_nullable_to_non_nullable
as RequestState,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as PointsBalance?,transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,selectedType: freezed == selectedType ? _self.selectedType : selectedType // ignore: cast_nullable_to_non_nullable
as TransactionType?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointsBalanceCopyWith<$Res>? get balance {
    if (_self.balance == null) {
    return null;
  }

  return $PointsBalanceCopyWith<$Res>(_self.balance!, (value) {
    return _then(_self.copyWith(balance: value));
  });
}
}


/// Adds pattern-matching-related methods to [WalletState].
extension WalletStatePatterns on WalletState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletState value)  $default,){
final _that = this;
switch (_that) {
case _WalletState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletState value)?  $default,){
final _that = this;
switch (_that) {
case _WalletState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestState balanceState,  RequestState transactionsState,  PointsBalance? balance,  List<Transaction> transactions,  int currentPage,  bool hasNext,  TransactionType? selectedType,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletState() when $default != null:
return $default(_that.balanceState,_that.transactionsState,_that.balance,_that.transactions,_that.currentPage,_that.hasNext,_that.selectedType,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestState balanceState,  RequestState transactionsState,  PointsBalance? balance,  List<Transaction> transactions,  int currentPage,  bool hasNext,  TransactionType? selectedType,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _WalletState():
return $default(_that.balanceState,_that.transactionsState,_that.balance,_that.transactions,_that.currentPage,_that.hasNext,_that.selectedType,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestState balanceState,  RequestState transactionsState,  PointsBalance? balance,  List<Transaction> transactions,  int currentPage,  bool hasNext,  TransactionType? selectedType,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _WalletState() when $default != null:
return $default(_that.balanceState,_that.transactionsState,_that.balance,_that.transactions,_that.currentPage,_that.hasNext,_that.selectedType,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _WalletState implements WalletState {
  const _WalletState({this.balanceState = RequestState.initial, this.transactionsState = RequestState.initial, this.balance, final  List<Transaction> transactions = const [], this.currentPage = 1, this.hasNext = false, this.selectedType, this.errorMessage}): _transactions = transactions;
  

@override@JsonKey() final  RequestState balanceState;
@override@JsonKey() final  RequestState transactionsState;
@override final  PointsBalance? balance;
 final  List<Transaction> _transactions;
@override@JsonKey() List<Transaction> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}

@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasNext;
@override final  TransactionType? selectedType;
@override final  String? errorMessage;

/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletStateCopyWith<_WalletState> get copyWith => __$WalletStateCopyWithImpl<_WalletState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletState&&(identical(other.balanceState, balanceState) || other.balanceState == balanceState)&&(identical(other.transactionsState, transactionsState) || other.transactionsState == transactionsState)&&(identical(other.balance, balance) || other.balance == balance)&&const DeepCollectionEquality().equals(other._transactions, _transactions)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.selectedType, selectedType) || other.selectedType == selectedType)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,balanceState,transactionsState,balance,const DeepCollectionEquality().hash(_transactions),currentPage,hasNext,selectedType,errorMessage);

@override
String toString() {
  return 'WalletState(balanceState: $balanceState, transactionsState: $transactionsState, balance: $balance, transactions: $transactions, currentPage: $currentPage, hasNext: $hasNext, selectedType: $selectedType, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$WalletStateCopyWith<$Res> implements $WalletStateCopyWith<$Res> {
  factory _$WalletStateCopyWith(_WalletState value, $Res Function(_WalletState) _then) = __$WalletStateCopyWithImpl;
@override @useResult
$Res call({
 RequestState balanceState, RequestState transactionsState, PointsBalance? balance, List<Transaction> transactions, int currentPage, bool hasNext, TransactionType? selectedType, String? errorMessage
});


@override $PointsBalanceCopyWith<$Res>? get balance;

}
/// @nodoc
class __$WalletStateCopyWithImpl<$Res>
    implements _$WalletStateCopyWith<$Res> {
  __$WalletStateCopyWithImpl(this._self, this._then);

  final _WalletState _self;
  final $Res Function(_WalletState) _then;

/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? balanceState = null,Object? transactionsState = null,Object? balance = freezed,Object? transactions = null,Object? currentPage = null,Object? hasNext = null,Object? selectedType = freezed,Object? errorMessage = freezed,}) {
  return _then(_WalletState(
balanceState: null == balanceState ? _self.balanceState : balanceState // ignore: cast_nullable_to_non_nullable
as RequestState,transactionsState: null == transactionsState ? _self.transactionsState : transactionsState // ignore: cast_nullable_to_non_nullable
as RequestState,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as PointsBalance?,transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,selectedType: freezed == selectedType ? _self.selectedType : selectedType // ignore: cast_nullable_to_non_nullable
as TransactionType?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointsBalanceCopyWith<$Res>? get balance {
    if (_self.balance == null) {
    return null;
  }

  return $PointsBalanceCopyWith<$Res>(_self.balance!, (value) {
    return _then(_self.copyWith(balance: value));
  });
}
}

// dart format on
