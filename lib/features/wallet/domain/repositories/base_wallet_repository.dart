import 'package:dartz/dartz.dart';
import 'package:loynova_app/core/errors/failure.dart';
import 'package:loynova_app/features/wallet/domain/enums/transaction_type.dart';
import 'package:loynova_app/features/wallet/domain/models/paginated_transactions/paginated_transactions.dart';
import 'package:loynova_app/features/wallet/domain/models/points_balance/points_balance.dart';
import 'package:loynova_app/features/wallet/domain/models/transfer_request/transfer_request.dart';
import 'package:loynova_app/features/wallet/domain/models/transfer_result/transfer_result.dart';

abstract class BaseWalletRepository {
  Future<Either<Failure, PointsBalance>> getBalance();

  Future<Either<Failure, PaginatedTransactions>> getTransactions({
    int page = 1,
    int limit = 5,
    TransactionType? type,
  });

  Future<Either<Failure, TransferResult>> transferPoints(
    TransferRequest request,
  );
}
