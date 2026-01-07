---
name: agents_md
router_kit: AIKit
description: Guide for creating AGENTS.md files, configuring monorepos, and managing agent instructions.
metadata:
  skillport:
    category: development
    tags: [agents, agents md, algorithms, artificial intelligence, automation, chatbots, cognitive services, deep learning, embeddings, frameworks, generative ai, inference, large language models, llm, machine learning, model fine-tuning, natural language processing, neural networks, nlp, openai, prompt engineering, rag, retrieval augmented generation, tools, vector databases, workflow automation]      - conventions
---

# 🤖 AGENTS.md

> Guide for creating agent instruction and convention files.

---

## 📋 What is AGENTS.md?

AGENTS.md is a convention file that ensures AI coding assistants follow project-specific rules.

### Use Cases
- Project specific rules
- Code style conventions
- Directory structure explanations
- Banned patterns
- Recommended approaches

---

## 📁 Root AGENTS.md Template

```markdown
# AGENTS.md

AI assistant rules for this project.

## Project Overview
[Short description of the project]

## Tech Stack
- Framework: Next.js 15
- Language: TypeScript
- Styling: Tailwind CSS
- Database: PostgreSQL

## Directory Structure
\`\`\`
src/
├── app/           # Next.js App Router pages
├── components/    # React components
├── lib/           # Utility functions
├── hooks/         # Custom React hooks
└── types/         # TypeScript types
\`\`\`

## Code Conventions

### Naming
- Components: PascalCase (`UserProfile.tsx`)
- Hooks: camelCase with `use` prefix (`useAuth.ts`)
- Utils: camelCase (`formatDate.ts`)

### Imports
- Absolute imports: `@/components/...`
- Group order: React > External > Internal > Types

## Bans
- ❌ Do not use `any` type
- ❌ `console.log` in production
- ❌ Inline styles

## Preferred
- ✅ Server Components (default)
- ✅ Zod validation
- ✅ Error boundaries
```

---

## 📂 Nested AGENTS.md (Module Based)

### src/components/AGENTS.md
```markdown
# Components Conventions

## Component Structure
\`\`\`tsx
// 1. Imports
// 2. Types
// 3. Component
// 4. Export
\`\`\`

## Props
- Define with Interface
- Use `Props` suffix

## Styling
- Use Tailwind classes
- Merge with `cn()` utility
```

### src/api/AGENTS.md
```markdown
# API Conventions

## Endpoint Structure
- RESTful naming
- Versioning: `/api/v1/`

## Error Handling
- Consistent error response format
- Use correct HTTP status codes
```

---

## 🗺️ Feature Map

```markdown
## Feature: User Authentication

### Paths
- Entry: `src/app/(auth)/login/page.tsx`
- API: `src/app/api/auth/[...nextauth]/route.ts`
- Components: `src/components/auth/`
- Hooks: `src/hooks/useAuth.ts`

### Tests
- Unit: `__tests__/auth/`
- E2E: `e2e/auth.spec.ts`

### Docs
- `docs/auth.md`
```

---

## 🔄 Monorepo Structure

```markdown
# Monorepo AGENTS.md

## Packages
| Package     | Path           | Purpose           |
| ----------- | -------------- | ----------------- |
| @acme/web   | apps/web       | Next.js frontend  |
| @acme/api   | apps/api       | Express backend   |
| @acme/ui    | packages/ui    | Shared components |
| @acme/utils | packages/utils | Shared utilities  |

## Cross-Package Rules
- UI components: Use `@acme/ui`
- Utils: Use `@acme/utils`
- Duplicate code banned
```

---

*AGENTS.md v1.0 - Convention Over Configuration*

## 🔄 Workflow

> **Source:** [AGENTS.md Best Practices](https://agents.md)

### Phase 1: Context Extraction
- [ ] **Read Project Config**: `package.json`, `tsconfig.json`, `.eslintrc`.
- [ ] **Map Directory Structure**: Identify key folders (`src`, `app`, `lib`).
- [ ] **Identify Unwritten Rules**: Look at existing code for naming patterns (PascalCase vs camelCase).

### Phase 2: Root Creation (`/AGENTS.md`)
- [ ] **Project Overview**: One sentence goal description.
- [ ] **Tech Stack**: List core frameworks and libraries.
- [ ] **Architecture**: High-level map of the system.
- [ ] **Conventions**: Explicit naming and coding rules.

### Phase 3: Rule Definitions
- [ ] **Must Haves**: "Always use TypeScript strict mode", "Always use Zod".
- [ ] **Must Nots**: "No `any`", "No `console.log` in prod", "No class components".
- [ ] **Preferred**: "Prefer functional components", "Prefer arrow functions".

### Phase 4: Nested & Maintenance
- [ ] **Sub-modules**: Create specific `AGENTS.md` for `src/components`, `src/api` if complex.
- [ ] **Sync**: Update `AGENTS.md` when adding new tech or changing patterns.

### Checkpoints
| Phase | Verification                              |
| ----- | ----------------------------------------- |
| 1     | Project structure is correctly understood |
| 2     | Root file exists and is readable          |
| 3     | AI does not violate rules (test it)       |
