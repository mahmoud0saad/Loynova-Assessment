part of 'wallet_bloc.dart';

@freezed
class WalletEvent with _$WalletEvent {
  const factory WalletEvent.started() = _Started;
  const factory WalletEvent.loadMore() = _LoadMore;
  const factory WalletEvent.filterByType({TransactionType? type}) =
      _FilterByType;
  const factory WalletEvent.refresh() = _Refresh;
}
