part of 'transfer_points_bloc.dart';

@freezed
abstract class TransferPointsState with _$TransferPointsState {
  const factory TransferPointsState({
    @Default(RequestState.initial) RequestState requestState,
    TransferResult? result,
    String? errorMessage,
  }) = _TransferPointsState;
}
