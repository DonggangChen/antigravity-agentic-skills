---
name: code_review
router_kit: FullStackKit
description: PR review, code smell detection, best practice check. ⚠️ Use while reviewing code. For deliverable check → quality-validator, for doc review → peer-review.
metadata:
  skillport:
    category: quality
    tags: [architecture, automation, best practices, clean code, code review, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - code-smell
---

# 🔍 Code Review

> Effective code review and quality control guide.

---

## 📋 Table of Contents

1. [Review Checklist](#1-review-checklist)
2. [Code Smell Detection](#2-code-smell-detection)
3. [PR Best Practices](#3-pr-best-practices)
4. [Review Comments](#4-review-comments)

---

## 1. Review Checklist

### Functionality
```checklist
- [ ] Does the code do the requested work?
- [ ] Are edge cases handled?
- [ ] Is error handling sufficient?
- [ ] Is there input validation?
```

### Code Quality
```checklist
- [ ] Is DRY principle applied?
- [ ] Is Single Responsibility followed?
- [ ] Are naming conventions consistent?
- [ ] Are there no magic numbers/strings?
```

### Security
```checklist
- [ ] Is there SQL injection risk?
- [ ] Is there XSS risk?
- [ ] Is sensitive data exposed?
- [ ] Is authentication/authorization correct?
```

### Performance
```checklist
- [ ] Is there N+1 query problem?
- [ ] Are there unnecessary re-renders?
- [ ] Is there memory leak risk?
- [ ] Is large file/data handling correct?
```

---

## 2. Code Smell Detection

### Common Code Smells

| Smell                   | Description                | Solution              |
| ----------------------- | -------------------------- | --------------------- |
| **Long Method**         | >20 lines function         | Extract Method        |
| **Large Class**         | >300 lines class           | Extract Class         |
| **Long Parameter List** | >3 parameters              | Parameter Object      |
| **Duplicate Code**      | Repeating blocks           | Extract Method/Class  |
| **Dead Code**           | Unused code                | Delete                |
| **Magic Numbers**       | Values without description | Constants             |
| **Deep Nesting**        | >3 levels if/loop          | Early return, Extract |
| **God Class**           | Class doing everything     | Single Responsibility |

### Detection Commands
```bash
# ESLint complexity check
npx eslint . --rule 'complexity: ["error", 10]'

# SonarQube
sonar-scanner

# Code coverage
npm run test:coverage
```

---

## 3. PR Best Practices

### Ideal PR Size
- **Small**: <200 lines (ideal)
- **Medium**: 200-400 lines
- **Large**: >400 lines (should be split)

### PR Description Template
```markdown
## Summary
Short description

## Change Type
- [ ] Bug fix
- [ ] New feature
- [ ] Refactoring
- [ ] Breaking change

## Test
- Test X completed
- Test Y result: successful

## Screenshots (If UI change exists)
```

### Commit Messages
```
feat: Add user authentication
fix: Resolve memory leak in cache
refactor: Extract validation logic
docs: Update API documentation
test: Add unit tests for user service
chore: Update dependencies
```

---

## 4. Review Comments

### Effective Comment Writing
```
❌ Bad: "This is wrong"
✅ Good: "This approach might fail in case X. Can you consider alternative Y?"

❌ Bad: "Change this"
✅ Good: "suggestion: If this function is extracted, readability increases"
```

### Comment Prefixes
| Prefix        | Meaning                     |
| ------------- | --------------------------- |
| `blocking:`   | Cannot merge, must be fixed |
| `suggestion:` | Suggestion, optional        |
| `question:`   | Clarification needed        |
| `nitpick:`    | Minor, unimportant          |
| `praise:`     | Good job!                   |

---

*Code Review v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Google Engineering Practices](https://google.github.io/eng-practices/review/reviewer/)

### Phase 1: Triage (Pre-check)
- [ ] **CI Checks**: Did tests pass? Are there lint errors?
- [ ] **Scope**: Is PR too large? (If >400 lines ask to split).
- [ ] **Description**: Are "What" and "Why" explained clearly?

### Phase 2: Deep Dive
- [ ] **Logic**: Is the algorithm correct and efficient?
- [ ] **Architecture**: Does it follow existing architecture patterns?
- [ ] **Test**: Are tests written for new features?

### Phase 3: Feedback
- [ ] **Comments**: Write constructive, kind and clear comments (`suggestion:`, `question:`).
- [ ] **Decision**: Approve, Request Changes or Comment.

### Checkpoints
| Phase | Verification                                         |
| ----- | ---------------------------------------------------- |
| 1     | Was PR rejected if description is empty?             |
| 2     | Was versioning considered if breaking change exists? |
| 3     | Are comments directed at code, not person?           |
