---
name: arch_patterns
router_kit: FullStackKit
description: Architecture patterns - monolith vs microservices, layered, event-driven, CQRS.
metadata:
  skillport:
    category: thinking
    tags: [arch patterns, architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - arch-decisions
---

# 🏗️ Architecture Patterns

> System architecture patterns.

---

## ⚠️ This Skill vs `design-patterns`

| This Skill              | `design-patterns`  |
| ----------------------- | ------------------ |
| **System** architecture | **UI/UX** design   |
| Microservices, CQRS     | Z-index, shadows   |
| Database, scaling       | Animation, spacing |

> **Rule:** Backend/system → this skill, Frontend/UI → `design-patterns`

---

## ⚖️ Monolith vs Microservices

| Aspect     | Monolith   | Microservices |
| ---------- | ---------- | ------------- |
| Complexity | Low        | High          |
| Scaling    | Entire app | Service based |
| Team Size  | Small      | Large         |

**Choose:**
- Monolith: Small team, MVP, fast iteration
- Microservices: Large team, independent deploy

---

## 📚 Layered Architecture

```
Presentation → Application → Domain → Infrastructure
```

---

## ⚡ Event-Driven

```
Producer → Event Broker → Consumer
           (Kafka/SQS)
```

---

## 📊 CQRS

```
Command Service → Write DB
                    ↓ Events
Query Service ← Read DB
```

---

## 🧩 Modular Monolith

```
Modules separated by boundaries within a single deployable unit.
Good for: Teams growing from startup to scale-up phase.
Prevents "Distributed Monolith" chaos.
```

---

*Architecture Patterns v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Software Architecture Guide](https://martinfowler.com/architecture/)

### Phase 1: Requirements Analysis
- [ ] **Functional**: What will it do? (E-commerce, Blog, IoT)
- [ ] **Non-Functional**: Scalability, Latency, Consistency need.
- [ ] **Constraints**: Team size, budget, timeline.

### Phase 2: Complexity Assesment
- [ ] **Domain Complexity**: If complex -> DDD + Layered/Hexagonal.
- [ ] **Scale Complexity**: High traffic -> Event-Driven / Microservices.
- [ ] **Data Complexity**: If reporting is heavy -> CQRS.

### Phase 3: Pattern Selection
- [ ] **Default**: Start with Modular Monolith.
- [ ] **Scale-out**: Separate modules that need independent scaling (Microservices).
- [ ] **Real-time**: Add Event-Driven.

### Checkpoints
| Phase | Verification                                             |
| ----- | -------------------------------------------------------- |
| 1     | Requirements are clear (NFRs defined)                    |
| 2     | Selected pattern fits the problem (not Over-engineering) |
| 3     | Team can manage this architecture                        |
