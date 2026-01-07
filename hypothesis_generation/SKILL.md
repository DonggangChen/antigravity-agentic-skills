---
name: hypothesis_generation
router_kit: FullStackKit
description: Scientific hypothesis generation, experiment design and test methodology guide.
metadata:
  skillport:
    category: research
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, hypothesis generation, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]
---

# 🔬 Hypothesis Generation

> Scientific hypothesis generation and test methodology guide.

---

## 📋 Hypothesis Structure

### Format
```
IF [independent variable/action]
THEN [dependent variable/outcome]
BECAUSE [mechanism/reasoning]
```

### Example
```
IF we reduce checkout steps from 5 to 3
THEN conversion rate will increase by 15%
BECAUSE fewer steps reduce friction and drop-off
```

---

## 🎯 Hypothesis Criteria

| Criteria        | Description                |
| --------------- | -------------------------- |
| **Specific**    | Clear and unambiguous      |
| **Measurable**  | Measurable outcome         |
| **Testable**    | Testable                   |
| **Falsifiable** | Falsifiable                |
| **Relevant**    | Aligned with business goal |

---

## 🔧 Hypothesis Types

### A/B Test Hypothesis
```markdown
**Hypothesis:** Changing CTA button from blue to green 
will increase click rate by 10%

**Metric:** CTA Click Rate
**Baseline:** 2.5%
**Target:** 2.75%
**Sample Size:** 10,000 users
**Duration:** 2 weeks
```

### Product Hypothesis
```markdown
**Problem:** Users abandon during onboarding
**Hypothesis:** Adding progress indicator will reduce 
abandonment by 20%
**Success Metric:** Onboarding completion rate
```

---

## 📊 Experiment Design

### Test Plan
```markdown
## Experiment: [Name]

### Hypothesis
[IF-THEN-BECAUSE statement]

### Variables
- Independent: [What we change]
- Dependent: [What we measure]
- Control: [What stays same]

### Metrics
- Primary: [Main KPI]
- Secondary: [Supporting metrics]
- Guardrail: [Safety metrics]

### Design
- Type: A/B / Multivariate
- Split: 50/50
- Duration: [X] weeks

### Analysis Plan
- Statistical test: [t-test, chi-square, etc.]
- Confidence level: 95%
- MDE: [Minimum detectable effect]
```

---

## 📝 Prioritization (ICE)

| Hypothesis | Impact | Confidence | Ease | Score |
| ---------- | ------ | ---------- | ---- | ----- |
| H1         | 8      | 7          | 6    | 7.0   |
| H2         | 9      | 5          | 4    | 6.0   |
| H3         | 6      | 8          | 9    | 7.7   |

```
ICE Score = (Impact + Confidence + Ease) / 3
```

---

*Hypothesis Generation v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Stanford d.school Design Thinking](https://dschool.stanford.edu/resources)

### Phase 1: Observation
- [ ] **Data**: Capture an "Insight" from analytics data or user interviews.
- [ ] **Problem**: Convert observation into a clear problem statement.

### Phase 2: Construction
- [ ] **Formula**: Use IF [action] THEN [outcome] BECAUSE [reason] template.
- [ ] **Variables**: Clarify independent (changing) and dependent (measured) variables.

### Phase 3: Prioritization
- [ ] **ICE Score**: Score Impact, Confidence, Ease from 1-10.
- [ ] **Risk**: What do we lose if the test fails?

### Checkpoints
| Phase | Verification                                                           |
| ----- | ---------------------------------------------------------------------- |
| 1     | Is the hypothesis falsifiable? (If always true, it's not a hypothesis) |
| 2     | Is the result a measurable metric (Click rate, Retention)?             |
| 3     | Is the "Because" part based on a logical user behavior?                |
