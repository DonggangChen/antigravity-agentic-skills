---
name: docs_readme
router_kit: ManagementKit
description: README best practices and project documentation templates.
metadata:
  skillport:
    category: operations
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, docs readme, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - docs-code
---

# 📄 Docs README

> README and project documentation best practices.

---

## 📋 README Template

```markdown
# Project Name

> Explain what the project does in one sentence.

## Features
- ✅ Feature 1
- ✅ Feature 2

## Quick Start

### Prerequisites
- Node.js 20+

### Installation
npm install && npm run dev

## Documentation
- [API Reference](./docs/api.md)
- [Contributing](./CONTRIBUTING.md)

## License
MIT
```

---

## 📝 README Rules

| Rule                 | Description                                 |
| -------------------- | ------------------------------------------- |
| Clear title          | What it is should be immediately understood |
| Quick start is short | Should be runnable in 5 minutes             |
| Copy-paste ready     | Code blocks should run directly             |
| Use visuals          | Badge, screenshot, diagram                  |

---

## 📊 Badges

```markdown
![Build](https://img.shields.io/badge/build-passing-green)
![Coverage](https://img.shields.io/badge/coverage-95%25-green)
```

---

*Docs README v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Awesome README](https://github.com/matiassingers/awesome-readme)

### Phase 1: First Impression
- [ ] **Hero**: Add project name, short description and if possible logo/banner.
- [ ] **Badges**: Put CI/CD status, license and version badges at the top.
- [ ] **Demo**: Add live demo link or GIF/Screenshot.

### Phase 2: Content Structure
- [ ] **Installation**: One-line installation command (`npm install ...`).
- [ ] **Usage**: Code example for most common usage scenario.
- [ ] **Contributing**: Link to contributing guide (`CONTRIBUTING.md`).

### Phase 3: Maintenance
- [ ] **Links**: Check for broken links (Link Checker).
- [ ] **License**: Is license declaration in README consistent with LICENSE file?
- [ ] **Update**: Update README after every major release.

### Checkpoints
| Phase | Verification                                               |
| ----- | ---------------------------------------------------------- |
| 1     | Does reader understand what the project does in 5 seconds? |
| 2     | Do installation commands run error-free with "copy-paste"? |
| 3     | Are visuals optimized (lightweight) and loading?           |
