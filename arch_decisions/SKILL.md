---
name: arch_decisions
router_kit: DevOpsKit
description: ADR template, database selection, capacity planning and scalability.
metadata:
  skillport:
    category: thinking
    tags: [arch decisions, architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - arch-patterns
---

# 📋 Architecture Decisions

> ADR, database selection and capacity planning.

---

## 📝 ADR Template

```markdown
# ADR-001: Database Selection

## Status: Accepted

## Context
[Problem description]

## Decision
We will use PostgreSQL.

## Consequences
### Positive
- ACID compliance
### Negative
- Horizontal scaling difficult

## Alternatives
- MongoDB: Rejected - Not suitable for JOINs
```

---

## 🗄️ Database Selection

| SQL           | NoSQL            |
| ------------- | ---------------- |
| Complex JOINs | Flexible schema  |
| ACID          | High throughput  |
| Transactions  | Horizontal scale |

---

## 📊 Capacity Planning

```markdown
DAU: 1M users
Requests: 20/user/day = 20M/day
RPS: 20M / 86400 = ~230 RPS
Peak: 230 × 3 = ~700 RPS
```

---

*Architecture Decisions v1.0*

## 🔄 Workflow

> **Source:** [AWS Architecture Blog](https://aws.amazon.com/blogs/architecture/master-architecture-decision-records-adrs-best-practices-for-effective-decision-making/)

### Phase 1: Problem Identification
- [ ] **Context**: Define the problem and its impact clearly.
- [ ] **Constraints**: Identify constraints (Budget, Time, Technology).
- [ ] **Options**: Identify at least 2 alternative solutions.

### Phase 2: Proposal (Status: Proposed)
- [ ] **Draft**: Fill out the ADR template.
- [ ] **RFC**: Request team comments (Pull Request or Meeting).
- [ ] **Evaluation**: Score alternatives based on criteria (Pros/Cons).

### Phase 3: Decision (Status: Accepted/Rejected)
- [ ] **Consensus**: Clarify the decision and update status.
- [ ] **Implications**: Write down long-term effects (Consequences).
- [ ] **Commit**: Add ADR file to repo.

### Checkpoints
| Phase | Verification                                |
| ----- | ------------------------------------------- |
| 1     | Are problem and alternatives clear?         |
| 2     | Was team opinion taken?                     |
| 3     | Is "Consequences" section written honestly? |
