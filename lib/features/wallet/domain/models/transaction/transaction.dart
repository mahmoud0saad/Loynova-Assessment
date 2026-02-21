import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loynova_app/features/wallet/domain/enums/transaction_status.dart';
import 'package:loynova_app/features/wallet/domain/enums/transaction_type.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
abstract class Transaction with _$Transaction {
  const factory Transaction({
    required String id,
    required TransactionType type,
    required int points,
    required String description,
    String? merchantName,
    String? merchantLogo,
    required DateTime createdAt,
    required TransactionStatus status,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
