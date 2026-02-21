part of 'transfer_points_bloc.dart';

@freezed
class TransferPointsEvent with _$TransferPointsEvent {
  const factory TransferPointsEvent.started() = _Started;
  const factory TransferPointsEvent.transfer({
    required String recipient,
    required int points,
    String? note,
  }) = _Transfer;
}
