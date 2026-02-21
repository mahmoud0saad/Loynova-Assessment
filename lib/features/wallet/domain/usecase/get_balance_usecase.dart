import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:loynova_app/core/errors/failure.dart';
import 'package:loynova_app/features/wallet/domain/models/points_balance/points_balance.dart';
import 'package:loynova_app/features/wallet/domain/repositories/base_wallet_repository.dart';

@injectable
class GetBalanceUsecase {
  final BaseWalletRepository repository;

  GetBalanceUsecase(this.repository);

  Future<Either<Failure, PointsBalance>> call() async {
    return await repository.getBalance();
  }
}
