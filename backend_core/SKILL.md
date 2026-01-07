---
name: backend_core
router_kit: FullStackKit
description: Node.js/TypeScript core principles, project structure, and TypeScript strict mode rules.
metadata:
  skillport:
    category: development
    tags: [accessibility, api integration, backend, backend core, browser apis, client-side, components, css3, debugging, deployment, frameworks, frontend, fullstack, html5, javascript, libraries, node.js, npm, performance optimization, responsive design, seo, state management, testing, typescript, ui/ux, web development]      - backend-database
---

# 🔧 Backend Core

> Node.js/TypeScript core principles and project structure.

---

## 📋 1. Scope

| Area      | Technology               |
| --------- | ------------------------ |
| Runtime   | Node.js 20+ (LTS)        |
| Language  | TypeScript (Strict)      |
| Framework | NestJS, Fastify, Express |

---

## ⚙️ 2. TypeScript Strict Mode

```json
{
  "compilerOptions": {
    "strict": true,
    "noImplicitAny": true,
    "strictNullChecks": true,
    "noImplicitReturns": true
  }
}
```

### `any` Forbidden
```typescript
// ❌ WRONG
function process(data: any) { }

// ✅ RIGHT
function process(data: DataPayload) { }

// Use unknown for unknown types
function parse(input: unknown) { }
```

---

## 📁 3. Project Structure (Feature-First)

```
src/
├── modules/
│   ├── auth/
│   │   ├── auth.controller.ts
│   │   ├── auth.service.ts
│   │   ├── auth.repository.ts
│   │   └── auth.dto.ts
│   └── users/
├── shared/
│   ├── middleware/
│   ├── guards/
│   └── utils/
├── infrastructure/
│   ├── database/
│   ├── cache/
│   └── logger/
├── config/
└── main.ts
```

---

## 🔐 4. Environment Variables

```typescript
import { z } from 'zod';

const envSchema = z.object({
  NODE_ENV: z.enum(['development', 'production', 'test']),
  PORT: z.string().transform(Number),
  DATABASE_URL: z.string().url(),
  JWT_SECRET: z.string().min(32),
});

export const env = envSchema.parse(process.env);
```

---

## 🔗 Related Skills
- `backend-api` - REST/GraphQL design
- `backend-database` - DB patterns, caching

---

- `backend-database` - DB patterns, caching

---

*Backend Core v1.2 - Verified*

## 🔄 Workflow

> **Source:** [Node.js Best Practices - Project Structure](https://github.com/goldbergyoni/nodebestpractices#-1-project-structure-practices)

### Phase 1: Foundation (Structure)
- [ ] **Components**: Separate folders by component (components/user, components/order), not by technical role (controllers, models).
- [ ] **Config**: Type-safe environment variables using `dotenv` and `envalid` (or Zod).
- [ ] **Entry**: Separate app into `app.ts` (setup) and `server.ts` (listen).

### Phase 2: Core Utilities
- [ ] **Logger**: Install `winston` or `pino` instead of `console.log`.
- [ ] **Async Wrapper**: Use global handler or wrapper to catch Promise rejections.
- [ ] **Linter**: Connect ESLint and Prettier settings to CI pipeline.

### Phase 3: Hardening
- [ ] **Graceful Shutdown**: Listen for SIGTERM/SIGINT signals and close connections gently.
- [ ] **Health Check**: Add `/health` endpoint.

### Checkpoints
| Phase | Verification                                                                                        |
| ----- | --------------------------------------------------------------------------------------------------- |
| 1     | Do you need to touch 5 different folders when adding a new feature? (Should not -> Component based) |
| 2     | Is the `.env` file committed? (Should not be)                                                       |
| 3     | Does the process restart automatically if the app crashes? (PM2/Docker)                             |
