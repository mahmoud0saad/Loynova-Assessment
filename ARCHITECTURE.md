# Task 1 — Architecture Overview

---

## 1.1 Project Structure

The project follows a **feature-based** layout, where each feature is a self-contained vertical slice encapsulating its own data, domain, and presentation layers. This maximises cohesion and minimises accidental coupling between unrelated features.

```
lib/
├── core/                        # Cross-feature infrastructure
│   ├── di/                      # Dependency injection (get_it + injectable)
│   ├── errors/                  # Typed failures (ServerFailure, etc.)
│   ├── enums/                   # Shared enums (RequestState)
│   ├── network/                 # HTTP client setup (for future real API)
│   ├── router/                  # GoRouter configuration
│   ├── theme/                   # Design tokens, colours, typography
│   └── storage/                 # Local persistence helpers
│
├── features/
│   ├── _shared/                 # Cross-feature blocs (locale, config)
│   └── wallet/                  # Wallet feature (self-contained)
│       ├── data/
│       │   ├── datasources/     # BaseWalletDataSource + MockWalletDataSource
│       │   └── repositories/    # WalletRepositoryImpl (wraps datasource)
│       ├── domain/
│       │   ├── models/          # Immutable Freezed models (JSON-serialisable)
│       │   ├── enums/           # TransactionType, TransactionStatus
│       │   ├── repositories/    # Abstract WalletRepository interface
│       │   └── usecase/         # GetBalanceUsecase, GetTransactionsUsecase,
│       │                        #   TransferPointsUsecase
│       └── presentation/
│           ├── wallet_screen/
│           │   ├── bloc/        # WalletBloc, WalletEvent, WalletState
│           │   ├── widgets/     # BalanceCard, TransactionTile, FilterChips…
│           │   └── wallet_screen.dart
│           └── transfer_points/
│               ├── bloc/        # TransferPointsBloc, …Event, …State
│               ├── widgets/     # TransferInputs, TransferSuccessDialog
│               └── transfer_points_screen.dart
│
└── main.dart
```

**Why feature-based?**
A layer-based structure (all models in one place, all blocs in another) causes navigation friction as a feature grows. Feature-based keeps related files together, makes it easy to delete or extract a feature, and scales cleanly when multiple teams work in parallel.

---

## 1.2 State Management — BLoC

**Choice:** `flutter_bloc` (BLoC pattern)

**Justification:**
- **Explicit state machine** — every transition is a named event → named state, making flows easy to reason about and test without a running widget tree.
- **Testability** — `bloc_test` lets us assert exact state sequences for any event sequence without a Flutter widget context.
- **Granular rebuilds** — `BlocBuilder` with `buildWhen`, `BlocSelector`, and `listenWhen` prevent unnecessary widget rebuilds (e.g. the balance card re-renders only when `balance` changes, not on every `transactionsState` update).
- **Scalability** — Adding events (pagination `loadMore`, `filterByType`) is additive and never changes existing handlers.
- **App convention** — The rest of the app already uses BLoC, so no new mental model is introduced.

### State Flow Diagram

```
User opens Wallet
      │
      ▼
  WalletEvent.started()
      │
      ▼
 ┌────────────────────────────────────────────────────────┐
 │ WalletBloc                                             │
 │                                                        │
 │  emit WalletState(                                     │
 │    balanceState: loading,                              │
 │    transactionsState: loading,                         │
 │  )                                                     │
 │                                                        │
 │  Future.wait([getBalance(), getTransactions(page:1)])  │
 │          ┌─────────────────┐                           │
 │       success            error                         │
 └──────────┼─────────────────┼───────────────────────────┘
            │                 │
            ▼                 ▼
  WalletState(            WalletState(
    balanceState:           balanceState: error,
      success,              errorMessage: '…',
    transactionsState:    )  ──► ErrorView + Retry button
      success,
    balance: …,
    transactions: […],
  )
            │
            │  User taps a filter chip
            ▼
  WalletEvent.filterByType(type: EARN)
            │
            ▼
  WalletState(
    transactionsState: loading,
    selectedType: EARN,
  )
            │
     getTransactions(type: EARN, page: 1)
            │
            ▼
  WalletState(
    transactionsState: success,
    selectedType: EARN,
    transactions: [/* EARN only */],
  )
            │
            │  User scrolls near bottom
            ▼
  WalletEvent.loadMore()   ──►  append next page to transactions
            │
            │  User pulls to refresh
            ▼
  WalletEvent.refresh()    ──►  re-runs getBalance + getTransactions(page:1)
```

---

## 1.3 Error Handling Approach

Errors are modelled as **typed failures** using the functional `Either<Failure, T>` type from `dartz`, following a three-layer strategy:

| Layer | Responsibility |
|-------|---------------|
| **DataSource** | Throws domain-specific exceptions (`WalletException`) or raw `Exception` for network issues |
| **Repository** | Catches all exceptions and maps them to `Left(ServerFailure(message))`, so the domain layer never sees `try/catch` |
| **BLoC** | Receives `Either` and emits typed error states; does not do any try/catch itself |
| **UI** | Reads error state and renders the right widget — `ErrorView` with a retry button for full-screen failures, `SnackBar` for inline action failures (transfer) |

**Error categories:**

- **Network failure** → `ServerFailure` with a generic "Something went wrong" message + retry button
- **API / domain error** (e.g. `INSUFFICIENT_BALANCE`, `RECIPIENT_NOT_FOUND`) → `ServerFailure` with the server's human-readable `message` shown directly in the UI
- **Form validation error** → handled entirely in the UI layer via `Form` + `TextFormField` validators; never reaches the BLoC
- **Unknown error** → caught by a final `catch(_)` guard and mapped to a generic `ServerFailure`

This keeps the UI free of business logic and makes every failure path independently unit-testable.
