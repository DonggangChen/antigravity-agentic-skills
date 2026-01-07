---
name: user_research
router_kit: ManagementKit
description: User research methods, interview techniques, persona creation and usability testing guide.
metadata:
  skillport:
    category: research
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, user research, utilities, version control, workflow]      - persona
---

# 👥 User Research

> User research and UX methodologies guide.

---

## 📋 Research Methods

| Method             | When              | Output             |
| ------------------ | ----------------- | ------------------ |
| **User Interview** | Discovery phase   | Insights, quotes   |
| **Survey**         | Broad audience    | Statistics         |
| **Usability Test** | Prototype/product | Task success rate  |
| **Card Sorting**   | IA design         | Category structure |
| **A/B Testing**    | Optimization      | Conversion data    |

---

## 🎤 User Interview

### Interview Guide Template
```markdown
## Intro (5 min)
- Introduce yourself
- Explain research purpose
- Get consent

## Warm-up (5 min)
- General questions
- Ice breaking

## Core Questions (30 min)
1. [Main question 1]
2. [Main question 2]
3. ...

## Wrap-up (5 min)
- Is there anything you'd like to add?
- Thank you
```

### Question Types
| Type           | Example                              | Purpose    |
| -------------- | ------------------------------------ | ---------- |
| **Open-ended** | "Tell me about your last experience" | Story      |
| **Follow-up**  | "Why did you feel that way?"         | Depth      |
| **Comparison** | "Compare X with Y"                   | Preference |
| **Scenario**   | "What would you do if...?"           | Behavior   |

### Things to Avoid
- ❌ Leading questions
- ❌ Yes/no questions
- ❌ Multiple questions at once
- ❌ Jargon usage

---

## 👤 Persona Creation

### Persona Template
```markdown
## [Persona Name]
![Avatar]

**Demographics**
- Age: 
- Profession:
- Location:
- Education:

**Goals**
1. ...
2. ...

**Pain Points**
1. ...
2. ...

**Behaviors**
- Tech usage:
- Shopping habits:

**Quote**
> "..."

**Scenario**
[Typical day/usage scenario]
```

---

## 🗺️ Journey Mapping

### Journey Map Template
```
Stage:     Awareness → Consideration → Purchase → Use → Loyalty

Actions:   [What user is doing]

Thoughts:  [What thinking]

Emotions:  😊 → 😐 → 😟 → 😊 → 😍

Pain:      [Problems]

Opp:       [Opportunities]
```

---

## 🧪 Usability Testing

### Test Plan
```markdown
## Objectives
- [Target 1]
- [Target 2]

## Participants
- Count: 5-8
- Criteria: ...

## Tasks
1. [Task 1] - Success criteria: ...
2. [Task 2] - Success criteria: ...

## Metrics
- Task success rate
- Time on task
- Error rate
- SUS score
```

### Think Aloud Protocol
> "Please narrate aloud what you see on the screen and what you are thinking"

## 🔄 Workflow

> **Source:** [Nielsen Norman Group - UX Research Methods](https://www.nngroup.com/articles/which-ux-research-methods/) & [The UX Research Field Guide](https://www.userinterviews.com/ux-research-field-guide)

### Phase 1: Research Planning & Alignment
- [ ] **Objective Clarification**: Define the question the research needs to answer (e.g., "Why do users drop off at the payment page?").
- [ ] **Method Selection**: Determine quantitative (Survey) or qualitative (Interview) methods based on the goal.
- [ ] **Participant Recruitment**: Organize 5-8 participants representing the target user audience (Persona).

### Phase 2: Execution & Data Gathering
- [ ] **Conducting Sessions**: Conduct interview or usability test sessions with "Think Aloud" protocol.
- [ ] **Documentation**: Create raw data set by recording sessions or taking detailed notes.
- [ ] **Bias Management**: Use neutral language to avoid "Confirmation Bias".

### Phase 3: Analysis & Reporting
- [ ] **Thematic Analysis**: Identify common issues and patterns in the data.
- [ ] **Insights Extraction**: Produce actionable recommendations answering "Why?" rather than just findings.
- [ ] **Artifact Update**: Reflect research results in Persona document or Journey Map.

### Checkpoints
| Phase | Verification                                                     |
| ----- | ---------------------------------------------------------------- |
| 1     | Are research questions specific enough?                          |
| 2     | Do participants accurately reflect the Target Audience?          |
| 3     | Does the report offer solution suggestions or just contain data? |

---
*User Research v1.5 - With Workflow*
