---
name: market_analyst
router_kit: FullStackKit
description: Market analysis, TAM/SAM/SOM calculation, competitive analysis and customer segmentation guide.
metadata:
  skillport:
    category: research
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, market analyst, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - competition
---

# 📊 Market Analyst

> Market analysis and opportunity sizing guide.

---

## 📈 TAM/SAM/SOM

### Definitions
| Metric  | Description                    |
| ------- | ------------------------------ |
| **TAM** | Total Addressable Market       |
| **SAM** | Serviceable Addressable Market |
| **SOM** | Serviceable Obtainable Market  |

### Calculation
```
TAM = Total number of customers × Average revenue

SAM = TAM × (Addressable segment %)

SOM = SAM × (Market share target %)
```

### Example
```
TAM: 10M companies × $1000/year = $10B
SAM: $10B × 20% (SMB segment) = $2B
SOM: $2B × 2% (Year 1 target) = $40M
```

---

## 🔍 Competitive Analysis

### Competitor Matrix
| Feature  | Us    | Competitor A | Competitor B |
| -------- | ----- | ------------ | ------------ |
| Price    | $$    | $$$          | $            |
| Features | ⭐⭐⭐⭐  | ⭐⭐⭐⭐⭐        | ⭐⭐⭐          |
| UX       | ⭐⭐⭐⭐⭐ | ⭐⭐⭐          | ⭐⭐⭐⭐         |
| Support  | ⭐⭐⭐⭐  | ⭐⭐⭐          | ⭐⭐           |

### SWOT Analysis
```
         Helpful          Harmful
       ┌─────────────┬─────────────┐
Internal│ STRENGTHS   │ WEAKNESSES  │
       │ • Fast dev  │ • Small team│
       │ • UX focus  │ • No brand  │
       ├─────────────┼─────────────┤
External│ OPPORTUNITIES│ THREATS     │
       │ • Growing   │ • Big players│
       │   market    │ • Regulation │
       └─────────────┴─────────────┘
```

---

## 👥 Customer Segmentation

### Segment Criteria
| Criteria      | Description         |
| ------------- | ------------------- |
| Demographic   | Age, gender, income |
| Geographic    | Location, region    |
| Psychographic | Values, lifestyle   |
| Behavioral    | Usage, loyalty      |

### B2B Segmentation
| Segment    | Company Size | Budget | Sales Cycle |
| ---------- | ------------ | ------ | ----------- |
| Enterprise | 1000+        | $$$$   | 6-12 months |
| Mid-Market | 100-999      | $$$    | 3-6 months  |
| SMB        | 10-99        | $$     | 1-3 months  |
| Startup    | <10          | $      | <1 month    |

---

## 📋 Market Research Template

```markdown
## Market Overview
- Industry: [Industry]
- Market Size: [TAM]
- Growth Rate: [CAGR %]

## Target Segments
1. Primary: [Segment A]
2. Secondary: [Segment B]

## Competitive Landscape
- Market leader: [Company]
- Key differentiators: [...]

## Trends
1. [Trend 1]
2. [Trend 2]

## Opportunities
1. [Opportunity 1]
2. [Opportunity 2]
```

---

*Market Analyst v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [SaaS Metrics Guide](https://www.chartmogul.com/metrics/) & [YCombinator Startup Library](https://www.ycombinator.com/library)

### Phase 1: Market Validation
- [ ] **Problem/Solution Fit**: Distinguish between "Nice to have" vs "Must have".
- [ ] **Interviews**: Interview 10 potential customers (Apply "Mom Test").
- [ ] **Waitlist**: Collect demand with landing page (Target > %5 Conversion Rate).

### Phase 2: Unit Economics
- [ ] **CAC**: Calculate Customer Acquisition Cost (Paid + Organic).
- [ ] **LTV**: Estimate Customer Lifetime Value (LTV:CAC should be > 3:1).
- [ ] **Churn**: Compare monthly churn rate with sector benchmarks.

### Phase 3: GTM Strategy
- [ ] **Channel**: Find the most efficient channel (SEO, Ads, Sales, Viral).
- [ ] **Positioning**: Clarify "We are Z company doing Y for X" (Value Proposition) claim.

### Checkpoints
| Phase | Verification                                                        |
| ----- | ------------------------------------------------------------------- |
| 1     | Are people ready to pay for the product?                            |
| 2     | Is growth profitable (Unit Economics positive)?                     |
| 3     | What is our "Unfair Advantage" differentiating us from competitors? |
