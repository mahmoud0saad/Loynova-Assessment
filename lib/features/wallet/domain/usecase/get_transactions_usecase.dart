import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:loynova_app/core/errors/failure.dart';
import 'package:loynova_app/features/wallet/domain/enums/transaction_type.dart';
import 'package:loynova_app/features/wallet/domain/models/paginated_transactions/paginated_transactions.dart';
import 'package:loynova_app/features/wallet/domain/repositories/base_wallet_repository.dart';

@injectable
class GetTransactionsUsecase {
  final BaseWalletRepository repository;

  GetTransactionsUsecase(this.repository);

  Future<Either<Failure, PaginatedTransactions>> call({
    int page = 1,
    int limit = 5,
    TransactionType? type,
  }) async {
    return await repository.getTransactions(
      page: page,
      limit: limit,
      type: type,
    );
  }
}
