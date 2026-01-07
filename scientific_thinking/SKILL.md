---
name: scientific_thinking
router_kit: DevOpsKit
description: Scientific method, hypothesis, evidence evaluation, bias analysis. ⚠️ Use for Research/analysis. For architectural decision → ultrathink-core.
metadata:
  skillport:
    category: research
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, refactoring, scientific thinking, software engineering, standards, testing, utilities, version control, workflow]      - analysis
---

# 🔬 Scientific Thinking

> Scientific thinking and critical analysis methodology.

---

## ⚡ Scientific Method (Fast)

```
Observation → Question → Hypothesis → Test → Analysis → Conclusion
```

| Software Equivalent                                                       |
| ------------------------------------------------------------------------- |
| Bug report → "Why?" → "Probably X" → POC/Test → Log analysis → Root cause |

---

## 📝 Hypothesis Template

```markdown
**Hypothesis:** [Clear, testable statement]
**Basis:** [Observations]
**Test:** [How to verify]
**Expected:** [What should happen if true]
```

### İyi Hipotez = TFSM
- **T**estable (Test edilebilir)
- **F**alsifiable (Yanlışlanabilir)
- **S**pecific (Belirli)
- **M**easurable (Ölçülebilir)

---

## ⚖️ Hierarchy of Evidence

```
Strong ←────────────────────→ Weak

Controlled   Observational   Anecdotal    Authority
  Experiment     Study        Example     Opinion
   │            │            │          │
A/B Test    Log/Metrics  "Worked for me" "X said so"
```

---

## 🧠 Bias & Fallacy Checklist

| Bias         | Description                 | Prevention             |
| ------------ | --------------------------- | ---------------------- |
| Confirmation | Seeking supporting evidence | Seek refuting evidence |
| Anchoring    | Fixating on initial info    | Multiple sources       |
| Sunk Cost    | Commitment to investment    | Zero-based thinking    |

| Fallacy             | Example                           |
| ------------------- | --------------------------------- |
| Ad Hominem          | "He is junior, what does he know" |
| False Dichotomy     | "Either A or B"                   |
| Appeal to Authority | "Google does it"                  |

---

## 📊 Decision Matrix

```markdown
| Criteria  | Weight | A   | B   | C   |
| --------- | ------ | --- | --- | --- |
| Cost      | 30%    | 3   | 5   | 4   |
| Duration  | 25%    | 4   | 3   | 5   |
| Risk      | 25%    | 5   | 4   | 3   |
| **Total** |        | X   | Y   | Z   |
```

---

*Scientific Thinking v2.1 - Enhanced*

## 🔄 Workflow

> **Source:** [The Feynman Technique](https://fs.blog/feynman-technique/) & [First Principles Thinking](https://fs.blog/first-principles/)

### Phase 1: Observation & Hypothesis (The "Why")
- [ ] **First Principles**: Reduce the problem to its fundamental truths ("Reasoning by First Principles"). Avoid making analogies.
- [ ] **Null Hypothesis**: Try to refute the assumption "The change I made had no effect" (Null Hypothesis).
- [ ] **Occam’s Razor**: Prioritize the simplest explanation (Parsimony).

### Phase 2: Experiment Design (The "How")
- [ ] **Control Group**: Establish a constant control group or "baseline" for comparison.
- [ ] **Isolation**: Isolate variables. Do not change two parameters at the same time (Ceteris Paribus).
- [ ] **Blind Testing**: Do blind testing if possible to remove observer bias.

### Phase 3: Analysis & Conclusion (The "What")
- [ ] **Statistical Significance**: Question whether the result is due to chance (p-value logic).
- [ ] **Correlation != Causation**: Always remember that correlation does not imply causation.
- [ ] **Peer Review**: Present your findings to someone else (or AI) to play "devil's advocate".

### Checkpoints
| Phase | Verification                                                                                          |
| ----- | ----------------------------------------------------------------------------------------------------- |
| 1     | Is the hypothesis falsifiable? (Will you accept if it turns out to be wrong?).                        |
| 2     | Is the data set large enough? (Law of Large Numbers).                                                 |
| 3     | Is the result reproducible? (Would you get the same result if you did the same experiment tomorrow?). |
