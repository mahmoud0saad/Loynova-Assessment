import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:loynova_app/core/enums/request_state.dart';
import 'package:loynova_app/core/errors/failure.dart';
import 'package:loynova_app/features/wallet/domain/enums/transaction_status.dart';
import 'package:loynova_app/features/wallet/domain/enums/transaction_type.dart';
import 'package:loynova_app/features/wallet/domain/models/merchant_balance/merchant_balance.dart';
import 'package:loynova_app/features/wallet/domain/models/paginated_transactions/paginated_transactions.dart';
import 'package:loynova_app/features/wallet/domain/models/points_balance/points_balance.dart';
import 'package:loynova_app/features/wallet/domain/models/transaction/transaction.dart';
import 'package:loynova_app/features/wallet/domain/usecase/get_balance_usecase.dart';
import 'package:loynova_app/features/wallet/domain/usecase/get_transactions_usecase.dart';
import 'package:loynova_app/features/wallet/presentation/wallet_screen/bloc/wallet_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockGetBalanceUsecase extends Mock implements GetBalanceUsecase {}

class MockGetTransactionsUsecase extends Mock
    implements GetTransactionsUsecase {}

void main() {
  late WalletBloc bloc;
  late MockGetBalanceUsecase mockGetBalance;
  late MockGetTransactionsUsecase mockGetTransactions;

  setUp(() {
    mockGetBalance = MockGetBalanceUsecase();
    mockGetTransactions = MockGetTransactionsUsecase();
    bloc = WalletBloc(mockGetBalance, mockGetTransactions);
  });

  tearDown(() => bloc.close());

  final tBalance = PointsBalance(
    totalPoints: 15750,
    pendingPoints: 500,
    expiringPoints: 1200,
    expiringDate: DateTime.parse('2024-03-31T23:59:59Z'),
    lastUpdated: DateTime.parse('2024-02-15T10:30:00Z'),
    balancesByMerchant: const [
      MerchantBalance(
        merchantId: 'm_123',
        merchantName: 'TechMart',
        merchantLogo: 'https://picsum.photos/seed/techmart/100',
        points: 8500,
        tier: 'Gold',
      ),
    ],
  );

  final tPaginated = PaginatedTransactions(
    transactions: [
      Transaction(
        id: 'txn_001',
        type: TransactionType.EARN,
        points: 500,
        description: 'Purchase at TechMart',
        createdAt: DateTime.parse('2024-02-15T14:30:00Z'),
        status: TransactionStatus.COMPLETED,
      ),
    ],
    page: 1,
    totalItems: 1,
    hasNext: false,
  );

  test('initial state is WalletState()', () {
    expect(bloc.state, const WalletState());
    expect(bloc.state.balanceState, RequestState.initial);
    expect(bloc.state.transactionsState, RequestState.initial);
  });

  blocTest<WalletBloc, WalletState>(
    'emits [loading, loaded] on started when both succeed',
    build: () {
      when(() => mockGetBalance()).thenAnswer((_) async => Right(tBalance));
      when(
        () => mockGetTransactions(
          page: any(named: 'page'),
          limit: any(named: 'limit'),
          type: any(named: 'type'),
        ),
      ).thenAnswer((_) async => Right(tPaginated));
      return bloc;
    },
    act: (bloc) => bloc.add(const WalletEvent.started()),
    expect: () => [
      const WalletState(
        balanceState: RequestState.loading,
        transactionsState: RequestState.loading,
      ),
      WalletState(
        balanceState: RequestState.success,
        transactionsState: RequestState.loading,
        balance: tBalance,
      ),
      WalletState(
        balanceState: RequestState.success,
        transactionsState: RequestState.success,
        balance: tBalance,
        transactions: tPaginated.transactions,
        currentPage: 1,
        hasNext: false,
      ),
    ],
  );

  blocTest<WalletBloc, WalletState>(
    'emits error state when getBalance fails',
    build: () {
      when(
        () => mockGetBalance(),
      ).thenAnswer((_) async => const Left(ServerFailure(message: 'error')));
      when(
        () => mockGetTransactions(
          page: any(named: 'page'),
          limit: any(named: 'limit'),
          type: any(named: 'type'),
        ),
      ).thenAnswer((_) async => Right(tPaginated));
      return bloc;
    },
    act: (bloc) => bloc.add(const WalletEvent.started()),
    expect: () => [
      const WalletState(
        balanceState: RequestState.loading,
        transactionsState: RequestState.loading,
      ),
      const WalletState(
        balanceState: RequestState.error,
        transactionsState: RequestState.loading,
        errorMessage: 'error',
      ),
      WalletState(
        balanceState: RequestState.error,
        transactionsState: RequestState.success,
        errorMessage: 'error',
        transactions: tPaginated.transactions,
        currentPage: 1,
        hasNext: false,
      ),
    ],
  );

  blocTest<WalletBloc, WalletState>(
    'filterByType reloads transactions with selected type',
    build: () {
      when(
        () => mockGetTransactions(
          page: any(named: 'page'),
          limit: any(named: 'limit'),
          type: any(named: 'type'),
        ),
      ).thenAnswer((_) async => Right(tPaginated));
      return bloc;
    },
    act: (bloc) =>
        bloc.add(const WalletEvent.filterByType(type: TransactionType.EARN)),
    expect: () => [
      const WalletState(
        transactionsState: RequestState.loading,
        selectedType: TransactionType.EARN,
      ),
      WalletState(
        transactionsState: RequestState.success,
        selectedType: TransactionType.EARN,
        transactions: tPaginated.transactions,
        currentPage: 1,
        hasNext: false,
      ),
    ],
    verify: (_) {
      verify(
        () => mockGetTransactions(page: 1, type: TransactionType.EARN),
      ).called(1);
    },
  );

  blocTest<WalletBloc, WalletState>(
    'refresh reloads everything',
    build: () {
      when(() => mockGetBalance()).thenAnswer((_) async => Right(tBalance));
      when(
        () => mockGetTransactions(
          page: any(named: 'page'),
          limit: any(named: 'limit'),
          type: any(named: 'type'),
        ),
      ).thenAnswer((_) async => Right(tPaginated));
      return bloc;
    },
    act: (bloc) => bloc.add(const WalletEvent.refresh()),
    verify: (_) {
      verify(() => mockGetBalance()).called(1);
      verify(() => mockGetTransactions(page: 1)).called(1);
    },
  );
}
