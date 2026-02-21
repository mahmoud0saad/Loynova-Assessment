import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loynova_app/features/wallet/domain/models/transaction/transaction.dart';

part 'paginated_transactions.freezed.dart';
part 'paginated_transactions.g.dart';

@freezed
abstract class PaginatedTransactions with _$PaginatedTransactions {
  const factory PaginatedTransactions({
    required List<Transaction> transactions,
    required int page,
    required int totalItems,
    required bool hasNext,
  }) = _PaginatedTransactions;

  factory PaginatedTransactions.fromJson(Map<String, dynamic> json) =>
      _$PaginatedTransactionsFromJson(json);
}
