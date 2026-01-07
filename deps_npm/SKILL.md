---
name: deps_npm
router_kit: FullStackKit
description: npm/yarn dependency management, package.json best practices and version control.
metadata:
  skillport:
    category: development
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, deps npm, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - deps-security
---

# 📦 Deps NPM

> npm dependency management and best practices.

---

## 📋 package.json Best Practices

```json
{
  "name": "my-app",
  "version": "1.0.0",
  "engines": { "node": ">=20.0.0" },
  "scripts": {
    "dev": "vite",
    "build": "tsc && vite build",
    "lint": "eslint .",
    "test": "vitest"
  }
}
```

---

## 🔒 Version Control

| Prefix   | Meaning          | Example |
| -------- | ---------------- | ------- |
| `^1.2.3` | Minor updates OK | 1.x.x   |
| `~1.2.3` | Patch only       | 1.2.x   |
| `1.2.3`  | Exact version    | 1.2.3   |

```bash
# Lock file MANDATORY
npm ci  # use package-lock.json
```

---

## 📊 Dependency Types

```json
{
  "dependencies": {},      // Production
  "devDependencies": {},   // Development only
  "peerDependencies": {}   // Consumer provides
}
```

---

*Deps NPM v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [NPM Security Best Practices](https://docs.npmjs.com/creating-and-publishing-scoped-public-packages)

### Phase 1: Audit & Analysis
- [ ] **Lockfile**: Does `package-lock.json` exist and is it up-to-date?
- [ ] **Security**: Run `npm audit` and fix critical vulnerabilities.
- [ ] **Licenses**: Check licenses of production dependencies.

### Phase 2: Update Strategy
- [ ] **Minor/Patch**: Perform safe updates with `npm outdated`.
- [ ] **Major**: Read breaking changes from release notes and update one by one.
- [ ] **Clean**: Find and delete unused packages with `depcheck`.

### Phase 3: CI/CD Protection
- [ ] **Immutable**: Always use `npm ci` in CI (never `npm install`).
- [ ] **Vulnerability**: Add audit step to pipeline (`npm audit --audit-level=high`).

### Checkpoints
| Phase | Verification                                                         |
| ----- | -------------------------------------------------------------------- |
| 1     | Does project run when `node_modules` is deleted and `npm ci` is run? |
| 2     | Does production build run without `devDependencies`?                 |
| 3     | Do all versions comply with 'Exact' or 'Tilde/Caret' strategy?       |
