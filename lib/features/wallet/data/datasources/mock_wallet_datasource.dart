import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:loynova_app/features/wallet/data/datasources/base_wallet_datasource.dart';
import 'package:loynova_app/features/wallet/domain/enums/transaction_status.dart';
import 'package:loynova_app/features/wallet/domain/enums/transaction_type.dart';
import 'package:loynova_app/features/wallet/domain/models/merchant_balance/merchant_balance.dart';
import 'package:loynova_app/features/wallet/domain/models/paginated_transactions/paginated_transactions.dart';
import 'package:loynova_app/features/wallet/domain/models/points_balance/points_balance.dart';
import 'package:loynova_app/features/wallet/domain/models/transaction/transaction.dart';
import 'package:loynova_app/features/wallet/domain/models/transfer_request/transfer_request.dart';
import 'package:loynova_app/features/wallet/domain/models/transfer_result/transfer_result.dart';
import 'package:loynova_app/features/wallet/domain/models/wallet_exception/wallet_exception.dart';

@Injectable(as: BaseWalletDataSource)
class MockWalletDataSource implements BaseWalletDataSource {
  final List<Transaction> _transactions = [
    // Page 1 (Current)
    Transaction(
      id: 'txn_001',
      type: TransactionType.EARN,
      points: 500,
      description: 'Purchase at TechMart',
      merchantName: 'TechMart',
      merchantLogo: 'https://picsum.photos/seed/techmart/100',
      createdAt: DateTime.parse('2024-02-15T14:30:00Z'),
      status: TransactionStatus.COMPLETED,
    ),
    Transaction(
      id: 'txn_002',
      type: TransactionType.REDEEM,
      points: -1000,
      description: 'Discount redemption',
      merchantName: 'FoodMart',
      merchantLogo: 'https://picsum.photos/seed/foodmart/100',
      createdAt: DateTime.parse('2024-02-14T11:20:00Z'),
      status: TransactionStatus.COMPLETED,
    ),
    Transaction(
      id: 'txn_003',
      type: TransactionType.TRANSFER_OUT,
      points: -250,
      description: 'Transfer to Ahmed M.',
      createdAt: DateTime.parse('2024-02-13T09:15:00Z'),
      status: TransactionStatus.COMPLETED,
    ),
    Transaction(
      id: 'txn_004',
      type: TransactionType.PURCHASE,
      points: 750,
      description: 'Online order #ORD-2024-089',
      merchantName: 'StyleHub',
      merchantLogo: 'https://picsum.photos/seed/stylehub/100',
      createdAt: DateTime.parse('2024-02-12T16:45:00Z'),
      status: TransactionStatus.COMPLETED,
    ),
    Transaction(
      id: 'txn_005',
      type: TransactionType.TRANSFER_IN,
      points: 300,
      description: 'Received from Sara K.',
      createdAt: DateTime.parse('2024-02-08T13:30:00Z'),
      status: TransactionStatus.PENDING, // Doesn't affect total
    ),

    // Page 2
    Transaction(
      id: 'txn_006',
      type: TransactionType.EARN,
      points: 1200,
      description: 'Weekly grocery shopping',
      merchantName: 'SuperStore',
      merchantLogo: 'https://picsum.photos/seed/superstore/100',
      createdAt: DateTime.parse('2024-02-05T18:10:00Z'),
      status: TransactionStatus.COMPLETED,
    ),
    Transaction(
      id: 'txn_007',
      type: TransactionType.REDEEM,
      points: -500,
      description: 'Coffee Shop Voucher',
      merchantName: 'CafeBrew',
      merchantLogo: 'https://picsum.photos/seed/cafebrew/100',
      createdAt: DateTime.parse('2024-02-04T09:30:00Z'),
      status: TransactionStatus.COMPLETED,
    ),
    Transaction(
      id: 'txn_008',
      type: TransactionType.PURCHASE,
      points: 1500,
      description: 'Electronics Purchase',
      merchantName: 'ElectroWorld',
      merchantLogo: 'https://picsum.photos/seed/electroworld/100',
      createdAt: DateTime.parse('2024-02-01T15:45:00Z'),
      status: TransactionStatus.COMPLETED,
    ),
    Transaction(
      id: 'txn_009',
      type: TransactionType.EARN,
      points: 250,
      description: 'Account Anniversary Bonus',
      createdAt: DateTime.parse('2024-01-28T10:00:00Z'),
      status: TransactionStatus.COMPLETED,
    ),
    Transaction(
      id: 'txn_010',
      type: TransactionType.TRANSFER_OUT,
      points: -100,
      description: 'Gift to brother',
      createdAt: DateTime.parse('2024-01-25T14:20:00Z'),
      status: TransactionStatus.COMPLETED,
    ),

    // Page 3
    Transaction(
      id: 'txn_011',
      type: TransactionType.TRANSFER_IN,
      points: 450,
      description: 'Dinner split from Ali',
      createdAt: DateTime.parse('2024-01-20T21:15:00Z'),
      status: TransactionStatus.COMPLETED,
    ),
    Transaction(
      id: 'txn_012',
      type: TransactionType.EARN,
      points: 800,
      description: 'Monthly gym subscription',
      merchantName: 'FitLife',
      merchantLogo: 'https://picsum.photos/seed/fitlife/100',
      createdAt: DateTime.parse('2024-01-18T08:00:00Z'),
      status: TransactionStatus.COMPLETED,
    ),
    Transaction(
      id: 'txn_013',
      type: TransactionType.REDEEM,
      points: -300,
      description: 'Movie Tickets',
      merchantName: 'CinemaCity',
      merchantLogo: 'https://picsum.photos/seed/cinemacity/100',
      createdAt: DateTime.parse('2024-01-15T19:30:00Z'),
      status: TransactionStatus.COMPLETED,
    ),
    Transaction(
      id: 'txn_014',
      type: TransactionType.PURCHASE,
      points: 2000,
      description: 'Flight Booking',
      merchantName: 'AeroTravel',
      merchantLogo: 'https://picsum.photos/seed/aerotravel/100',
      createdAt: DateTime.parse('2024-01-10T11:45:00Z'),
      status: TransactionStatus.COMPLETED,
    ),
    Transaction(
      id: 'txn_015',
      type: TransactionType.EARN,
      points: 150,
      description: 'Survey Completion Reward',
      createdAt: DateTime.parse('2024-01-05T16:20:00Z'),
      status: TransactionStatus.COMPLETED,
    ),

    // Page 4
    Transaction(
      id: 'txn_016',
      type: TransactionType.TRANSFER_OUT,
      points: -400,
      description: 'Transfer to Mona',
      createdAt: DateTime.parse('2024-01-02T10:10:00Z'),
      status: TransactionStatus.COMPLETED,
    ),
    Transaction(
      id: 'txn_017',
      type: TransactionType.EARN,
      points: 600,
      description: 'Pharmacy Purchase',
      merchantName: 'HealthPlus',
      merchantLogo: 'https://picsum.photos/seed/healthplus/100',
      createdAt: DateTime.parse('2023-12-28T14:30:00Z'),
      status: TransactionStatus.COMPLETED,
    ),
    Transaction(
      id: 'txn_018',
      type: TransactionType.REDEEM,
      points: -200,
      description: 'Bookstore Discount',
      merchantName: 'ReadMore',
      merchantLogo: 'https://picsum.photos/seed/readmore/100',
      createdAt: DateTime.parse('2023-12-25T12:00:00Z'),
      status: TransactionStatus.COMPLETED,
    ),
    Transaction(
      id: 'txn_019',
      type: TransactionType.PURCHASE,
      points: 1000,
      description: 'Winter Clothing',
      merchantName: 'StyleHub',
      merchantLogo: 'https://picsum.photos/seed/stylehub/100',
      createdAt: DateTime.parse('2023-12-20T17:45:00Z'),
      status: TransactionStatus.COMPLETED,
    ),
    Transaction(
      id: 'txn_020', // Initial load balance builder
      type: TransactionType.EARN,
      points: 9200, // Brings total to exactly 15750 when adding previous items
      description: 'Welcome Bonus',
      createdAt: DateTime.parse('2023-12-01T09:00:00Z'),
      status: TransactionStatus.COMPLETED,
    ),
  ];

