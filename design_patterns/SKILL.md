---
name: design_patterns
router_kit: FullStackKit
description: Visual hierarchy, z-index, shadows, animations and white space rules.
metadata:
  skillport:
    category: design
    tags: [accessibility, api integration, backend, browser apis, client-side, components, css3, debugging, deployment, design patterns, frameworks, frontend, fullstack, html5, javascript, libraries, node.js, npm, performance optimization, responsive design, seo, state management, testing, typescript, ui/ux, web development]      - design-components
---

# 🎭 Design Patterns

> Visual hierarchy, layering and animation rules.

---

## ⚠️ This Skill vs `arch-patterns`

| This Skill         | `arch-patterns`         |
| ------------------ | ----------------------- |
| **UI/UX** design   | **System** architecture |
| Z-index, shadows   | Microservices, CQRS     |
| Animation, spacing | Database selection      |

> **Rule:** UI design → this skill, System design → `arch-patterns`

---

## 📊 1. Visual Hierarchy

### Z-Index Scale
```
-1    - Behind content
0     - Base layer
10    - Dropdown menus
20    - Sticky headers
30    - Modal backdrop
40    - Modal content
50    - Tooltips
100   - Toast notifications
```

### Shadows (Elevation)
```
shadow-xs:  0 1px 2px rgba(0,0,0,0.05)
shadow-sm:  0 1px 3px rgba(0,0,0,0.1)
shadow-md:  0 4px 6px rgba(0,0,0,0.1)
shadow-lg:  0 10px 15px rgba(0,0,0,0.1)
shadow-xl:  0 20px 25px rgba(0,0,0,0.15)
```

---

## ⚡ 2. Animation & Transitions

### Duration Scale
```
75ms   - Instant (very subtle)
150ms  - Fast (hover states)
200ms  - Normal (default)
300ms  - Moderate (dropdown, modal)
500ms  - Slow (page transitions)
```

### Easing Functions
| Easing      | Usage                      |
| ----------- | -------------------------- |
| ease-out    | Most common (hover, click) |
| ease-in-out | Modal, dropdown            |
| ease-in     | Exit animations            |

---

## 📐 3. White Space Rules

### Content Density
| Type     | Spacing              |
| -------- | -------------------- |
| Tight    | 8-12px (data tables) |
| Normal   | 16-24px (default)    |
| Relaxed  | 32-48px (marketing)  |
| Spacious | 64px+ (premium)      |

### Reading Width
- Optimal: 60-75 karakter (600-750px)
- Maximum: 90 karakter
- Minimum: 45 karakter

---

## 🔍 4. Focus States

```css
:focus-visible {
  outline: 2px solid var(--primary-500);
  outline-offset: 2px;
}
```

---

## 🔗 Related Skills
- `design-tokens` - Spacing, typography
- `design-responsive` - Breakpoints, fluid

---

*Design Patterns v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Refactoring UI](https://www.refactoringui.com/) (Visual Hierarchy)

### Phase 1: Foundation (Hierarchy)
- [ ] **Spacing**: Place elements according to `8px` grid system.
- [ ] **Typography**: Define Head/Body ratio (Scale).
- [ ] **Contrast**: Put the most important item (Primary Button) in highest contrast.

### Phase 2: Interaction (Feedback)
- [ ] **States**: Design Hover, Focus, Active, Disabled states.
- [ ] **Motion**: Add micro-animations with 200ms default transition.
- [ ] **Elevation**: Separate layers with `shadow` and `z-index`.

### Phase 3: Validation
- [ ] **A11y**: Are color contrast ratios at AA standard?
- [ ] **Responsiveness**: Are touch targets >44px on mobile?
- [ ] **Consistency**: Do all buttons have the same radius/padding values?

### Checkpoints
| Phase | Verification                                          |
| ----- | ----------------------------------------------------- |
| 1     | Is the Focal Point clear on the page?                 |
| 2     | Is focus ring visible while navigating with keyboard? |
| 3     | Do animations drop performance (FPS)?                 |
