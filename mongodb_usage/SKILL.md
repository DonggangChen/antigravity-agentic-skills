---
name: mongodb_usage
router_kit: FullStackKit
description: This skill should be used when user asks to "query MongoDB", "show database collections", "get collection schema", "list MongoDB databases", "search records in MongoDB", or "check database indexes".
metadata:
  skillport:
    category: auto-healed
    tags: [aggregation, big data, cleaning, csv, data analysis, data engineering, data science, database, documents, etl pipelines, export, import, json, machine learning basics, migration, mongodb usage, mongoose, nosql, numpy, pandas, python data stack, query optimization, reporting, schema design, sharding, sql, statistics, transformation, visualization]
---

# MongoDB MCP Usage

Use the MongoDB MCP server to integrate database queries into workflows.

## Read-Only Access

MongoDB MCP is configured in read-only mode. Only queries and data retrieval are supported. No write, update, or delete operations.

## Database Queries

Use `mcp__mongodb__*` tools for:

- Listing databases
- Viewing collection schemas
- Querying collection data
- Analyzing indexes

## Integration Pattern

1. List available databases with `mcp__mongodb__list_databases`
2. Explore collections with `mcp__mongodb__list_collections`
3. Get schema information with `mcp__mongodb__get_collection_schema`
4. Query data as needed for analysis
5. Format results for user consumption

## Environment Variables

MongoDB MCP requires:

- `MONGODB_URI` - Connection string (mongodb://...)

Configure in shell before using the plugin.

## Cost Considerations

- Minimize database calls when possible
- Use schema queries before running analysis queries
- Cache results locally if multiple calls needed
*MongoDB Usage v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [MongoDB Performance Best Practices](https://www.mongodb.com/docs/manual/administration/analyzing-mongodb-performance/)

### Phase 1: Discovery & Inspection
- [ ] **Connection**: Verify access with `mcp__mongodb__list_databases`.
- [ ] **Schema Analysis**: Understand data types and structure with `mcp__mongodb__get_collection_schema`.
- [ ] **Index Check**: List existing indexes (with `list_indexes` or similar query).

### Phase 2: Query Construction
- [ ] **Filter**: Filter queries over indexed fields (Prefix).
- [ ] **Projection**: Select only necessary fields (`{ field: 1 }`) (Network and RAM saving).
- [ ] **Aggregation**: Build `$match`, `$group`, `$project` pipeline for complex analysis.

### Phase 3: Performance Check (Explain Plan)
- [ ] **Explain**: Check if query performs `COLLSCAN` (Full scan) or `IXSCAN` (Index scan).
- [ ] **Optimization**: Suggest Compound Index for slow queries.

### Checkpoints
| Phase | Verification                                                 |
| ----- | ------------------------------------------------------------ |
| 1     | Does query respond in under 100ms?                           |
| 2     | Is "In-memory sort" limit exceeded (is there disk usage)?    |
| 3     | Do Regex queries use the start of the index (anchor `^...`)? |
