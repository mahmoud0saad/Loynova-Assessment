import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:loynova_app/core/errors/failure.dart';
import 'package:loynova_app/features/wallet/domain/models/transfer_request/transfer_request.dart';
import 'package:loynova_app/features/wallet/domain/models/transfer_result/transfer_result.dart';
import 'package:loynova_app/features/wallet/domain/repositories/base_wallet_repository.dart';

@injectable
class TransferPointsUsecase {
  final BaseWalletRepository repository;

  TransferPointsUsecase(this.repository);

  Future<Either<Failure, TransferResult>> call(TransferRequest request) async {
    return await repository.transferPoints(request);
  }
}
