---
name: report_generator
router_kit: FullStackKit
description: Guide to creating executive reports, stakeholder presentations and comprehensive documentation.
metadata:
  skillport:
    category: business
    tags: [big data, cleaning, csv, data analysis, data engineering, data science, database, etl pipelines, export, import, json, machine learning basics, migration, nosql, numpy, pandas, python data stack, query optimization, report generator, reporting, schema design, sql, statistics, transformation, visualization]      - presentation
---

# 📄 Report Generator

> Executive report and documentation guide.

---

## 📋 Report Types

| Type              | Target Audience | Length     |
| ----------------- | --------------- | ---------- |
| Executive Summary | C-level         | 1-2 pages  |
| Technical Report  | Engineers       | 5-10 pages |
| Project Status    | Stakeholders    | 1-3 pages  |
| Analysis Report   | Decision makers | 3-5 pages  |

---

## 🔧 Executive Report Template

```markdown
# [Report Title]

**Date:** [Date]
**Author:** [Name]
**Status:** Draft | Final

---

## Executive Summary
[2-3 paragraf - key points only]

## Background
[Why this report was written]

## Key Findings
1. **Finding 1**: [Summary]
2. **Finding 2**: [Summary]
3. **Finding 3**: [Summary]

## Recommendations
| #   | Recommendation | Priority | Timeline |
| --- | -------------- | -------- | -------- |
| 1   | [Action]       | High     | Q1       |
| 2   | [Action]       | Medium   | Q2       |

## Next Steps
1. [Step 1]
2. [Step 2]

## Appendix
[Detailed data, charts]
```

---

## 📊 Visual Elements

### Data Presentation
```
Use charts for:
- Trends → Line chart
- Comparisons → Bar chart
- Parts of whole → Pie chart
- Relationships → Scatter plot
```

### Status Indicators
- 🟢 On track / Positive
- 🟡 At risk / Neutral
- 🔴 Off track / Negative

---

## 🎯 Writing Tips

| Do                 | Don't                 |
| ------------------ | --------------------- |
| Lead with insights | Bury key points       |
| Use bullet points  | Write long paragraphs |
| Include visuals    | Text-only walls       |
| Action-oriented    | Passive voice         |
| Specific numbers   | Vague statements      |

---

*Report Generator v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Pandas Reporting](https://pandas.pydata.org/docs/user_guide/style.html) & [WeasyPrint Docs](https://doc.courtbouillon.org/weasyprint/)

### Phase 1: Data Preparation (Automated)
- [ ] **Validation**: Pass incoming data (CSV/JSON/SQL) through schema check using Pydantic or Pandera.
- [ ] **Aggregation**: Summarize detailed data (Raw Data) (Pivot Table, GroupBy). Never print million rows to report.
- [ ] **Anonymization**: Mask or hash sensitive data (PII).

### Phase 2: Generation Architecture
- [ ] **Template Engine**: Separate logic and presentation using Jinja2 (Python) or Handlebars (JS).
- [ ] **Format Agnostic**: Generate content as Markdown or HTML, then convert to PDF/Excel (Single Source).
- [ ] **Styling**: Manage page structure (@page), header/footer using CSS (Print CSS).

### Phase 3: Delivery & Feedback
- [ ] **Compression**: Compress output files (PDF/HTML).
- [ ] **Distribution**: Send report automatically to email, Slack or S3 bucket.
- [ ] **Actionable**: Add "Executive Summary" and "Action Items" to the beginning of the report.

### Checkpoints
| Phase | Verification                                                                  |
| ----- | ----------------------------------------------------------------------------- |
| 1     | Is report generation time acceptable? (Is Async Job used?).                   |
| 2     | Is it readable on mobile devices? (Responsive Design for HTML reports).       |
| 3     | Is data up to date? (Does report date and Data fetch time appear in report?). |
