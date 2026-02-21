import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:loynova_app/core/errors/failure.dart';
import 'package:loynova_app/features/wallet/data/datasources/base_wallet_datasource.dart';
import 'package:loynova_app/features/wallet/data/repositories/wallet_repository_impl.dart';
import 'package:loynova_app/features/wallet/domain/enums/transaction_status.dart';
import 'package:loynova_app/features/wallet/domain/enums/transaction_type.dart';
import 'package:loynova_app/features/wallet/domain/models/merchant_balance/merchant_balance.dart';
import 'package:loynova_app/features/wallet/domain/models/paginated_transactions/paginated_transactions.dart';
import 'package:loynova_app/features/wallet/domain/models/points_balance/points_balance.dart';
import 'package:loynova_app/features/wallet/domain/models/transaction/transaction.dart';
import 'package:loynova_app/features/wallet/domain/models/transfer_request/transfer_request.dart';
import 'package:loynova_app/features/wallet/domain/models/transfer_result/transfer_result.dart';
import 'package:loynova_app/features/wallet/domain/models/wallet_exception/wallet_exception.dart';
import 'package:mocktail/mocktail.dart';

class MockWalletDataSource extends Mock implements BaseWalletDataSource {}

void main() {
  late WalletRepositoryImpl repository;
  late MockWalletDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockWalletDataSource();
    repository = WalletRepositoryImpl(mockDataSource);
  });

  setUpAll(() {
    registerFallbackValue(const TransferRequest(recipient: '', points: 0));
  });

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

  final tTransactions = PaginatedTransactions(
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

  group('getBalance', () {
    test(
      'should return Right(PointsBalance) when data source succeeds',
      () async {
        when(
          () => mockDataSource.getBalance(),
        ).thenAnswer((_) async => tBalance);

        final result = await repository.getBalance();

        expect(result, Right(tBalance));
        verify(() => mockDataSource.getBalance());
      },
    );

    test('should return Left(ServerFailure) when data source throws', () async {
      when(
        () => mockDataSource.getBalance(),
      ).thenThrow(Exception('Server error'));

      final result = await repository.getBalance();

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<ServerFailure>()),
        (_) => fail('Should be Left'),
      );
    });
  });

  group('getTransactions', () {
    test(
      'should return Right(PaginatedTransactions) with correct page data',
      () async {
        when(
          () => mockDataSource.getTransactions(
            page: any(named: 'page'),
            limit: any(named: 'limit'),
            type: any(named: 'type'),
          ),
        ).thenAnswer((_) async => tTransactions);

        final result = await repository.getTransactions(page: 1);

        expect(result, Right(tTransactions));
      },
    );

    test('should pass type filter to data source', () async {
      when(
        () => mockDataSource.getTransactions(
          page: any(named: 'page'),
          limit: any(named: 'limit'),
          type: any(named: 'type'),
        ),
      ).thenAnswer((_) async => tTransactions);

      await repository.getTransactions(page: 1, type: TransactionType.EARN);

      verify(
        () => mockDataSource.getTransactions(
          page: 1,
          limit: 5,
          type: TransactionType.EARN,
        ),
      );
    });

    test('should return Left(ServerFailure) when data source throws', () async {
      when(
        () => mockDataSource.getTransactions(
          page: any(named: 'page'),
          limit: any(named: 'limit'),
          type: any(named: 'type'),
        ),
      ).thenThrow(Exception('error'));

      final result = await repository.getTransactions(page: 1);

      expect(result.isLeft(), true);
    });
  });

  group('transferPoints', () {
    const tRequest = TransferRequest(recipient: 'test@test.com', points: 100);
    const tResult = TransferResult(
      transactionId: 'txn_123',
      points: 100,
      newBalance: 15650,
      status: 'COMPLETED',
    );

    test('should return Right(TransferResult) on success', () async {
      when(
        () => mockDataSource.transferPoints(any()),
      ).thenAnswer((_) async => tResult);

      final result = await repository.transferPoints(tRequest);

      expect(result, const Right(tResult));
    });

    test(
      'should return Left(ServerFailure) for insufficient balance',
      () async {
        when(() => mockDataSource.transferPoints(any())).thenThrow(
          WalletException(
            'INSUFFICIENT_BALANCE',
            'You don\'t have enough points',
          ),
        );

        final result = await repository.transferPoints(tRequest);

        expect(result.isLeft(), true);
        result.fold(
          (failure) => expect(failure.message, 'You don\'t have enough points'),
          (_) => fail('Should be Left'),
        );
      },
    );

    test('should return Left(ServerFailure) for recipient not found', () async {
      when(() => mockDataSource.transferPoints(any())).thenThrow(
        WalletException('RECIPIENT_NOT_FOUND', 'Recipient not found'),
      );

      final result = await repository.transferPoints(tRequest);

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure.message, 'Recipient not found'),
        (_) => fail('Should be Left'),
      );
    });
  });
}
