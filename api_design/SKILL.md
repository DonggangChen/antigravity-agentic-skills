---
name: api_design
router_kit: FullStackKit
description: API design, GraphQL schema, OpenAPI spec, versioning. ⚠️ Use for design phase. For implementation/security → backend-api.
metadata:
  skillport:
    category: development
    tags: [accessibility, api design, api integration, backend, browser apis, client-side, components, css3, debugging, deployment, frameworks, frontend, fullstack, html5, javascript, libraries, node.js, npm, performance optimization, responsive design, seo, state management, testing, typescript, ui/ux, web development]      - openapi
---

# 🔌 API Design

> RESTful and GraphQL API design guide.

---

## ⚡ Quick Reference

### HTTP Methods
`GET`(read) · `POST`(create) · `PUT`(full-update) · `PATCH`(partial) · `DELETE`

### Status Codes
`2xx` Success · `4xx` Client Error · `5xx` Server Error

| Code                | Usage                                    |
| ------------------- | ---------------------------------------- |
| 200/201/204         | OK/Created/No Content                    |
| 400/401/403/404/422 | Bad/Unauth/Forbidden/NotFound/Validation |
| 500/503             | Server Error/Unavailable                 |

---

## 📐 Endpoint Design

```
Pattern: /api/v{n}/{resource}/{id?}/{sub-resource?}

✅ GET  /api/v1/users
✅ GET  /api/v1/users/{id}
✅ POST /api/v1/users
❌ GET  /api/v1/getUsers (do not use verb!)
```

### Query Params
`?page=1&limit=20` · `?status=active` · `?sort=createdAt&order=desc` · `?fields=id,name`

---

## 📦 Response Format

```typescript
// Success
{ success: true, data: T, meta?: { page, total } }

// Error  
{ success: false, error: { code: string, message: string, details?: [] } }
```

---

## 🔄 Versioning

| Method            | Example                | Recommendation |
| ----------------- | ---------------------- | -------------- |
| URL (recommended) | `/api/v1/users`        | ✅ Most common  |
| Header            | `Accept: ...version=1` | Optional       |
| Query             | `?version=1`           | Avoid          |

---

## 📊 GraphQL Essentials

```graphql
type Query {
  user(id: ID!): User
  users(filter: Filter, pagination: Pagination): UserConnection!
}

type Mutation {
  createUser(input: CreateUserInput!): UserPayload!
}
```

**N+1 Solution:** DataLoader, Batch loading, Query complexity limiting

---

## 📝 OpenAPI Basics

```yaml
openapi: 3.0.3
info: { title: API, version: 1.0.0 }
paths:
  /users:
    get:
      responses:
        '200': { $ref: '#/components/schemas/UserList' }
```

---

*API Design v2.0 - Compact*

## 🔄 Workflow

> **Source:** [Best Practices for API-First Development](https://timebusinesses.com/best-practices-for-api-first-development/)

### Phase 1: Design Phase (Spec-First)
- [ ] **Define Resources**: Identify nouns (Users, Orders) and relationships.
- [ ] **Draft OpenAPI/Schema**: Write `openapi.yaml` or `schema.graphql` BEFORE coding.
- [ ] **Mocking**: Use tools like Prism/Stoplight to generate mock servers from spec.
- [ ] **Review**: Get stakeholder feedback on the mock API.

### Phase 2: Implementation
- [ ] **Codegen**: Generate TypeScript types/interfaces from the spec.
- [ ] **Business Logic**: Implement controllers/resolvers connecting to services.
- [ ] **Validation**: Ensure Zod/Joi schemas match the OpenAPI spec.

### Phase 3: Testing & Security
- [ ] **Contract Testing**: Verify implementation matches spec (e.g., using Dredd/Pact).
- [ ] **Security Audit**: Check Rate Limiting, AuthN/AuthZ scopes.
- [ ] **Error Handling**: Verify standard error responses (RFC 7807).

### Phase 4: Documentation (Auto)
- [ ] **Publish**: Deploy Swagger UI / Redoc.
- [ ] **Changelog**: Document breaking changes if any (versioning strategy).

### Checkpoints
| Phase | Verification                               |
| ----- | ------------------------------------------ |
| 1     | OpenAPI spec approved (lint passed)        |
| 2     | Code and Spec types synchronized (codegen) |
| 3     | Contract tests passing                     |
| 4     | Documentation live and up to date          |
