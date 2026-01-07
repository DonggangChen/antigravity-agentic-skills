---
name: debugging_methodology
router_kit: FullStackKit
description: Systematic debugging cycle - reproduce, isolate, hypothesize, fix.
metadata:
  skillport:
    category: quality
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, debugging methodology, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - debugging-tools
---

# 🔍 Debugging Methodology

> Systematic debugging cycle.

---

## 🔄 Debugging Cycle

```
REPRODUCE → UNDERSTAND → ISOLATE → HYPOTHESIZE → TEST → FIX → REFLECT
```

---

## 1️⃣ Reproduce
```markdown
### Reproduction Report
- Error: [Description]
- Steps: 1. ... 2. ... 3. → Error
- Environment: [OS, Node, Browser]
- Reproducibility: [100% / 50% / Rarely]
```

---

## 2️⃣ 5 Whys

```markdown
Problem: Login not working
1. Why? → API returns 401
2. Why? → Token invalid
3. Why? → Token expired
4. Why? → Refresh not working
5. Why? → Endpoint changed
```

---

## 3️⃣ Binary Search (git bisect)

```bash
git bisect start
git bisect bad HEAD
git bisect good v1.0.0
git bisect run npm test
```

---

## 4️⃣ Hypothesis List

| #   | Hypothesis     | Probability | Test        |
| --- | -------------- | ----------- | ----------- |
| 1   | Null pointer   | 40%         | console.log |
| 2   | Race condition | 30%         | add timeout |

---

*Debugging Methodology v1.1 - Enhanced*

## 🔄 Workflow

## 🔄 Workflow

> **Source:** [Scientific Method in Debugging](https://queue.acm.org/detail.cfm?id=1839676)

### Phase 1: Incident Response (Triage)
- [ ] **Log**: Record error message and call stack.
- [ ] **Reproduce**: Reproduce error at least once locally or in test environment.
- [ ] **Environment**: Check version differences (Prod vs Dev).

### Phase 2: Root Cause Analysis (RCA)
- [ ] **Bisection**: Find the commit where the issue started (`git bisect`).
- [ ] **Isolation**: Isolate the error by breaking down the system (Write Unit Test).
- [ ] **Hypothesis**: List most probable causes and eliminate with Binary Search.

### Phase 3: Resolution & Prevention
- [ ] **Fix**: Write code that solves the problem with minimal intervention.
- [ ] **Verify**: Test both the fix and regression (side effects).
- [ ] **Post-Mortem**: Answer "Why did it happen?" and "How to prevent it?".

### Checkpoints
| Phase | Verification                                                              |
| ----- | ------------------------------------------------------------------------- |
| 1     | Was "It works on my machine" trap avoided? (Environment difference check) |
| 2     | Was test written while fixing? (TDD)                                      |
| 3     | Was a scan performed for similar errors elsewhere?                        |
