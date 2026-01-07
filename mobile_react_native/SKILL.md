---
name: mobile_react_native
router_kit: FullStackKit
description: React Native best practices, hooks, navigation and performance optimization.
metadata:
  skillport:
    category: development
    tags: [accessibility, api integration, backend, browser apis, client-side, components, css3, debugging, deployment, frameworks, frontend, fullstack, html5, javascript, libraries, mobile react native, node.js, npm, performance optimization, responsive design, seo, state management, testing, typescript, ui/ux, web development]      - mobile-flutter
---

# 📱 Mobile React Native

> React Native best practices and performance optimization.

---

## 📁 1. Project Structure

```
src/
├── components/
│   ├── common/        # Reusable
│   └── screens/       # Screen components
├── hooks/             # Custom hooks
├── services/          # API, storage
├── store/             # State (Zustand)
├── navigation/
└── App.tsx
```

---

## ⚡ 2. Performance

```typescript
// FlatList optimization
<FlatList
  data={items}
  keyExtractor={(item) => item.id}
  removeClippedSubviews={true}
  maxToRenderPerBatch={10}
  windowSize={5}
  getItemLayout={(data, index) => ({
    length: ITEM_HEIGHT,
    offset: ITEM_HEIGHT * index,
    index,
  })}
/>

// Memoization
const Component = React.memo(({ data }) => { });
const callback = useCallback(() => {}, [deps]);
const value = useMemo(() => compute(), [deps]);
```

---

## 🔐 3. Secure Storage

```typescript
// ❌ AsyncStorage is not secure
// ✅ Use SecureStore
import * as SecureStore from 'expo-secure-store';

await SecureStore.setItemAsync('token', userToken);
const token = await SecureStore.getItemAsync('token');
```

---

## 🧭 4. Navigation

```typescript
type RootStackParamList = {
  Home: undefined;
  Profile: { userId: string };
};

const Stack = createNativeStackNavigator<RootStackParamList>();
```

---

## 📦 5. State (Zustand)

```typescript
import { create } from 'zustand';
import { persist } from 'zustand/middleware';

const useAuthStore = create(
  persist(
    (set) => ({
      user: null,
      login: (user) => set({ user }),
      logout: () => set({ user: null }),
    }),
    { name: 'auth-storage' }
  )
);
```

---

## 📱 6. Platform-Specific

```typescript
import { Platform } from 'react-native';

const padding = Platform.select({ ios: 20, android: 0 });

// File based: Button.ios.tsx, Button.android.tsx
```

---

*Mobile React Native v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [React Native Performance Guide](https://reactnative.dev/docs/performance) & [Expo Guideline](https://docs.expo.dev/)

### Phase 1: Setup & Architecture
- [ ] **Framework**: Start with Expo (Managed Workflow), use `expo-router` v3.
- [ ] **State**: Separate server/client state using Zustand or TanStack Query.
- [ ] **Styling**: Establish consistent design system with NativeWind (Tailwind) or Restyle.

### Phase 2: Performance Optimization
- [ ] **Lists**: Use `FlashList` (Shopify) instead of `FlatList` (5x performance).
- [ ] **Images**: Add caching and blurhash support with `expo-image`.
- [ ] **Bundle**: Activate `Hermes` engine and analyze bundle size.

### Phase 3: Native Modules & Release
- [ ] **Native**: Write Custom Native Module (Turbo Modules) if needed.
- [ ] **Updates**: Perform OTA (Over-the-Air) updates with `expo-updates` without waiting for store approval.
- [ ] **Profiling**: Check FPS and Memory Leak with Flipper or React DevTools.

### Checkpoints
| Phase | Verification                                                     |
| ----- | ---------------------------------------------------------------- |
| 1     | Does UI thread (JS thread) drop below 60fps?                     |
| 2     | Is application size (APK/IPA) optimized?                         |
| 3     | Are Android and iOS behaviors (Navigation, Keyboard) consistent? |
