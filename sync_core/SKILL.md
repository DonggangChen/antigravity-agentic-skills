---
name: sync_core
router_kit: FullStackKit
description: Multi-file sync - atomic changes, dependency tracking and conflict resolution.
metadata:
  skillport:
    category: development
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, sync core, testing, utilities, version control, workflow]      - refactoring-patterns
---

# 🔄 Sync Core

> Multi-file synchronization and atomic changes.

---

## 📋 Atomic Change Principle

```markdown
When multiple file changes are required:
1. Plan all changes in advance
2. Make changes sequentially
3. Run build/test at each step
4. Merge in a single commit
```

---

## 🔗 Dependency Tracking

```typescript
// Find affected files before making changes
// follow import/export chain

// file-a.ts
export const API_URL = 'https://api.example.com';

// file-b.ts
import { API_URL } from './file-a';

// Change: API_URL → Update all imports
```

---

## ⚠️ Change Order

```
1. Types/Interfaces (first)
2. Utils/Helpers
3. Services
4. Components (last)
```

---

## ✅ Checklist

- [ ] All files identified
- [ ] Order is correct
- [ ] Test at each step
- [ ] Single commit

## 🔄 Workflow

> **Source:** [Conventional Commits](https://www.conventionalcommits.org/) & [Trunk Based Development - Syncing](https://trunkbaseddevelopment.com/)

### Phase 1: Impact Analysis & Planning
- [ ] **Dependency Mapping**: Map out all dependencies (Import chain) of the file to be changed (e.g. Interface).
- [ ] **Change Set Isolation**: Separate changes into logical groups (Types -> Services -> UI).
- [ ] **Conflict Prediction**: Check if there are other PRs/branches working on the same files.

### Phase 2: Sequential Update & Sync
- [ ] **Core-First Sync**: First update core data structures (Types/Constants) and resolve compilation errors.
- [ ] **Business Logic Update**: Synchronize Services and Controller layers according to new data structures.
- [ ] **UI/Component Alignment**: Complete the cycle by updating Props and View layer.

### Phase 3: Verification & Atomic Commit
- [ ] **Cross-Module Testing**: Verify that all changed modules work compatible with each other via integration tests.
- [ ] **Linter/Build Check**: Ensure there are no build errors or dangling imports in the entire project.
- [ ] **Atomic Submission**: Submit all synchronized changes in a single and meaningful "Conventional Commit" (fix: sync...).

### Checkpoints
| Phase | Verification                                                 |
| ----- | ------------------------------------------------------------ |
| 1     | Do changes contain "Breaking Change"? (Versioning control).  |
| 2     | Does system become "Inconsistent" with a single file change? |
| 3     | Are all import paths (Alias/Relative) updated correctly?     |

---
*Sync Core v1.5 - With Workflow*
