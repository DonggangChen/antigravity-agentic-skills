---
name: peer_review
router_kit: FullStackKit
description: Academic/technical document review, methodology evaluation. ⚠️ Use for document/research. For code review → code-review.
metadata:
  skillport:
    category: research
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, peer review, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - quality
---

# 📝 Peer Review

> Academic and technical peer review methodology guide.

---

## 📋 Review Framework

### Evaluation Areas
| Area             | Questions                       |
| ---------------- | ------------------------------- |
| **Clarity**      | Is it open and understandable?  |
| **Methodology**  | Is the method appropriate?      |
| **Validity**     | Are results valid?              |
| **Originality**  | Is there original contribution? |
| **Completeness** | Is anything missing?            |

---

## 🔍 Code Review Checklist

```checklist
## Functionality
- [ ] Does code work as expected?
- [ ] Are edge cases handled?
- [ ] Is error handling sufficient?

## Code Quality
- [ ] Is DRY principle applied?
- [ ] Is naming convention consistent?
- [ ] Are comments sufficient?

## Security
- [ ] Is there input validation?
- [ ] Is there SQL injection risk?
- [ ] Is sensitive data protected?

## Performance
- [ ] Is there unnecessary operation?
- [ ] Is there memory leak risk?
```

---

## 📄 Document Review Template

```markdown
## Review Summary
**Document:** [Document Name]
**Reviewer:** [Name]
**Date:** [Date]

## Overall Assessment
[General assessment - 1-2 paragraphs]

## Strengths
1. ...
2. ...

## Areas for Improvement
1. ...
2. ...

## Specific Comments
| Section | Comment | Severity    |
| ------- | ------- | ----------- |
| ...     | ...     | Major/Minor |

## Recommendation
[ ] Accept
[ ] Minor Revisions
[ ] Major Revisions
[ ] Reject
```

---

## 💬 Constructive Feedback

### Good Feedback
```
✅ "This function might error in X condition.
    Can you consider adding Try-catch?"

✅ "Nice implementation! A suggestion:
    It would be more readable if this method is extracted."
```

### To Avoid
```
❌ "This is wrong"
❌ "Why did you do this?"
❌ "I wouldn't do it like this"
```

---

*Peer Review v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Conventional Comments](https://conventionalcomments.org/) & [Google Engineering Practices](https://google.github.io/eng-practices/review/)

### Phase 1: Preparation (Reviewee)
- [ ] **Self-Review**: Read yourself before pushing code, clean unnecessary logs.
- [ ] **Context**: Answer "What?", "Why?" and "How to Test?" questions in PR description.
- [ ] **Scope**: Keep change in manageable size (<400 lines preferably).

### Phase 2: Review Process (Reviewer)
- [ ] **Clarity**: Does code explain what it does? Are variable names descriptive?
- [ ] **Security**: Is user input sanitized? Is there Auth check?
- [ ] **Performance**: Are there unnecessary loops or N+1 queries?
- [ ] **Tone**: Use tags like `nit:`, `suggestion:`, `blocking:` in comments (Conventional Comments). Use "Code" language instead of "You" language.

### Phase 3: Approval & Merge
- [ ] **CI Checks**: Are all tests and lint checks green?
- [ ] **Resolution**: Are all critical comments (blocking) resolved?
- [ ] **Squash & Merge**: Combine commits for history cleanliness.

### Checkpoints
| Phase | Verification                                                   |
| ----- | -------------------------------------------------------------- |
| 1     | Does PR description include screenshot or video (if Frontend)? |
| 2     | Did Reviewer pull code to local and run it (Complex changes)?  |
| 3     | Is Feedback constructive or just critical?                     |
