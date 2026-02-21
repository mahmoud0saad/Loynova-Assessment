import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:loynova_app/core/enums/request_state.dart';
import 'package:loynova_app/core/errors/failure.dart';
import 'package:loynova_app/features/wallet/domain/models/transfer_request/transfer_request.dart';
import 'package:loynova_app/features/wallet/domain/models/transfer_result/transfer_result.dart';
import 'package:loynova_app/features/wallet/domain/usecase/transfer_points_usecase.dart';
import 'package:loynova_app/features/wallet/presentation/transfer_points/bloc/transfer_points_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockTransferPointsUsecase extends Mock implements TransferPointsUsecase {}

void main() {
  late TransferPointsBloc bloc;
  late MockTransferPointsUsecase mockUsecase;

  setUp(() {
    mockUsecase = MockTransferPointsUsecase();
    bloc = TransferPointsBloc(mockUsecase);
  });

  tearDown(() => bloc.close());

  setUpAll(() {
    registerFallbackValue(const TransferRequest(recipient: '', points: 0));
  });

  const tResult = TransferResult(
    transactionId: 'txn_123',
    points: 100,
    newBalance: 15650,
    status: 'COMPLETED',
  );

  blocTest<TransferPointsBloc, TransferPointsState>(
    'emits [loading, success] when transfer succeeds',
    build: () {
      when(
        () => mockUsecase(any()),
      ).thenAnswer((_) async => const Right(tResult));
      return bloc;
    },
    act: (bloc) => bloc.add(
      const TransferPointsEvent.transfer(
        recipient: 'user@test.com',
        points: 100,
      ),
    ),
    expect: () => [
      const TransferPointsState(requestState: RequestState.loading),
      const TransferPointsState(
        requestState: RequestState.success,
        result: tResult,
      ),
    ],
  );

  blocTest<TransferPointsBloc, TransferPointsState>(
    'emits [loading, error] for insufficient balance',
    build: () {
      when(() => mockUsecase(any())).thenAnswer(
        (_) async =>
            const Left(ServerFailure(message: 'You don\'t have enough points')),
      );
      return bloc;
    },
    act: (bloc) => bloc.add(
      const TransferPointsEvent.transfer(
        recipient: 'user@test.com',
        points: 99999,
      ),
    ),
    expect: () => [
      const TransferPointsState(requestState: RequestState.loading),
      const TransferPointsState(
        requestState: RequestState.error,
        errorMessage: 'You don\'t have enough points',
      ),
    ],
  );

  blocTest<TransferPointsBloc, TransferPointsState>(
    'emits [loading, error] for recipient not found',
    build: () {
      when(() => mockUsecase(any())).thenAnswer(
        (_) async => const Left(ServerFailure(message: 'Recipient not found')),
      );
      return bloc;
    },
    act: (bloc) => bloc.add(
      const TransferPointsEvent.transfer(
        recipient: 'notfound@test.com',
        points: 100,
      ),
    ),
    expect: () => [
      const TransferPointsState(requestState: RequestState.loading),
      const TransferPointsState(
        requestState: RequestState.error,
        errorMessage: 'Recipient not found',
      ),
    ],
  );
}
