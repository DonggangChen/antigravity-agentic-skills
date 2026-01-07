---
name: quality_validator
router_kit: FullStackKit
description: Ship öncesi son kontrol, deliverable validation, compliance. ⚠️ Son kalite kontrolü için kullan. Kod inceleme için → code-review.
metadata:
  skillport:
    category: quality
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, quality validator, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - standards
---

# ✅ Quality Validator

> Quality standard and deliverable validation guide.

---

## 📋 Validation Checklist

### Documentation
```checklist
- [ ] All required sections present
- [ ] No placeholder content
- [ ] Links working
- [ ] Images loading
- [ ] Spelling/grammar checked
```

### Code
```checklist
- [ ] Linting passes
- [ ] Tests passing
- [ ] No console.log
- [ ] No TODO/FIXME
- [ ] Types complete
```

### Design
```checklist
- [ ] Responsive
- [ ] Accessible (WCAG)
- [ ] Consistent styling
- [ ] Cross-browser tested
```

---

## 🔧 Quality Scores

| Score  | Level      | Action        |
| ------ | ---------- | ------------- |
| 90-100 | Excellent  | Ship          |
| 80-89  | Good       | Minor fixes   |
| 70-79  | Acceptable | Review needed |
| <70    | Poor       | Major rework  |

---

## 📊 Validation Report

```markdown
# Quality Validation Report

**Item:** [Name]
**Date:** [Date]
**Validator:** [Name]

## Summary
- **Overall Score:** [X]/100
- **Status:** Pass | Fail | Conditional

## Checklist Results
| Category      | Pass | Fail | N/A |
| ------------- | ---- | ---- | --- |
| Documentation | 8    | 2    | 0   |
| Code          | 12   | 1    | 2   |
| Design        | 5    | 0    | 1   |

## Issues Found
| ID  | Severity | Description | Status |
| --- | -------- | ----------- | ------ |
| 1   | High     | [Issue]     | Open   |
| 2   | Low      | [Issue]     | Fixed  |

## Recommendations
1. [Recommendation 1]
2. [Recommendation 2]
```

---

*Quality Validator v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [SonarQube Clean Code](https://www.sonarsource.com/clean-code/) & [Google Engineering Practices](https://github.com/google/eng-practices)

### Phase 1: Static Analysis & Automation
- [ ] **Linter/Formatter**: Do not just check "are there errors", check strictness of configuration (`eslintrc`, `tsconfig`).
- [ ] **Dependency Audit**: Block packages with security vulnerabilities using `npm audit` or `pip audit` (Pipeline blocking).
- [ ] **Complexity**: Reject functions with high Cyclomatic Complexity (e.g., >15).

### Phase 2: Runtime Quality
- [ ] **Test Coverage**: Verify that "Branch Coverage" is above 80%, not just line count.
- [ ] **Performance**: Check for unnecessary re-renders (React) or N+1 queries (Backend) in critical paths.
- [ ] **Error Handling**: Confirm that error states (Error Boundary, Try-Catch) are tested, not just the happy path.

### Phase 3: Deliverable & Compliance
- [ ] **Docs**: Is README up to date? Are API changes compatible with Swagger/OpenAPI?
- [ ] **License**: Check license compatibility of 3rd party libraries (Is GPL used in Proprietary project?).
- [ ] **Release Notes**: Verify that user-facing changes (Changelog) are understandable.

### Checkpoints
| Phase | Verification                                                                           |
| ----- | -------------------------------------------------------------------------------------- |
| 1     | Is CI pipeline configured to fail even on "warning" status (treat warnings as errors)? |
| 2     | Is "Works on my machine" issue eliminated? (Dockerized test run).                      |
| 3     | Is security scan (SAST) clean?                                                         |
