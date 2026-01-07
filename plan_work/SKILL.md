---
name: plan_work
router_kit: ManagementKit
description: Guide for planning before coding, repo research, risk analysis and implementation plan creation.
metadata:
  skillport:
    category: planning
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, plan work, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - design
---

# 📋 Plan Work

> Comprehensive planning and research guide before coding.

---

## 📋 Contents

1. [Planning Process](#1-planning-process)
2. [Repo Research](#2-repo-research)
3. [Risk Analysis](#3-risk-analysis)
4. [Implementation Plan](#4-implementation-plan)
5. [Clarifying Questions](#5-clarifying-questions)

---

## 1. Planning Process

### Planning Flow
```
Task Received
    │
    ▼
┌─────────────────────────┐
│  1. Requirements Analysis│
│  (What is requested?)   │
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│  2. Repo Research       │
│  (Current state?)       │
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│  3. Option Analysis     │
│  (Alternatives?)        │
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│  4. Risk Assessment     │
│  (Potential problems?)  │
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│  5. Creating Plan       │
│  (Steps and timeline)   │
└─────────────────────────┘
```

### Planning Checklist
```checklist
- [ ] Are requirements fully understood?
- [ ] Is current code structure examined?
- [ ] Are dependencies determined?
- [ ] Are alternative approaches evaluated?
- [ ] Are risks defined?
- [ ] Is test strategy determined?
```

---

## 2. Repo Research

### Code Structure Analysis
```bash
# Understand directory structure
tree -L 2 src/

# Find relevant files
find . -name "*.ts" | xargs grep -l "searchTerm"

# Check dependencies
cat package.json | jq '.dependencies'
```

### Questions to Ask
| Area             | Questions                                           |
| ---------------- | --------------------------------------------------- |
| **Architecture** | Which pattern is used? (MVC, Clean Architecture?)   |
| **State**        | How is state management? (Redux, Zustand, Context?) |
| **API**          | REST or GraphQL? How is endpoint structure?         |
| **Test**         | What is test framework? Coverage goal?              |
| **Style**        | Is there ESLint/Prettier config?                    |

### Existing Code Patterns
```
# Things to look for while searching:
- Similar features (how implemented?)
- Error handling patterns
- Validation patterns
- Logging conventions
- Naming conventions
```

---

## 3. Risk Analysis

### Risk Categories

| Category        | Example Risks                    | Mitigation         |
| --------------- | -------------------------------- | ------------------ |
| **Technical**   | Performance, scalability         | POC, benchmark     |
| **Dependency**  | Breaking changes, deprecated API | Version pinning    |
| **Time**        | Underestimation                  | Add buffer time    |
| **Scope**       | Feature creep                    | Clear requirements |
| **Integration** | 3rd party API                    | Fallback strategy  |

### Risk Assessment Template
```markdown
## Risk: [Risk Name]

**Probability:** Low / Medium / High
**Impact:** Low / Medium / High
**Description:** ...

**Mitigation:**
1. ...
2. ...

**Contingency Plan:**
If risk occurs: ...
```

---

## 4. Implementation Plan

### Plan Template
```markdown
# Implementation Plan: [Feature Name]

## Summary
Short description

## Scope
### Included:
- ...

### Excluded:
- ...

## Technical Approach
1. Step 1
2. Step 2
3. ...

## File Changes
- `src/components/X.tsx` - New component
- `src/api/Y.ts` - API endpoint

## Dependencies
- Package A (v1.2.3)
- Package B

## Timeline
| Step  | Duration | Description         |
| ----- | -------- | ------------------- |
| Setup | 1h       | Initial setup       |
| Core  | 4h       | Core implementation |
| Test  | 2h       | Unit tests          |

## Test Strategy
- Unit tests: ...
- Integration tests: ...
- Manual QA: ...
```

### Estimation Guidelines
| Complexity | Duration | Example          |
| ---------- | -------- | ---------------- |
| Trivial    | < 1h     | Config change    |
| Small      | 1-4h     | Simple component |
| Medium     | 4-8h     | Feature module   |
| Large      | 1-3 days | New system       |
| XL         | 1+ week  | Major refactor   |

---

## 5. Clarifying Questions

### Questions to Ask
```markdown
## Requirements
- Is user story complete?
- Are edge cases considered?
- Are error states defined?

## Design
- Is there UI/UX mockup?
- Is responsive behavior expected?
- Accessibility requirements?

## Technical
- Is there performance goal?
- Is backward compatibility required?
- Is migration strategy required?

## Timeline
- Is there deadline?
- Is phased delivery possible?
```

### Question Template
```
I have a few questions before starting implementation:

1. [Question 1]
2. [Question 2]
3. [Question 3]

Matches will help us determine the most appropriate approach.
```

---

## 6. AoT Tag Structure

Use this XML structure during planning process:

```xml
<thinking>
  Analyze the task. List requirements.
  Understand fully before coding.
</thinking>

<plan>
  ## Steps
  1. [Research step]
  2. [Design step]
  3. [Implementation step]
  4. [Test step]
</plan>

<reflection>
  Is this plan sufficient?
  Is anything missing?
  Are risks evaluated?
</reflection>
```

---

*Plan Work v2.1 - Enhanced*

## 🔄 Workflow

> **Source:** [RFC Process (IETF inspired)](https://en.wikipedia.org/wiki/Request_for_Comments) & [Design Docs at Google](https://www.industrialempathy.com/posts/design-docs-at-google/)

### Phase 1: Problem Definition (The "Why")
- [ ] **Context**: What is the problem? Why are we solving it now? (Business value).
- [ ] **Requirements**: Clarify Functional (What it will do?) and Non-functional (Speed, Security?) requirements.
- [ ] **Anti-Goals**: What will we *not* do? (Prevent Scope creep).

### Phase 2: Solution Design (The "How")
- [ ] **Alternatives**: Look at at least 2 approaches (Option A vs Option B). Perform trade-off analysis.
- [ ] **Architecture**: Draw High-level diagram (Mermaid). Show data flow.
- [ ] **Data Model**: Design DB schema or API contract changes.

### Phase 3: Revision & Committment
- [ ] **Risk Assessment**: "What is the worst that can happen?" (Rollback plan).
- [ ] **Estimation**: Make forecast based on T-shirt size (S/M/L) or days.
- [ ] **Review**: Share design with team (RFC/Design Doc Review) and get approval.

### Checkpoints
| Phase | Verification                                                     |
| ----- | ---------------------------------------------------------------- |
| 1     | Are Unknowns listed?                                             |
| 2     | Does this solution create technical debt? If yes, is it planned? |
| 3     | Is Security and Privacy impact form filled?                      |
