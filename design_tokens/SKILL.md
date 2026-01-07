---
name: design_tokens
router_kit: FullStackKit
description: 8-point grid spacing, typography scale and color system. Basic design variables.
metadata:
  skillport:
    category: design
    tags: [accessibility, api integration, backend, browser apis, client-side, components, css3, debugging, deployment, design tokens, frameworks, frontend, fullstack, html5, javascript, libraries, node.js, npm, performance optimization, responsive design, seo, state management, testing, typescript, ui/ux, web development]      - design-responsive
---

# 🎨 Design Tokens

> Basic design variables: spacing, typography, colors.

---

## 📐 1. Spacing System (8-Point Grid)

### Basic Rule
All spacing should be multiples of 8.

```
4px   - Minimum (micro)
8px   - XS
16px  - SM (between icon-text)
24px  - MD (inside card)
32px  - LG (between components)
48px  - XL (groups inside section)
64px  - 2XL (between sections)
96px  - 3XL (major sections)
128px - 4XL (hero padding)
```

### Padding Structure
| Element           | Padding           |
| ----------------- | ----------------- |
| Card/Container    | 24px or 32px      |
| Button            | 12px / 24px (V/H) |
| Input             | 12px / 16px (V/H) |
| Section (Desktop) | 64px - 96px       |
| Section (Mobile)  | 32px - 48px       |

---

## 🔤 2. Typography Scale

### Font Sizes
```
12px  - Caption / Helper
14px  - Small / Metadata
16px  - Body (Base)
20px  - Lead paragraph
24px  - H4
32px  - H3
40px  - H2
48px  - H1
64px  - Hero
```

### Line Height
| Type             | Ratio     |
| ---------------- | --------- |
| Headings (H1-H3) | 1.2 - 1.3 |
| Body text        | 1.5 - 1.6 |
| Small text       | 1.4       |
| Hero text        | 1.1       |

### Font Weight
```
400 - Regular (Body)
500 - Medium (Subtle emphasis)
600 - Semibold (Subheadings, buttons)
700 - Bold (Headings)
800 - Extra bold (Hero)
```

---

## 🎨 3. Color System

### Contrast Ratios (WCAG)
| Type               | Minimum |
| ------------------ | ------- |
| Normal text        | 4.5:1   |
| Large text (18px+) | 3:1     |
| UI components      | 3:1     |
| AAA ideal          | 7:1     |

### Palette Structure
```
Primary:   50, 100, 200...900, 950 (10 shade)
Secondary: 10 shades
Neutral:   10 shades
Success/Warning/Error/Info: 5 shades
```

### Opacity Scale
```
100% - Default
75%  - Disabled
60%  - Placeholder
40%  - Dividers
20%  - Subtle backgrounds
10%  - Hover overlays
```

---

## 📦 4. Border Radius

```
0px    - Sharp
4px    - Small (buttons)
8px    - Medium (cards) ← Default
16px   - Large (feature cards)
9999px - Full (pills, avatars)
```

---

## 🔄 Workflow

> **Source:** [W3C Design Tokens Format](https://tr.designtokens.org/format/) & [Style Dictionary Best Practices](https://amzn.github.io/style-dictionary/)

### Phase 1: Audit & Token Hierarchy
- [ ] **Color/Type Audit**: Standardize brand colors and typography Scale.
- [ ] **Classification**: Divide Tokens into 3 levels: Primitive (Global), Semantic (Purpose) and Component-specific.
- [ ] **Naming Convention**: Apply `category-type-item-state` (e.g. `action-primary-hover`) format.

### Phase 2: Definition & Tooling
- [ ] **JSON Definition**: Define tokens in a central JSON file.
- [ ] **Multi-Platform Export**: Convert tokens to CSS, JS and Swift/Kotlin formats using `Style Dictionary`.
- [ ] **Theme Variation**: Make semantic mappings for Dark/Light mode.

### Phase 3: Consumption & Maintenance
- [ ] **Implementation**: Replace hardcoded values in code with token variables.
- [ ] **Version Control**: Track token changes via central design library.
- [ ] **Governance**: Audit new color or spacing values for system compliance.

### Checkpoints
| Phase | Verification                                                      |
| ----- | ----------------------------------------------------------------- |
| 1     | Did all colors pass WCAG accessibility (Contrast) test?           |
| 2     | Do token names carry the same meaning for developer and designer? |
| 3     | Is token change automatically updated across all platforms?       |

---
*Design Tokens v1.5 - With Workflow*
