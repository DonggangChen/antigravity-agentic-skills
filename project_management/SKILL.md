---
name: project_management
router_kit: ManagementKit
version: 1.0.0
type: knowledge
description: This skill should be used when creating or updating PROJECT.md files, planning sprints, defining project goals, or managing project scope. It provides templates and best practices for PROJECT.md-first development.
keywords: project.md, milestone, sprint, roadmap, planning, goals, scope, constraints, project management, okr, smart goals
auto_activate: true
allowed-tools: [Read, Write, Edit, Grep, Glob]
metadata:
  skillport:
    category: auto-healed
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - project_management
---

# Project Management Skill

PROJECT.md-first project management, goal setting, scope definition, and sprint planning.

## When This Skill Activates


- Creating or updating PROJECT.md files
- Defining project goals and scope
- Planning sprints or milestones
- Validating alignment with goals
- Project roadmap creation
- Keywords: "project.md", "goals", "scope", "sprint", "milestone", "roadmap"


---

## Core Concepts

### Overview

This skill provides comprehensive guidance on project management. For detailed patterns and implementation examples, see the documentation files in `docs/`.

**Key Topics**:
- Detailed methodologies and best practices
- Implementation patterns and examples
- Common pitfalls and anti-patterns
- Cross-references to related skills

**See**: Documentation files in `docs/` directory for complete details


---

## Quick Reference

| Topic            | Details                    |
| ---------------- | -------------------------- |
| Detailed Guide 1 | `docs/detailed-guide-1.md` |
| Detailed Guide 2 | `docs/detailed-guide-2.md` |
| Detailed Guide 3 | `docs/detailed-guide-3.md` |

---

## Progressive Disclosure

This skill uses progressive disclosure to prevent context bloat:

- **Index** (this file): High-level concepts and quick reference (<500 lines)
- **Detailed docs**: `docs/*.md` files with implementation details (loaded on-demand)

**Available Documentation**:
- `docs/detailed-guide-1.md` - Detailed implementation guide
- `docs/detailed-guide-2.md` - Detailed implementation guide
- `docs/detailed-guide-3.md` - Detailed implementation guide

---

## Cross-References

**Related Skills**:
- See PROJECT.md for complete skill dependencies

**Related Tools**:
- See documentation files for tool-specific guidance


---

## Key Takeaways

1. Research existing patterns before implementing
2. Follow established best practices
3. Refer to detailed documentation for implementation specifics
*Project Management v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Linear Method](https://linear.app/method) & [Shape Up (Basecamp)](https://basecamp.com/shapeup)

### Phase 1: Planning (Cycle & Scope)
- [ ] **PROJECT.md**: The "Single Source of Truth" file for the project. Goals, scope and "Non-Goals" (What won't be done) are clarified here.
- [ ] **Cycle Planning**: Instead of 2-week Sprints, plan delivery-focused "Cycles" (with Cool-down period).
- [ ] **Appetite**: Use "How much time do we want to spend on this?" (Betting) approach instead of "How long will this take?".

### Phase 2: Executive (Async-First)
- [ ] **Daily Updates**: Use asynchronous daily check-ins (Standup bot or text) instead of meetings.
- [ ] **Issue Triage**: Move incoming bug/feature requests from "Inbox" (Triage) to appropriate status (Backlog/Icebox/Next Cycle) immediately.
- [ ] **Decision Log**: Record critical decisions (ADR - Architecture Decision Records) in writing, do not leave them verbal.

### Phase 3: Review & Retrospective
- [ ] **Demo**: Demo working software at the end of Cycle (via deployed link).
- [ ] **Retro**: Take actions focused on "How can we improve the process?" instead of "What went well?", "What went wrong?".
- [ ] **Cleanup**: Archive completed tasks, do not carry over remaining tasks to next Cycle (re-evaluate).

### Checkpoints
| Phase | Verification                                              |
| ----- | --------------------------------------------------------- |
| 1     | Is PROJECT.md up to date? (Synchronized with code?)       |
| 2     | Did "Blocked" tasks wait for more than 24 hours?          |
| 3     | Is Cycle Time (Start -> Finish) within targeted duration? |