  int _currentBalance = 15750;

  @override
  Future<PointsBalance> getBalance() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return PointsBalance(
      totalPoints: _currentBalance,
      pendingPoints: 500,
      expiringPoints: 1200,
      expiringDate: DateTime.parse('2024-03-31T23:59:59Z'),
      lastUpdated: DateTime.parse('2024-02-15T10:30:00Z'),
      balancesByMerchant: const [
        MerchantBalance(
          merchantId: 'm_123',
          merchantName: 'TechMart',
          merchantLogo: 'https://picsum.photos/seed/techmart/100',
          points: 8500,
          tier: 'Gold',
        ),
        MerchantBalance(
          merchantId: 'm_456',
          merchantName: 'FoodMart',
          merchantLogo: 'https://picsum.photos/seed/foodmart/100',
          points: 4250,
          tier: 'Silver',
        ),
        MerchantBalance(
          merchantId: 'm_789',
          merchantName: 'StyleHub',
          merchantLogo: 'https://picsum.photos/seed/stylehub/100',
          points: 3000,
          tier: 'Bronze',
        ),
      ],
    );
  }

  @override
  Future<PaginatedTransactions> getTransactions({
    int page = 1,
    int limit = 5,
    TransactionType? type,
  }) async {
    await Future.delayed(const Duration(milliseconds: 800));

    var filtered = _transactions.toList();
    if (type != null) {
      filtered = filtered.where((t) => t.type == type).toList();
    }

    final startIndex = (page - 1) * limit;
    final endIndex = min(startIndex + limit, filtered.length);
    final pageData = startIndex < filtered.length
        ? filtered.sublist(startIndex, endIndex)
        : <Transaction>[];

    return PaginatedTransactions(
      transactions: pageData,
      page: page,
      totalItems: filtered.length,
      hasNext: endIndex < filtered.length,
    );
  }

  @override
  Future<TransferResult> transferPoints(TransferRequest request) async {
    await Future.delayed(const Duration(seconds: 1));

    if (request.points > _currentBalance) {
      throw WalletException(
        'INSUFFICIENT_BALANCE',
        'You don\'t have enough points',
      );
    }
    if (request.recipient == 'notfound@test.com') {
      throw WalletException('RECIPIENT_NOT_FOUND', 'Recipient not found');
    }

    _currentBalance -= request.points;

    _transactions.insert(
      0,
      Transaction(
        id: 'txn_${DateTime.now().millisecondsSinceEpoch}',
        type: TransactionType.TRANSFER_OUT,
        points: -request.points,
        description: 'Transfer to ${request.recipient}',
        createdAt: DateTime.now(),
        status: TransactionStatus.COMPLETED,
      ),
    );

    return TransferResult(
      transactionId: 'txn_${DateTime.now().millisecondsSinceEpoch}',
      points: request.points,
      newBalance: _currentBalance,
      status: 'COMPLETED',
    );
  }
}
