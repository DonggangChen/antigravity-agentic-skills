---
name: opportunity_scorer
router_kit: FullStackKit
description: Opportunity scoring, scoring rubric and go/no-go decision making guide.
metadata:
  skillport:
    category: business
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, opportunity scorer, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - prioritization
---

# 📊 Opportunity Scorer

> Opportunity scoring and decision making guide.

---

## 📋 Scoring Framework

### Criteria (0-10)
| Criteria    | Weight | Description               |
| ----------- | ------ | ------------------------- |
| Market Size | 20%    | TAM/SAM size              |
| Fit         | 25%    | Capability/strategy fit   |
| Competition | 15%    | Competition intensity     |
| Effort      | 20%    | Implementation difficulty |
| Timeline    | 10%    | Time frame                |
| Risk        | 10%    | Risk level                |

---

## 🔧 Scoring Template

```markdown
## Opportunity: [Name]

| Criteria    | Score (0-10) | Weight | Weighted |
| ----------- | ------------ | ------ | -------- |
| Market Size | 8            | 20%    | 1.6      |
| Fit         | 9            | 25%    | 2.25     |
| Competition | 6            | 15%    | 0.9      |
| Effort      | 7            | 20%    | 1.4      |
| Timeline    | 8            | 10%    | 0.8      |
| Risk        | 7            | 10%    | 0.7      |
| **TOTAL**   |              |        | **7.65** |
```

---

## 🎯 Decision Thresholds

| Score   | Recommendation | Action        |
| ------- | -------------- | ------------- |
| 8.0+    | STRONG GO      | Prioritize    |
| 6.5-7.9 | GO             | Proceed       |
| 5.0-6.4 | CONDITIONAL    | More research |
| <5.0    | NO GO          | Pass          |

---

## 📊 Comparison Matrix

| Opportunity | Score | Rank | Decision    |
| ----------- | ----- | ---- | ----------- |
| Opp A       | 8.2   | 1    | STRONG GO   |
| Opp B       | 7.1   | 2    | GO          |
| Opp C       | 5.8   | 3    | CONDITIONAL |
| Opp D       | 4.2   | 4    | NO GO       |

---

*Opportunity Scorer v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [RICE Scoring Model](https://www.productplan.com/glossary/rice-scoring-model/) & [Weighted Decision Matrix](https://www.atlassian.com/team-playbook/plays/decision-matrix)

### Phase 1: Criteria Definition
- [ ] **Factors**: Revise evaluation criteria (Market, Effort, Risk) specifically for the project.
- [ ] **Weighting**: Determine the weight of each criterion (Totaling 100%). Adjust according to strategic goals.
- [ ] **Scale**: Define a clear scoring scale between 1-10 or 1-5 (e.g., 10 = Immediate, 1 = Never).

### Phase 2: Scoring Process
- [ ] **Data Gathering**: Score based on "data", not "guesses" (Market report, technical feasibility).
- [ ] **Consensus**: Perform scoring not alone, but with a team from different disciplines (Tech, Biz, Design).
- [ ] **Normalization**: Calculate total score and discuss anomalies (Outliers).

### Phase 3: Decision
- [ ] **Threshold Check**: Compare score with threshold values (Go/No-Go).
- [ ] **Sensitivity Analysis**: Analyze "If Effort increases by 10%, does the decision change?".
- [ ] **Document**: Record the decision and rationale (like Architectural Decision Record).

### Checkpoints
| Phase | Verification                                                                    |
| ----- | ------------------------------------------------------------------------------- |
| 1     | Do all stakeholders agree on criteria weights?                                  |
| 2     | Is the highest scoring opportunity aligned with the company's current strategy? |
| 3     | Was a constraint with veto power (Showstopper) overlooked?                      |
