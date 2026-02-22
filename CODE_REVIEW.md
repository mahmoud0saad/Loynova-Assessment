# Task 4 — Code Review & Performance

---

## Snippet 1: API Service

### Issues Found

**Issue 1 — No `Content-Type` header on POST request**
`client.post(...)` sends a raw body but omits `Content-Type: application/json`.
Many servers will reject or misparse the body, causing silent failures.

**Issue 2 — `transferPoints` ignores the HTTP response**
The method awaits the POST but never checks `response.statusCode` or parses the body.
A 4xx/5xx from the server goes undetected and the caller assumes success.

**Issue 3 — Overly generic exception message**
`throw Exception('Failed to load')` discards the status code and response body,
making debugging impossible and preventing the UI from showing a meaningful error.

**Issue 4 — `getBalance` return type is `Map<String, dynamic>` not a typed model**
Returning raw JSON means callers must parse manually, spreading deserialization
logic across the codebase and bypassing null-safety.

### Fixed Code

```dart
class WalletService {
  final http.Client client;
  WalletService(this.client);

  Future<PointsBalance> getBalance() async {
    final response = await client.get(
      Uri.parse('https://api.shopplus.com/wallet/balance'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return PointsBalance.fromJson(json);
    }

    throw ServerFailure(
      'Failed to load balance (${response.statusCode}): ${response.body}',
      statusCode: response.statusCode,
    );
  }

  Future<TransferResult> transferPoints(
      String recipientId, int points) async {
    final response = await client.post(
      Uri.parse('https://api.shopplus.com/wallet/transfer'),
      headers: {'Content-Type': 'application/json'},      // FIX 1
      body: jsonEncode({'recipientId': recipientId, 'points': points}),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {  // FIX 2
      return TransferResult.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    }

    // Parse domain errors (e.g. INSUFFICIENT_BALANCE)
    try {
      final body = jsonDecode(response.body) as Map<String, dynamic>;
      throw WalletException(
        body['code'] as String? ?? 'UNKNOWN',
        body['message'] as String? ?? 'Transfer failed',
      );
    } catch (_) {
      throw ServerFailure(
        'Transfer failed (${response.statusCode})',    // FIX 3 & 4
        statusCode: response.statusCode,
      );
    }
  }
}
```

---

## Snippet 2: Widget

### Issues Found

**Issue 1 — `WalletApi` instantiated inside `loadData()`**
A new API client is created on every call. There is no dependency injection, making
the code untestable and potentially leaking HTTP connections.

**Issue 2 — Local state & manual `setState` for async data**
Using `bool isLoading` and a raw `List` in `_State` couples UI to data-fetching.
Any navigation away and back loses the data. BLoC/Provider should own this.

**Issue 3 — Missing `const` constructors throughout**
`CircularProgressIndicator()`, `Container(...)`, `BoxShadow(...)`, `Text(...)` —
none use `const`. Flutter cannot skip rebuilding these widgets even when inputs
haven't changed.

**Issue 4 — `EdgeInsets.all(16)` and `BoxDecoration(...)` recreated every build**
These objects are identical every render cycle but allocated as new instances,
increasing garbage-collection pressure on every frame.

**Issue 5 — `CircularProgressIndicator` is not centered**
Rendered directly as the `body` it expands to fill the scaffold without centering.

### Fixed Code

```dart
// Inject the BLoC — don't instantiate API clients inside widgets
class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WalletBloc, WalletState>(
        builder: (context, state) {
          if (state is WalletLoading) {
            return const Center(child: CircularProgressIndicator()); // FIX 3+5
          }
          if (state is WalletLoaded) {
            return ListView.builder(
              itemCount: state.displayedTransactions.length,
              itemBuilder: (context, index) {
                 return Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color:const Colors.white,
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4)],
                  ),
                  child: Text(transactions[index].description),
                );
              },
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
```

---

## Snippet 3: Performance Issue

### Issues Found

**Issue 1 — `ListView` with `.map().toList()` builds all items eagerly**
All widgets are instantiated at once regardless of scroll position.
For large transaction lists this causes jank on first render and wastes memory.
`ListView.builder` (lazy) must be used instead.

**Issue 2 — `Image.network` has no caching**
Each scroll-back triggers a fresh HTTP download of merchant logos.
`CachedNetworkImage` (or `Image.network` with a `cacheWidth`) should be used.

**Issue 3 — `DateFormat` instance created inside `itemBuilder`**
`DateFormat('MMM dd, yyyy')` is allocated for every list item on every build.
It should be a `static final` constant outside the build method.

**Issue 4 — No `const` constructor on `TransactionList`**
The widget's constructor does not carry `const`, so Flutter cannot cache it.

**Issue 5 — `Card` and `ListTile` have no `key`**
Without keys, Flutter may mis-match widgets during reorders/updates, causing
incorrect state association in stateful descendants.

### Fixed Code

```dart
class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  // FIX 4: add const constructor
  const TransactionList({super.key, required this.transactions});

  // FIX 3: static DateFormat to avoid per-item allocation
  static final _dateFmt = DateFormat('MMM dd, yyyy');

  @override
  Widget build(BuildContext context) {
    // FIX 1: ListView.builder for lazy rendering
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final t = transactions[index];
        return Card(
          key: ValueKey(t.id),   // FIX 5
          child: ListTile(
            leading: CachedNetworkImage( // FIX 2
              imageUrl: t.merchantLogo ?? '',
              width: 40,
              height: 40,
              placeholder: (_, __) => const SizedBox(width: 40, height: 40),
              errorWidget: (_, __, ___) =>
                  const Icon(Icons.store_outlined),
            ),
            title: Text(t.description),
            subtitle: Text(_dateFmt.format(t.createdAt)),
          ),
        );
      },
    );
  }
}
```

