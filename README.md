# Loynova App – Wallet Feature

## Download App

📥 [Download the Production Android APK (app-release.apk)](releases)

## Architecture

See [ARCHITECTURE.md](ARCHITECTURE.md) for:
- **Task 1.1** — Feature-based project structure diagram
- **Task 1.2** — BLoC state management choice + state flow diagram
- **Task 1.3** — Error handling approach (Either, typed failures, UI layers)


## Code Review

See [CODE_REVIEW.md](CODE_REVIEW.md) for analysis of all 4 code snippets plus the 5 performance
optimization techniques (Snippet 5).

## State Management: BLoC

The Wallet feature uses **BLoC (Business Logic Component)** for state management, consistent with the rest of the application. BLoC was chosen because:

- **Separation of concerns** – UI ↔ business logic is cleanly decoupled via events/states
- **Testability** – Every state transition is deterministic and unit-testable with `bloc_test`
- **Scalability** – Adding new events (e.g., pagination, filtering) is straightforward
- **Existing convention** – The app already uses BLoC for all features

### State Flow Diagram

```
User opens Wallet
       │
       ▼
  ┌──────────┐
  │ WalletBloc│◀── WalletEvent.started()
  │  emits:   │
  │ Loading   │
  └─────┬─────┘
        │
        ▼
  ┌──────────────────┐
  │ getBalance()     │
  │ getTransactions()│
  └──────┬───────────┘
         │
    ┌────┴────┐
    ▼         ▼
 Success    Error
    │         │
    ▼         ▼
 Loaded    Error UI
 (balance,  (retry
  txns)     button)
    │
    │ User taps filter chip
    ▼
  ┌──────────────────┐
  │ filterByType()   │◀── WalletEvent.filterByType(EARN)
  │ emits: Loading   │
  └──────┬───────────┘
         ▼
  Filtered list displays
```

## Mock Approach

Since no live API exists, all data comes from `MockWalletDataSource`:

- **Simulated delays** – 800ms for reads, 1s for writes (mimics network latency)
- **Sample data** – 5 transactions, 3 merchants, balance of 15,750 pts
- **Validation logic** – Throws `WalletException` for:
  - `INSUFFICIENT_BALANCE`: when transfer amount > current balance
  - `RECIPIENT_NOT_FOUND`: when recipient is `notfound@test.com`
- **Pagination** – `getTransactions()` supports `page`, `limit`, and `type` filter

The mock is registered via `@Injectable(as: BaseWalletDataSource)` so when a real API is ready, simply create a new implementation and swap the DI registration.

## Running Tests

```bash
flutter test test/features/wallet/
```

### Test Coverage

| Layer       | File                              | Tests |
|------------|-----------------------------------|-------|
| Repository | `wallet_repository_impl_test.dart` | 7     |
| BLoC       | `wallet_bloc_test.dart`            | 5     |
| BLoC       | `transfer_points_bloc_test.dart`   | 3     |

**Total: 15 tests — all passing** ✅

## Running the App

```bash
flutter run -d chrome    # Web
```

The initial route is set to `/wallet`. Navigate to "Transfer Points" via the FAB button.



