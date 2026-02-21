import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:loynova_app/core/errors/failure.dart';
import 'package:loynova_app/features/wallet/data/datasources/base_wallet_datasource.dart';
import 'package:loynova_app/features/wallet/domain/enums/transaction_type.dart';
import 'package:loynova_app/features/wallet/domain/models/paginated_transactions/paginated_transactions.dart';
import 'package:loynova_app/features/wallet/domain/models/points_balance/points_balance.dart';
import 'package:loynova_app/features/wallet/domain/models/transfer_request/transfer_request.dart';
import 'package:loynova_app/features/wallet/domain/models/transfer_result/transfer_result.dart';
import 'package:loynova_app/features/wallet/domain/models/wallet_exception/wallet_exception.dart';
import 'package:loynova_app/features/wallet/domain/repositories/base_wallet_repository.dart';

@Injectable(as: BaseWalletRepository)
class WalletRepositoryImpl implements BaseWalletRepository {
  final BaseWalletDataSource dataSource;

  WalletRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, PointsBalance>> getBalance() async {
    try {
      final result = await dataSource.getBalance();
      return Right(result);
    } on WalletException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, PaginatedTransactions>> getTransactions({
    int page = 1,
    int limit = 5,
    TransactionType? type,
  }) async {
    try {
      final result = await dataSource.getTransactions(
        page: page,
        limit: limit,
        type: type,
      );
      return Right(result);
    } on WalletException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TransferResult>> transferPoints(
    TransferRequest request,
  ) async {
    try {
      final result = await dataSource.transferPoints(request);
      return Right(result);
    } on WalletException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
