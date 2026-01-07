---
name: prisma_specialist
router_kit: FullStackKit
description: Prisma ORM, schema design, migrations and type-safe database access.
metadata:
  skillport:
    category: database
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, prisma specialist, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - orm
---

# ◭ Prisma Specialist

> Modern and type-safe database access and schema management.

---

*Prisma Specialist v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Prisma Documentation - Schema Reference](https://www.prisma.io/docs/reference/api-reference/prisma-schema-reference)

### Phase 1: Schema Modeling
- [ ] **Models**: Define tables and relations (1:1, 1:n, m:n) in `schema.prisma` file.
- [ ] **Enums**: Use Enums for fixed values and check PostgreSQL/MySQL enum support.
- [ ] **Indices**: Optimize at database layer by adding `@index` to frequently queried fields.

### Phase 2: Migrations & Generation
- [ ] **Migrate**: Apply schema to database with `prisma migrate dev`.
- [ ] **Generate**: Create type-safe Prisma Client with `prisma generate`.
- [ ] **Studio**: Start `npx prisma studio` to visually inspect data.

### Phase 3: Query & Relations
- [ ] **CRUD**: Write type-safe queries (`findUnique`, `create`, `update`).
- [ ] **Filtering**: Configure `where`, `orderBy` and `pagination` (skip/take) parameters.
- [ ] **Transactions**: Use `$transaction` (Interactive) for complex operations.

### Checkpoints
| Phase | Verification                                                                   |
| ----- | ------------------------------------------------------------------------------ |
| 1     | Was `npx prisma generate` executed after schema change?                        |
| 2     | Do unnecessary "Find Many" queries increase memory consumption (Limit/Offset)? |
| 3     | Is database connection pool (Pool size) set correctly?                         |
