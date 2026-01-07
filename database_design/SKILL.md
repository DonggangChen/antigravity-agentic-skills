---
name: database_design
router_kit: FullStackKit
description: Schema design, migration strategies, indexing, query optimization and database best practices.
metadata:
  skillport:
    category: development
    tags: [accessibility, api integration, backend, browser apis, client-side, components, css3, database design, debugging, deployment, frameworks, frontend, fullstack, html5, javascript, libraries, node.js, npm, performance optimization, responsive design, seo, state management, testing, typescript, ui/ux, web development]      - optimization
---

# 🗄️ Database Design

> Schema design, migration and query optimization guide.

---

## 📋 Table of Contents

1. [Schema Design Principles](#1-schema-design-principles)
2. [Normalization](#2-normalization)
3. [Indexing Strategies](#3-indexing-strategies)
4. [Query Optimization](#4-query-optimization)
5. [Migration Best Practices](#5-migration-best-practices)
6. [NoSQL Patterns](#6-nosql-patterns)

---

## 1. Schema Design Principles

### Naming Conventions
```sql
-- Tables: snake_case, plural
CREATE TABLE users (...);
CREATE TABLE order_items (...);

-- Columns: snake_case
user_id, created_at, is_active

-- Primary Key: id or table_id
id SERIAL PRIMARY KEY
-- or
user_id UUID PRIMARY KEY

-- Foreign Key: referenced_table_id
user_id INTEGER REFERENCES users(id)
```

### Basic Column Types
| Data         | PostgreSQL                 | MySQL                             |
| ------------ | -------------------------- | --------------------------------- |
| ID           | `UUID` / `SERIAL`          | `CHAR(36)` / `INT AUTO_INCREMENT` |
| Text (short) | `VARCHAR(255)`             | `VARCHAR(255)`                    |
| Text (long)  | `TEXT`                     | `TEXT`                            |
| Date         | `TIMESTAMP WITH TIME ZONE` | `DATETIME`                        |
| Boolean      | `BOOLEAN`                  | `TINYINT(1)`                      |
| JSON         | `JSONB`                    | `JSON`                            |
| Money        | `DECIMAL(19,4)`            | `DECIMAL(19,4)`                   |

---

## 2. Normalization

### Normal Forms
| Form | Rule                     | Example                                 |
| ---- | ------------------------ | --------------------------------------- |
| 1NF  | Atomic values            | `address` → `street`, `city`, `zip`     |
| 2NF  | Full dependency          | Split composite key                     |
| 3NF  | No transitive dependency | `user.department_name` → separate table |

### Denormalization Cases
- Read-heavy workload
- Reporting/analytics tables
- Cache tables
- Aggregation results

---

## 3. Indexing Strategies

### Index Types
```sql
-- B-Tree (default, general purpose)
CREATE INDEX idx_users_email ON users(email);

-- Composite Index (order matters!)
CREATE INDEX idx_orders_user_date ON orders(user_id, created_at);

-- Partial Index (conditional)
CREATE INDEX idx_active_users ON users(email) WHERE is_active = true;

-- Unique Index
CREATE UNIQUE INDEX idx_users_email_unique ON users(email);

-- GIN/GiST (full-text, JSON, array)
CREATE INDEX idx_users_metadata ON users USING GIN(metadata);
```

### Index Selection Rules
```
✅ Add Index:
- Columns frequently used in WHERE clause
- JOIN columns (foreign keys)
- ORDER BY columns
- Columns requiring Unique constraint

❌ Do Not Add Index:
- Low cardinality (boolean, enum)
- Frequently updated columns
- Small tables (<1000 row)
```

---

## 4. Query Optimization

### EXPLAIN Analysis
```sql
EXPLAIN ANALYZE
SELECT * FROM orders
WHERE user_id = 123
AND created_at > '2025-01-01';
```

### Optimization Techniques
```sql
-- ❌ WRONG: SELECT *
SELECT * FROM users;

-- ✅ CORRECT: Only necessary columns
SELECT id, name, email FROM users;

-- ❌ WRONG: N+1 query
FOR user IN users:
    SELECT * FROM orders WHERE user_id = user.id

-- ✅ CORRECT: JOIN or IN
SELECT * FROM orders WHERE user_id IN (1, 2, 3);

-- ❌ WRONG: Function on indexed column
SELECT * FROM users WHERE YEAR(created_at) = 2025;

-- ✅ CORRECT: Range query
SELECT * FROM users 
WHERE created_at >= '2025-01-01' AND created_at < '2026-01-01';
```

### Pagination
```sql
-- Offset-based (small datasets)
SELECT * FROM users ORDER BY id LIMIT 20 OFFSET 40;

-- Cursor-based (large datasets, recommended)
SELECT * FROM users 
WHERE id > :last_id 
ORDER BY id 
LIMIT 20;
```

---

## 5. Migration Best Practices

### File Structure
```
migrations/
├── 001_create_users_table.sql
├── 002_add_email_to_users.sql
├── 003_create_orders_table.sql
└── 004_add_index_orders_user_id.sql
```

### Safe Migration Rules
```sql
-- ✅ Backward compatible
ALTER TABLE users ADD COLUMN phone VARCHAR(20);

-- ⚠️ Be careful (default value required)
ALTER TABLE users ADD COLUMN status VARCHAR(20) DEFAULT 'active';

-- ❌ Dangerous (do not run directly in prod)
ALTER TABLE users DROP COLUMN old_field;
DROP TABLE deprecated_table;
```

### Zero-Downtime Migration
1. Add new column (nullable)
2. Start dual-write
3. Perform data migration
4. Make new column NOT NULL
5. Remove old column

---

## 6. NoSQL Patterns

### MongoDB Schema Design
```javascript
// Embedded (1:few, read-heavy)
{
  _id: ObjectId("..."),
  name: "John",
  addresses: [
    { street: "123 Main", city: "NYC" },
    { street: "456 Oak", city: "LA" }
  ]
}

// Referenced (1:many, write-heavy)
// users collection
{ _id: ObjectId("..."), name: "John" }

// orders collection  
{ _id: ObjectId("..."), user_id: ObjectId("..."), total: 100 }
```

### Redis Data Structures
```
STRING  → Cache, session
HASH    → Object storage
LIST    → Queue, timeline
SET     → Tags, unique items
ZSET    → Leaderboard, ranking
```

---

*Database Design v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [System Design Primer - Database](https://github.com/donnemartin/system-design-primer#database)

### Phase 1: Requirements & Modeling
- [ ] **Access Patterns**: How will data be read? (Read-heavy vs Write-heavy).
- [ ] **Conceptual**: Draw Entities and relationships (ER Diagram).
- [ ] **Engine**: Decide on Relational (Postgres) or NoSQL (Mongo/Redis).

### Phase 2: Logical Design
- [ ] **Normalization**: Normalize up to 3NF. (Identify fields to denormalize for performance).
- [ ] **Constraints**: Define Foreign Key, Unique, Not Null constraints.
- [ ] **Indices**: Plan indices according to query patterns.

### Phase 3: Physical Implementation
- [ ] **Migration**: Create SQL files (V1__init.sql).
- [ ] **Capacity**: Optimize data types (INT vs BIGINT, VARCHAR vs TEXT).
- [ ] **Security**: Configure Role-based access (RLS) and encryption settings.

### Checkpoints
| Phase | Verification                            |
| ----- | --------------------------------------- |
| 1     | Does ER diagram cover all use-cases?    |
| 2     | Is there a Primary Key for every table? |
| 3     | Were query costs checked with EXPLAIN?  |
