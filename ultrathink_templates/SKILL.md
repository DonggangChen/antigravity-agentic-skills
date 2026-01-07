---
name: ultrathink_templates
router_kit: FullStackKit
description: UltraThink analysis templates - hypothesis, alternative, decision and risk matrices.
metadata:
  skillport:
    category: thinking
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, ultrathink templates, utilities, version control, workflow]      - ultrathink-core
---

# 📝 UltraThink Templates

> Analysis and decision templates.

---

## 💡 Hypothesis Template

```markdown
### H1: [Hypothesis Name]
- **Description:** [What do we think?]
- **Confidence:** [%]
- **Assumptions:** [Based on what?]
- **Test:** [How do we verify?]
```

---

## ⚖️ Alternative Comparison

| Criteria    | Weight | Approach 1 | Approach 2 |
| ----------- | ------ | ---------- | ---------- |
| Performance | 30%    | ⭐⭐⭐⭐⭐      | ⭐⭐⭐        |
| Complexity  | 20%    | ⭐⭐⭐        | ⭐⭐         |
| Cost        | 25%    | $$         | $          |
| Risk        | 25%    | Low        | Medium     |

---

## 🎯 Final Decision Template

```markdown
## Selected Solution
**Approach:** [Name]
**Confidence:** [%]
**Rationale:** [Why?]

## Risk Matrix
| Risk   | Probability | Impact  | Precaution |
| ------ | ----------- | ------- | ---------- |
| [Risk] | [%]         | [Level] | [Strategy] |

## Action Plan
1. [ ] Step 1
2. [ ] Step 2
```

---

## 🔴 Bias Control

| Bias           | Control Question                 |
| -------------- | -------------------------------- |
| Anchoring      | Is my first idea the best?       |
| Confirmation   | Did I look for counter-evidence? |
| Overconfidence | How can I be mistaken?           |

## 🔄 Workflow

> **Source:** [McKinsey Problem Solving Framework](https://www.mckinsey.com/capabilities/strategy-and-corporate-finance/our-insights/the-seven-steps-of-becoming-a-powerhouse-problem-solver) & [Decision Matrix Best Practices](https://en.wikipedia.org/wiki/Decision_matrix)

### Phase 1: Template Selection
- [ ] **Situation Analysis**: Determine the depth of the current situation (Light/Deep).
- [ ] **Specific Template**: Select suitable template from Hypothesis, Decision, or Risk templates.
- [ ] **Metric Definition**: Define weighted criteria (Web/Performance/Cost) to be used for comparison.

### Phase 2: Data Entry & Scoring
- [ ] **Evidence Gathering**: rely on data (Log, Test, Doc) instead of assumptions when filling the template.
- [ ] **Bias Mitigation**: Check for "Confirmation Bias" while scoring.
- [ ] **Alternative Mapping**: Add at least two realistic alternatives to the template.

### Phase 3: Result Summary & Archive
- [ ] **Final Verdict**: Summarize the "Winner" solution with justifications from the comparison.
- [ ] **Risk Mitigation Plan**: Prepare a precaution plan for weak points of the selected solution.
- [ ] **Artifact Update**: Reflect the result in `task_boundary` or the file to be documented.

### Checkpoints
| Phase | Verification                                                    |
| ----- | --------------------------------------------------------------- |
| 1     | Does the template cover all critical question marks (Unknowns)? |
| 2     | Does the scoring total equal 100% weight?                       |
| 3     | Is the output easily understandable by a third person?          |

---
*UltraThink Templates v1.5 - With Workflow*
