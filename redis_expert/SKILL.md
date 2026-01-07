---
name: redis_expert
router_kit: FullStackKit
description: Redis caching strategies, Pub/Sub and data structures (Streams, Lists, Hashes).
metadata:
  skillport:
    category: database
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, redis expert, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - in-memory
---

# 🔴 Redis Expert

> Low latency data storage, caching optimization and messaging solutions.

---

*Redis Expert v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Redis Best Practices](https://redis.io/docs/manual/best-practices/) & [Caching Strategies (AWS)](https://aws.amazon.com/caching/best-practices/)

### Phase 1: Data model & Structure
- [ ] **Type Selection**: Choose the appropriate type for data (String, Hash, List, Set, Sorted Set).
- [ ] **Naming**: Determine Key naming standards (`app:module:id`).
- [ ] **TTL**: Always define an Expiration for every key.

### Phase 2: Caching Strategy
- [ ] **Cache Aside**: Ensure application checks Redis first, if missing fetches from DB and updates Redis.
- [ ] **Invalidation**: Set up logic to delete/update relevant Redis key when DB is updated.

### Phase 3: Advanced Patterns
- [ ] **Pub/Sub**: Use channels for instant messaging between services.
- [ ] **Atomic Ops**: Use `INCR` or Lua scripts to prevent race conditions.
- [ ] **Streams**: Manage high volume event streams (Event sourcing).

### Checkpoints
| Phase | Verification                                                    |
| ----- | --------------------------------------------------------------- |
| 1     | Is "Eviction Policy" (e.g. Lru) ready if Redis memory fills up? |
| 2     | Do Big Keys slow down performance?                              |
| 3     | Are Connections managed through a Pool?                         |
