import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_result.freezed.dart';
part 'transfer_result.g.dart';

@freezed
abstract class TransferResult with _$TransferResult {
  const factory TransferResult({
    required String transactionId,
    required int points,
    required int newBalance,
    required String status,
  }) = _TransferResult;

  factory TransferResult.fromJson(Map<String, dynamic> json) =>
      _$TransferResultFromJson(json);
}
