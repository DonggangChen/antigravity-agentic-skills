---
name: refactoring_strategies
router_kit: FullStackKit
description: Safe refactoring process - test-first, incremental changes and safety net.
metadata:
  skillport:
    category: quality
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, refactoring, refactoring strategies, software engineering, standards, testing, utilities, version control, workflow]      - refactoring-patterns
---

# 🛡️ Refactoring Strategies

> Safe refactoring process and incremental changes.

---

## ⏰ Ne Zaman Refactor?

| Sinyal         | Aksiyon        |
| -------------- | -------------- |
| Code Smell     | Refactor et    |
| Before feature | Zemin hazırla  |
| After bug fix  | Kodu iyileştir |

### ❌ Ne Zaman YAPMA
- Deadline çok yakın
- Test coverage düşük
- Sistemi anlamadan

---

## 🔒 Güvenlik Ağı

```typescript
// Önce mevcut davranışı test et
describe('calculateTotal', () => {
  test('single item', () => {
    expect(calculateTotal([{ price: 100, qty: 1 }])).toBe(100);
  });
  
  test('multiple items', () => {
    expect(calculateTotal([
      { price: 100, qty: 2 },
      { price: 50, qty: 1 }
    ])).toBe(250);
  });
  
  test('empty array', () => {
    expect(calculateTotal([])).toBe(0);
  });
});
```

---

## 📊 Incremental Strategy

1. **Test yaz** → Mevcut davranışı belgele
2. **Küçük değişiklik** → Tek bir şeyi değiştir
3. **Test çalıştır** → Hala geçiyor mu?
4. **Commit** → Küçük, atomik commit
5. **Tekrarla**

---

## ✅ Checklist

- [ ] Testler geçiyor
- [ ] Davranış değişmedi
- [ ] Küçük commit'ler
- [ ] Feature ile karıştırma

---

*Refactoring Strategies v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Working Effectively with Legacy Code](https://www.goodreads.com/book/show/44919.Working_Effectively_with_Legacy_Code) & [Refactoring to Patterns](https://www.tindustries.com/refactoring-to-patterns/)

### Phase 1: Safety Net (Test First)
- [ ] **Characterization Tests**: Write tests that verify "what the code does", not "what it should do".
- [ ] **Golden Master**: Take large-scale snapshot tests to guarantee output hasn't changed.
- [ ] **Coverage**: Do not touch the refactoring area without bringing coverage to 100%.

### Phase 2: Strategic Patterns
- [ ] **Strangler Fig**: Instead of changing the old system all at once, "strangle" (surround) it with new features and replace it gradually.
- [ ] **Parallel Change**: Run old and new code in parallel for a while (with Feature Flag), delete the old one when sure.
- [ ] **Branch by Abstraction**: Put an interface (API) layer in between the code, swap the implementation behind it.

### Phase 3: Lifecycle Management
- [ ] **Deprecation**: Mark old APIs as `@deprecated` and log warnings.
- [ ] **Monitoring**: Monitor error rate and latency after refactoring.
- [ ] **Kill Switch**: Provide ability to revert to old code in seconds with Feature Flag.

### Checkpoints
| Phase | Verification                                               |
| ----- | ---------------------------------------------------------- |
| 1     | Does test suite run in under 2 minutes? (Fast feedback).   |
| 2     | Is database schema changing? (Is there a migration plan?). |
| 3     | Was rollback plan tested?                                  |
