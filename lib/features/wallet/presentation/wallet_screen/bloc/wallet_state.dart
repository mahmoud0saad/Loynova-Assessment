part of 'wallet_bloc.dart';

@freezed
abstract class WalletState with _$WalletState {
  const factory WalletState({
    @Default(RequestState.initial) RequestState balanceState,
    @Default(RequestState.initial) RequestState transactionsState,
    PointsBalance? balance,
    @Default([]) List<Transaction> transactions,
    @Default(1) int currentPage,
    @Default(false) bool hasNext,
    TransactionType? selectedType,
    String? errorMessage,
  }) = _WalletState;
}
