---
name: mobile_flutter
router_kit: FullStackKit
description: Flutter/Dart best practices, Riverpod state management and performance optimization.
metadata:
  skillport:
    category: development
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, mobile flutter, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - mobile-react-native
---

# 🐦 Mobile Flutter

> Flutter/Dart best practices and performance optimization.

---

## 📁 1. Project Structure (Feature-First)

```
lib/
├── core/
│   ├── theme/
│   └── widgets/
├── features/
│   ├── auth/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   └── home/
├── services/
└── main.dart
```

---

## 🧩 2. Widget Best Practices

```dart
// ✅ use const constructor
class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text('Click'));
  }
}

// ✅ mark const widgets
const SizedBox(height: 16),
```

---

## 📦 3. State (Riverpod)

```dart
final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(ref.watch(authRepositoryProvider));
});

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this._repo) : super(const AuthState());
  
  Future<void> login(String email, String password) async {
    state = state.copyWith(isLoading: true);
    final user = await _repo.login(email, password);
    state = state.copyWith(user: user, isLoading: false);
  }
}
```

---

## ⚡ 4. Performance

```dart
// ✅ ListView.builder (lazy loading)
ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) => ItemCard(item: items[index]),
)

// ✅ RepaintBoundary
RepaintBoundary(child: ExpensiveWidget())

// ✅ Isolate for CPU-heavy
final result = await compute(parseUsers, jsonString);
```

---

## 🔐 5. Secure Storage

```dart
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final storage = FlutterSecureStorage();
await storage.write(key: 'token', value: token);
final token = await storage.read(key: 'token');
```

---

## 📱 6. Responsive

```dart
// MediaQuery
final isTablet = MediaQuery.of(context).size.width > 600;

// LayoutBuilder
LayoutBuilder(
  builder: (context, constraints) {
    return constraints.maxWidth > 600 ? WideLayout() : NarrowLayout();
  },
)
```

---

*Mobile Flutter v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Flutter Engineering Best Practices](https://docs.flutter.dev/perf/best-practices) & [Riverpod Architecture](https://riverpod.dev/docs/concepts/about_code_generation)

### Phase 1: Architecture Setup
- [ ] **Layering**: Establish Feature-First structure (Presentation, Domain, Data).
- [ ] **State Management**: Use Riverpod `NotifierProvider` and Code Generation (@riverpod).
- [ ] **Routing**: Configure type-safe navigation and deep linking with GoRouter.

### Phase 2: Implementation
- [ ] **UI**: Minimize rebuilds using `const` constructors.
- [ ] **Network**: Write API layer (Interceptor, Error Handling) with Dio and Retrofit.
- [ ] **Storage**: Use `flutter_secure_storage` for sensitive data, `Isar` or `Hive` for cache.

### Phase 3: Release & Quality
- [ ] **Testing**: Write Unit, Widget and Integration tests (including Golden Tests).
- [ ] **Performance**: Analyze "Jank" with DevTools (Shader compilation warm-up).
- [ ] **CI/CD**: Setup automated build and store upload processes with Fastlane.

### Checkpoints
| Phase | Verification                                                             |
| ----- | ------------------------------------------------------------------------ |
| 1     | Is Business logic completely separated from UI (Widgets)?                |
| 2     | Is App cold start time < 2 seconds?                                      |
| 3     | Does it behave responsively on different screen sizes (Tablet/Foldable)? |
