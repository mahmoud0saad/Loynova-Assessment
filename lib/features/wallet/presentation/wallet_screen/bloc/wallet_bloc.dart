import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loynova_app/core/enums/request_state.dart';
import 'package:loynova_app/features/wallet/domain/enums/transaction_type.dart';
import 'package:loynova_app/features/wallet/domain/models/points_balance/points_balance.dart';
import 'package:loynova_app/features/wallet/domain/models/transaction/transaction.dart';
import 'package:loynova_app/features/wallet/domain/usecase/get_balance_usecase.dart';
import 'package:loynova_app/features/wallet/domain/usecase/get_transactions_usecase.dart';

part 'wallet_bloc.freezed.dart';
part 'wallet_event.dart';
part 'wallet_state.dart';

@injectable
class WalletBloc extends Bloc<WalletEvent, WalletState> {
  final GetBalanceUsecase getBalanceUsecase;
  final GetTransactionsUsecase getTransactionsUsecase;

  WalletBloc(this.getBalanceUsecase, this.getTransactionsUsecase)
    : super(const WalletState()) {
    on<_Started>(_onStarted);
    on<_LoadMore>(_onLoadMore);
    on<_FilterByType>(_onFilterByType);
    on<_Refresh>(_onRefresh);
  }

  Future<void> _onStarted(_Started event, Emitter<WalletState> emit) async {
    emit(
      state.copyWith(
        balanceState: RequestState.loading,
        transactionsState: RequestState.loading,
      ),
    );

    final balanceResult = await getBalanceUsecase();
    balanceResult.fold(
      (failure) => emit(
        state.copyWith(
          balanceState: RequestState.error,
          errorMessage: failure.message,
        ),
      ),
      (balance) => emit(
        state.copyWith(balanceState: RequestState.success, balance: balance),
      ),
    );

    final txResult = await getTransactionsUsecase(page: 1);
    txResult.fold(
      (failure) => emit(
        state.copyWith(
          transactionsState: RequestState.error,
          errorMessage: failure.message,
        ),
      ),
      (paginated) => emit(
        state.copyWith(
          transactionsState: RequestState.success,
          transactions: paginated.transactions,
          currentPage: paginated.page,
          hasNext: paginated.hasNext,
        ),
      ),
    );
  }

  Future<void> _onLoadMore(_LoadMore event, Emitter<WalletState> emit) async {
    if (!state.hasNext || state.transactionsState == RequestState.loading) {
      return;
    }

    final nextPage = state.currentPage + 1;

    final txResult = await getTransactionsUsecase(
      page: nextPage,
      type: state.selectedType,
    );

    txResult.fold(
      (failure) => emit(state.copyWith(errorMessage: failure.message)),
      (paginated) => emit(
        state.copyWith(
          transactions: [...state.transactions, ...paginated.transactions],
          currentPage: paginated.page,
          hasNext: paginated.hasNext,
        ),
      ),
    );
  }

  Future<void> _onFilterByType(
    _FilterByType event,
    Emitter<WalletState> emit,
  ) async {
    emit(
      state.copyWith(
        transactionsState: RequestState.loading,
        selectedType: event.type,
        transactions: [],
        currentPage: 1,
        hasNext: false,
      ),
    );

    final txResult = await getTransactionsUsecase(page: 1, type: event.type);

    txResult.fold(
      (failure) => emit(
        state.copyWith(
          transactionsState: RequestState.error,
          errorMessage: failure.message,
        ),
      ),
      (paginated) => emit(
        state.copyWith(
          transactionsState: RequestState.success,
          transactions: paginated.transactions,
          currentPage: paginated.page,
          hasNext: paginated.hasNext,
        ),
      ),
    );
  }

  Future<void> _onRefresh(_Refresh event, Emitter<WalletState> emit) async {
    emit(
      state.copyWith(
        balanceState: RequestState.loading,
        transactionsState: RequestState.loading,
        transactions: [],
        currentPage: 1,
        hasNext: false,
        selectedType: null,
      ),
    );

    final balanceResult = await getBalanceUsecase();
    balanceResult.fold(
      (failure) => emit(
        state.copyWith(
          balanceState: RequestState.error,
          errorMessage: failure.message,
        ),
      ),
      (balance) => emit(
        state.copyWith(balanceState: RequestState.success, balance: balance),
      ),
    );

    final txResult = await getTransactionsUsecase(page: 1);
    txResult.fold(
      (failure) => emit(
        state.copyWith(
          transactionsState: RequestState.error,
          errorMessage: failure.message,
        ),
      ),
      (paginated) => emit(
        state.copyWith(
          transactionsState: RequestState.success,
          transactions: paginated.transactions,
          currentPage: paginated.page,
          hasNext: paginated.hasNext,
        ),
      ),
    );
  }
}
