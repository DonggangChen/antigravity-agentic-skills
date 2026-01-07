---
name: refactoring_patterns
router_kit: FullStackKit
description: Common refactoring patterns - Extract, Rename, Move and code smell solutions.
metadata:
  skillport:
    category: quality
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, refactoring, refactoring patterns, software engineering, standards, testing, utilities, version control, workflow]      - refactoring-strategies
---

# 🔄 Refactoring Patterns

> Common refactoring patterns and code smell solutions.

---

## 🎯 Golden Rule

> **Do NOT change behavior, only improve structure**

```
Before: Input X → [Code A] → Output Y
After:  Input X → [Code B] → Output Y (SAME!)
```

---

## 🔍 Code Smells

| Smell               | Solution         |
| ------------------- | ---------------- |
| Long Method         | Extract Method   |
| Large Class         | Extract Class    |
| Duplicate Code      | Extract + Reuse  |
| Long Parameter List | Parameter Object |
| Feature Envy        | Move Method      |
| Data Clumps         | Extract Class    |

---

## 📦 Extract Method

```typescript
// ❌ Before
function processOrder(order) {
  // 20 lines of validation
  // 30 lines of calculation
  // 15 lines of formatting
}

// ✅ After
function processOrder(order) {
  validateOrder(order);
  const total = calculateTotal(order);
  return formatOutput(total);
}
```

---

## 🔄 Replace Conditional with Polymorphism

```typescript
// ❌ Before
function getPrice(type) {
  if (type === 'premium') return 100;
  if (type === 'basic') return 50;
  return 30;
}

// ✅ After
const pricing = { premium: 100, basic: 50, free: 30 };
const getPrice = (type) => pricing[type] ?? 30;
```

---

*Refactoring Patterns v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Refactoring.guru](https://refactoring.guru/refactoring/techniques) & [Martin Fowler - Refactoring](https://martinfowler.com/books/refactoring.html)

### Phase 1: Preparation (Safety First)
- [ ] **Red-Green-Refactor**: Do you have tests? If not, write tests first ("Characterization Tests"), then refactor.
- [ ] **Small Steps**: Make changes in atomic commits. Run tests after every step.
- [ ] **Backup**: Work on a clean branch in VCS (Git).

### Phase 2: Applying Patterns
- [ ] **Simplification**: Simplify complex conditions with `Decompose Conditional` or `Replace Nested Conditional with Guard Clauses`.
- [ ] **Abstraction**: Separate responsibilities (SRP) with `Extract Method` and `Extract Class`. If there is `Primitive Obsession`, convert to Value Object.
- [ ] **Modernization**: Apply `var` -> `const/let`, `for` -> `map/filter`, Callback -> Async/Await conversions (Use language features).

### Phase 3: Verification & Cleanup
- [ ] **Regression Testing**: Verify that existing functions are not broken.
- [ ] **Dead Code**: Delete unused code (Dead Code) ruthlessly. Do not comment it out, delete it (It's already in Git history).
- [ ] **Naming**: Update variable and function names to describe "why" the code does what it does, not just what it does.

### Checkpoints
| Phase | Verification                                                                                                |
| ----- | ----------------------------------------------------------------------------------------------------------- |
| 1     | Was a new feature added during Refactoring? (ABSOLUTELY NO. Two hats rule: Either Refactor or Add Feature). |
| 2     | Did readability increase? (Did Cognitive Complexity drop?).                                                 |
| 3     | Was test coverage preserved?                                                                                |