---

## Snippet 4: State Management

### Issues Found

**Issue 1 — No error handling in `LoadWallet` handler**
`repository.getBalance()` and `getTransactions()` are awaited without a
`try/catch`. A network failure will throw an unhandled exception and crash the app.

**Issue 2 — Sequential `await` instead of parallel `Future.wait`**
Balance and transactions are fetched one after the other, doubling load time
unnecessarily. They are independent requests and should run concurrently.

**Issue 3 — `FilterTransactions` discards original data permanently**
The handler replaces `currentState.transactions` with the filtered subset.
Applying a second filter or clearing the filter is now impossible — the original
data is gone from state.

**Issue 4 — Missing `on<RefreshWallet>` registration**
There is no handler for refresh events, silently dropping user-triggered reloads.

### Fixed Code

```dart
class WalletBloc extends Bloc<WalletEvent, WalletState> {
  final WalletRepository repository;

  WalletBloc(this.repository) : super(const WalletInitial()) {
    on<LoadWallet>(_onLoadWallet);
    on<RefreshWallet>(_onRefreshWallet);        // FIX 4
    on<FilterTransactions>(_onFilterTransactions);
  }

  Future<void> _onLoadWallet(
      LoadWallet event, Emitter<WalletState> emit) async {
    emit(const WalletLoading());
    try {                                       // FIX 1
      // FIX 2: parallel fetch
      final results = await Future.wait([
        repository.getBalance(),
        repository.getTransactions(),
      ]);
      emit(WalletLoaded(
        balance: results[0] as PointsBalance,
        allTransactions: (results[1] as PaginatedTransactions).transactions,
        displayedTransactions:
            (results[1] as PaginatedTransactions).transactions,
      ));
    } on WalletException catch (e) {
      emit(WalletError(e.message));
    } catch (_) {
      emit(const WalletError('Failed to load wallet data.'));
    }
  }

  Future<void> _onRefreshWallet(
      RefreshWallet event, Emitter<WalletState> emit) async {
    // Reuse same logic without emitting WalletLoading (keeps existing UI)
    try {
      final results = await Future.wait([
        repository.getBalance(),
        repository.getTransactions(),
      ]);
      emit(WalletLoaded(
        balance: results[0] as PointsBalance,
        allTransactions: (results[1] as PaginatedTransactions).transactions,
        displayedTransactions:
            (results[1] as PaginatedTransactions).transactions,
      ));
    } catch (_) { /* silent on refresh failure */ }
  }

  void _onFilterTransactions(
      FilterTransactions event, Emitter<WalletState> emit) {
    if (state is! WalletLoaded) return;
    final current = state as WalletLoaded;

    // FIX 3: filter displayedTransactions from allTransactions (never mutate it)
    final filtered = event.type == null
        ? current.allTransactions
        : current.allTransactions
            .where((t) => t.type == event.type)
            .toList();

    emit(current.copyWith(
      displayedTransactions: filtered,
      activeFilter: event.type,
    ));
  }
}
```

---

## Snippet 5: 5 Performance Optimization Techniques for Large Transaction Lists

### 1. `ListView.builder` with lazy loading

**What:** Use `ListView.builder` (or `SliverList.builder`) instead of materializing
the full widget list.

**Why:** `ListView.builder` only builds widgets currently on-screen plus a small
over-scroll buffer. For 1,000 transactions `ListView` creates 1,000 widgets
immediately; `ListView.builder` creates ~15–20. This is the single largest
performance win for long lists.

**When:** Any list with more than 20–30 items should use a builder variant.

---

### 2. `CachedNetworkImage` for merchant logos

**What:** Replace `Image.network` with `CachedNetworkImage` (or Flutter's built-in
`ResizeImage` + `ImageCache`).

**Why:** Without caching, scrolling back to a previously-visited item re-downloads
the image from the network, causing flicker and wasted bandwidth. `CachedNetworkImage`
stores decoded images in memory (and optionally on disk), so re-renders are instant.

**When:** Wherever the same network image appears more than once per session, or in
any scrollable list.

---

### 3. `const` constructors and widget-level memoization

**What:** Mark every widget and its constructor `const` wherever props are
compile-time constants. Use `RepaintBoundary` around expensive sub-trees.

**Why:** `const` widgets are canonicalized by the Dart VM — Flutter skips calling
`build()` entirely for identical `const` subtrees. `RepaintBoundary` isolates
repaints so a balance update does not repaint the full transaction list.

**When:** Decorations, icons, padding, and text widgets whose values never change at
runtime should always be `const`. `RepaintBoundary` is worth adding around cards
that contain `CachedNetworkImage` since image loading triggers repaints.

---

### 4. Static `DateFormat` and `NumberFormat` instances

**What:** Declare formatters as `static final` class-level fields rather than
constructing them inside `build()` or `itemBuilder`.

**Why:** `DateFormat('MMM dd, yyyy')` parses its format string and allocates
locale data on construction. Creating one per list item (×n items ×rebuild
frequency) generates significant GC pressure that manifests as frame drops on
low-end devices.

**When:** Any formatter, regex, or parser used inside a build method.

---

### 5. BLoC granularity and `buildWhen` / `Selector`

**What:** Use `BlocSelector` or `buildWhen` to restrict widget rebuilds to only
the slice of state they actually care about.

**Why:** Without scoping, every `WalletLoaded` emission (even just `isLoadingMore`
toggling) rebuilds the entire screen including every list item. With
`BlocSelector<WalletBloc, WalletState, List<Transaction>>`, the transaction list
rebuilds only when transactions themselves change — not when the balance updates.

**When:** Any widget that reads from a BLoC but only needs one field of the state.
Particularly valuable for the balance card (only re-renders when points change) vs.
the transaction list (re-renders only when the list changes).
