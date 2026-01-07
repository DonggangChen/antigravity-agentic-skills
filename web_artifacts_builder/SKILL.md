---
name: web_artifacts_builder
router_kit: FullStackKit
description: Guide for creating complex web artifacts with React, Tailwind, shadcn/ui.
metadata:
  skillport:
    category: development
    tags: [accessibility, api integration, backend, browser apis, client-side, components, css3, debugging, deployment, frameworks, frontend, fullstack, html5, javascript, libraries, node.js, npm, performance optimization, responsive design, seo, state management, testing, typescript, ui/ux, web artifacts builder, web development]      - artifacts
---

# 🎨 Web Artifacts Builder

> Guide for complex UI artifacts with React/Tailwind/shadcn.

---

## 📋 When To Use?

| Use                | Don't Use      |
| ------------------ | -------------- |
| Multi-component UI | Simple HTML    |
| State management   | Static content |
| Routing required   | Single page    |
| shadcn components  | Vanilla CSS    |

---

## 🔧 Temel Yapı

```tsx
import React, { useState } from 'react';
import { Button } from '@/components/ui/button';
import { Card } from '@/components/ui/card';

export default function App() {
  const [count, setCount] = useState(0);
  
  return (
    <Card className="p-6">
      <h1 className="text-2xl font-bold">Counter: {count}</h1>
      <Button onClick={() => setCount(c => c + 1)}>
        Increment
      </Button>
    </Card>
  );
}
```

---

## 🎯 shadcn/ui Components

### Commonly Used
```tsx
// Button
<Button variant="default|destructive|outline|secondary|ghost|link">
  Click me
</Button>

// Card
<Card>
  <CardHeader>
    <CardTitle>Title</CardTitle>
    <CardDescription>Description</CardDescription>
  </CardHeader>
  <CardContent>Content</CardContent>
  <CardFooter>Footer</CardFooter>
</Card>

// Input
<Input placeholder="Enter text..." />

// Dialog
<Dialog>
  <DialogTrigger>Open</DialogTrigger>
  <DialogContent>
    <DialogHeader>
      <DialogTitle>Title</DialogTitle>
    </DialogHeader>
  </DialogContent>
</Dialog>
```

---

## 🎨 Tailwind Patterns

### Layout
```tsx
// Centered
<div className="flex items-center justify-center min-h-screen">

// Grid
<div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">

// Stack
<div className="flex flex-col gap-4">
```

### Responsive
```tsx
<div className="
  text-sm md:text-base lg:text-lg
  p-4 md:p-6 lg:p-8
  w-full md:w-1/2 lg:w-1/3
">
```

---

## ⚡ State Patterns

```tsx
// Local state
const [data, setData] = useState([]);

// Form state
const [form, setForm] = useState({
  name: '',
  email: ''
});

// Controlled input
<Input 
  value={form.name}
  onChange={e => setForm({...form, name: e.target.value})}
/>
```

## 🔄 Workflow

> **Source:** [shadcn/ui Documentation](https://ui.shadcn.com/docs) & [Modern React Development Patterns (2025)](https://react.dev/learn)

### Phase 1: Component Definition & Setup
- [ ] **Primitive Selection**: Include necessary basic components from shadcn/ui library (`npx shadcn-ui@latest add ...`) into the project.
- [ ] **Type Mapping**: Ensure type safety by defining Props and state structures with TypeScript interfaces.
- [ ] **Atomic Composition**: Divide large UI structures into smaller, manageable sub-components.

### Phase 2: Styling & Interactions
- [ ] **Tailwind Orchestration**: Configure responsive design and interaction (Hover, Active) states with Tailwind classes.
- [ ] **State Flow**: Manage data flow with `useState` or `useReducer` for complex interactions.
- [ ] **Accessibility (A11y)**: Check keyboard navigation and screen reader compatibility (ARIA tags) of components.

### Phase 3: Polish & Export
- [ ] **Animation & Motion**: Add `framer-motion` or CSS transitions to improve user experience.
- [ ] **Light/Dark Sync**: Verify that colors have correct contrast ratios in both modes.
- [ ] **Performance Audit**: Profile and optimize components to detect unnecessary re-renders.

### Checkpoints
| Phase | Verification                                                                 |
| ----- | ---------------------------------------------------------------------------- |
| 1     | Are components rendered correctly on mobile devices?                         |
| 2     | Are shadcn components consistent with the project's design language (Theme)? |
| 3     | Are side effects managed correctly during state updates?                     |

---
*Web Artifacts Builder v1.5 - With Workflow*
