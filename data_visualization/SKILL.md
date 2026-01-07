---
name: data_visualization
router_kit: FullStackKit
description: Generate data visualizations, plots, and charts. Analyzes data structure to select optimal visualization types. supports bar charts, line graphs, and scatter plots for clarity.
allowed-tools: Read, Write, Edit, Grep, Glob, Bash
version: 1.0.0
metadata:
  skillport:
    category: auto-healed
    tags: [big data, charts, cleaning, csv, d3, dashboard, data analysis, data engineering, data science, data visualization, database, etl pipelines, export, import, json, machine learning basics, migration, nosql, numpy, pandas, python data stack, query optimization, recharts, reporting, schema design, sql, statistics, transformation, victory, visualization]
---

## Overview

This skill empowers Claude to transform raw data into compelling visual representations. It leverages intelligent automation to select optimal visualization types and generate informative plots, charts, and graphs. This skill helps users understand complex data more easily.

## How It Works

1. **Data Analysis**: Claude analyzes the provided data to understand its structure, type, and distribution.
2. **Visualization Selection**: Based on the data analysis, Claude selects the most appropriate visualization type (e.g., bar chart, scatter plot, line graph).
3. **Visualization Generation**: Claude generates the visualization using appropriate libraries and best practices for visual clarity and accuracy.

## When to Use This Skill

This skill activates when you need to:
- Create a visual representation of data.
- Generate a specific type of plot, chart, or graph (e.g., "create a bar chart").
- Explore data patterns and relationships through visualization.

## Examples

### Example 1: Visualizing Sales Data

User request: "Create a bar chart showing sales by region."

The skill will:
1. Analyze the sales data, identifying regions and corresponding sales figures.
2. Generate a bar chart with regions on the x-axis and sales on the y-axis.

### Example 2: Plotting Stock Prices

User request: "Plot the stock price of AAPL over the last year."

The skill will:
1. Retrieve historical stock price data for AAPL.
2. Generate a line graph showing the stock price over time.

## Best Practices

- **Specific Requests**: Be specific about the desired visualization type and any relevant data filters.
- **Contextual Information**: Provide context about the data and the purpose of the visualization.

---

*Data Visualization v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Financial Times Visual Vocabulary](https://ft.com/vocabulary)

### Phase 1: Data Profiling
- [ ] **Type Check**: Is data categorical, numerical, or time series?
- [ ] **Volume**: Number of data points (if low Bar, if high Scatter/Line).
- [ ] **Goal**: Is goal comparison (Bar), distribution (Hist), relationship (Scatter) or composition (Pie/Stack)?

### Phase 2: Drafting
- [ ] **Library**: `matplotlib`/`seaborn` for Python, `D3.js`/`Recharts` for Web.
- [ ] **Mapping**: Assign X/Y axes and color codes (hue).
- [ ] **Scale**: Start axes from zero (Except for non-mandatory cases).

### Phase 3: Refinement (Design)
- [ ] **Clutter**: Remove unnecessary gridlines and borders.
- [ ] **Labels**: Label axes and title clearly.
- [ ] **Access**: Use palette suitable for color blind (Test with ColorOracle).

### Checkpoints
| Phase | Verification                                                                  |
| ----- | ----------------------------------------------------------------------------- |
| 1     | Is selected chart type suitable for data type? (e.g. not Bar for Time series) |
| 2     | Is "ink-to-data ratio" high? (No unnecessary decoration)                      |
| 3     | Are axes manipulative? (Truncated Y-axis warning)                             |

## Integration

This skill can be integrated with other data processing and analysis tools within the Claude Code environment. It can receive data from other skills and provide visualizations for further analysis or reporting.