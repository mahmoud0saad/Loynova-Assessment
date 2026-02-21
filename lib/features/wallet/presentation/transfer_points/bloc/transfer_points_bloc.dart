import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loynova_app/core/enums/request_state.dart';
import 'package:loynova_app/features/wallet/domain/models/transfer_request/transfer_request.dart';
import 'package:loynova_app/features/wallet/domain/models/transfer_result/transfer_result.dart';
import 'package:loynova_app/features/wallet/domain/usecase/transfer_points_usecase.dart';

part 'transfer_points_bloc.freezed.dart';
part 'transfer_points_event.dart';
part 'transfer_points_state.dart';

@injectable
class TransferPointsBloc
    extends Bloc<TransferPointsEvent, TransferPointsState> {
  final TransferPointsUsecase transferPointsUsecase;

  TransferPointsBloc(this.transferPointsUsecase)
    : super(const TransferPointsState()) {
    on<_Transfer>(_onTransfer);
  }

  Future<void> _onTransfer(
    _Transfer event,
    Emitter<TransferPointsState> emit,
  ) async {
    emit(
      state.copyWith(
        requestState: RequestState.loading,
        errorMessage: null,
        result: null,
      ),
    );

    final result = await transferPointsUsecase(
      TransferRequest(
        recipient: event.recipient,
        points: event.points,
        note: event.note,
      ),
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          requestState: RequestState.error,
          errorMessage: failure.message,
        ),
      ),
      (transferResult) => emit(
        state.copyWith(
          requestState: RequestState.success,
          result: transferResult,
        ),
      ),
    );
  }
}
