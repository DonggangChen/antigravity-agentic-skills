---
name: design_components
router_kit: FullStackKit
description: Button, card, input and icon sizing rules. Component sizing standards.
metadata:
  skillport:
    category: design
    tags: [accessibility, api integration, backend, browser apis, client-side, components, css3, debugging, deployment, design components, frameworks, frontend, fullstack, html5, javascript, libraries, node.js, npm, performance optimization, responsive design, seo, state management, testing, typescript, ui/ux, web development]      - design-patterns
---

# 🧩 Design Components

> Component sizing standards.

---

## 🔘 1. Button Sizes

```
Small:   H:32px, P:8px/16px,  Font:14px
Medium:  H:40px, P:12px/24px, Font:16px (Default)
Large:   H:48px, P:14px/32px, Font:18px
XLarge:  H:56px, P:16px/40px, Font:20px
```

### Button States
| State    | Style                          |
| -------- | ------------------------------ |
| Default  | Base                           |
| Hover    | Lighten/Darken 10%, Scale 1.02 |
| Active   | Scale 0.98                     |
| Focus    | Ring outline                   |
| Disabled | Opacity 50%                    |

---

## 📦 2. Card Sizing

### Padding
| Type     | Padding |
| -------- | ------- |
| Compact  | 16px    |
| Default  | 24px    |
| Spacious | 32px    |

### Shadow (Elevation)
```
shadow-sm:  0 1px 3px rgba(0,0,0,0.1)
shadow-md:  0 4px 6px rgba(0,0,0,0.1)
shadow-lg:  0 10px 15px rgba(0,0,0,0.1)
shadow-xl:  0 20px 25px rgba(0,0,0,0.1)
```

---

## 📝 3. Input Fields

```
Height:  40px (default), 48px (large)
Padding: 12px / 16px (V/H)
Border:  1px solid
Radius:  4px or 8px
```

### Input States
| State    | Style                     |
| -------- | ------------------------- |
| Default  | Border: neutral-300       |
| Focus    | Border: primary-500, Ring |
| Error    | Border: error-500         |
| Disabled | Background: neutral-100   |

---

## 🎯 4. Icon Sizes

```
16px - Inline with text
20px - Buttons
24px - Standalone
32px - Feature highlights
48px - Hero sections
```

### Icon + Text Spacing
- Between Icon and text: 8px

---

## 📋 5. Form Layout

```
Label-Input gap:     8px
Input-Input gap:     16px or 24px
Form section gap:    32px
Submit button margin: 24px top
```

---

## 🔄 Workflow

> **Source:** [Atomic Design Methodology](https://atomicdesign.bradfrost.com/) & [Shadcn UI Component Standards](https://ui.shadcn.com/docs/components/button)

### Phase 1: Component Definition & Atomic Audit
- [ ] **Inventory**: Identify recurring elements (Button, Input) in current UI and separate into Atoms.
- [ ] **State Mapping**: Define all states (Default, Hover, Active, Disabled, Loading) for each component.
- [ ] **Accessibility (A11y)**: Audit correctness of Aria-label and role definitions.

### Phase 2: Sizing & Variants Setup
- [ ] **Base Unit Alignment**: Verify all sizes conform to 8-point grid (Design Tokens) system.
- [ ] **Variant Creation**: Setup variant structures using `Tailwind` or `CVA` (Class Variance Authority).
- [ ] **Visual Consistency**: Check if padding and gap values are appropriate for hierarchy.

### Phase 3: Testing & Documentation
- [ ] **Visual Testing**: Test visual integrity of component across different browsers and viewports (Storybook).
- [ ] **Unit Testing**: Write logic tests for interactive components (Dropdown, Modal).
- [ ] **Handoff**: Update documentation (Design-to-Code) for design handover to developer.

### Checkpoints
| Phase | Verification                                       |
| ----- | -------------------------------------------------- |
| 1     | Does component have Single Responsibility?         |
| 2     | Are all variants fed from a central `tokens` file? |
| 3     | Are screen reader tests successful?                |

---
*Design Components v1.5 - With Workflow*
