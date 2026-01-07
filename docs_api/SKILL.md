---
name: docs_api
router_kit: ManagementKit
description: OpenAPI/Swagger API documentation and endpoint documentation templates.
metadata:
  skillport:
    category: operations
    tags: [accessibility, api integration, backend, browser apis, client-side, components, css3, debugging, deployment, docs api, frameworks, frontend, fullstack, html5, javascript, libraries, node.js, npm, performance optimization, responsive design, seo, state management, testing, typescript, ui/ux, web development]      - docs-code
---

# 🌐 Docs API

> API documentation and OpenAPI best practices.

---

## 📋 OpenAPI Template

```yaml
openapi: 3.0.3
info:
  title: User API
  version: 1.0.0

paths:
  /users:
    get:
      summary: List users
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/User'

components:
  schemas:
    User:
      type: object
      properties:
        id: { type: string }
        email: { type: string, format: email }
```

---

## 📝 Endpoint Doc Template

```markdown
## Create User

`POST /api/v1/users`

### Request
| Field    | Type   | Required | Description |
| -------- | ------ | -------- | ----------- |
| email    | string | Yes      | Valid email |
| password | string | Yes      | Min 8 chars |

### Response (201)
{ "success": true, "data": { "id": "...", "email": "..." } }

### Error (400)
{ "success": false, "error": { "code": "VALIDATION_ERROR" } }
```

---

*Docs API v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Redocly OpenAPI Workflow](https://redocly.com/docs/cli/) & [API Handyman](https://apihandyman.io/)

### Phase 1: Design (Spec First)
- [ ] **Mock**: Mock API using `prism` or `stoplight` before coding.
- [ ] **Lint**: Audit OpenAPI file against standards (CamelCase, Descriptions etc.) using `spectral`.
- [ ] **Structure**: Use `$ref` to split into components instead of one huge file (`components/schemas/User.yaml`).

### Phase 2: Documentation
- [ ] **Descriptions**: Write meaningful descriptions for every endpoint and parameter.
- [ ] **Examples**: Must add successful and error (4xx, 5xx) response examples.
- [ ] **Auth**: Clearly define Security schemes (Bearer, OAuth2).

### Phase 3: Publication
- [ ] **Generate**: Generate static HTML using `redoc-cli bundle` or `swagger-cli`.
- [ ] **Version**: Update API version and Changelog.

### Checkpoints
| Phase | Verification                                            |
| ----- | ------------------------------------------------------- |
| 1     | Does `spectral lint openapi.yaml` pass without errors?  |
| 2     | Does "Try it out" work in generated documentation?      |
| 3     | Are all mandatory fields (`required`) marked in schema? |
