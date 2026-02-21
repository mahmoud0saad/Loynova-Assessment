// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedTransactions _$PaginatedTransactionsFromJson(
  Map<String, dynamic> json,
) => _PaginatedTransactions(
  transactions: (json['transactions'] as List<dynamic>)
      .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
      .toList(),
  page: (json['page'] as num).toInt(),
  totalItems: (json['totalItems'] as num).toInt(),
  hasNext: json['hasNext'] as bool,
);

Map<String, dynamic> _$PaginatedTransactionsToJson(
  _PaginatedTransactions instance,
) => <String, dynamic>{
  'transactions': instance.transactions,
  'page': instance.page,
  'totalItems': instance.totalItems,
  'hasNext': instance.hasNext,
};
