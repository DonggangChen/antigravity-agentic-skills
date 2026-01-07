---
name: backend_api
router_kit: FullStackKit
description: REST implementation, validation, security headers, auth patterns. ⚠️ Use while coding. For API design/GraphQL → api-design.
metadata:
  skillport:
    category: development
    tags: [accessibility, api integration, backend, backend api, browser apis, client-side, components, css3, debugging, deployment, frameworks, frontend, fullstack, html5, javascript, libraries, node.js, npm, performance optimization, responsive design, seo, state management, testing, typescript, ui/ux, web development]      - backend-database
---

# 🌐 Backend API

> REST API design and security best practices.

---

## 📋 1. RESTful Endpoints

```
GET    /api/v1/users           # List
GET    /api/v1/users/:id       # Get one
POST   /api/v1/users           # Create
PATCH  /api/v1/users/:id       # Partial update
DELETE /api/v1/users/:id       # Delete
```

### HTTP Status Codes
| Code | Usage                   |
| ---- | ----------------------- |
| 200  | GET, PATCH, PUT success |
| 201  | POST Created            |
| 204  | DELETE No Content       |
| 400  | Validation error        |
| 401  | Authentication required |
| 403  | Forbidden               |
| 404  | Not Found               |
| 429  | Rate limit              |

---

## ✅ 2. Input Validation (Zod)

```typescript
import { z } from 'zod';

const CreateUserSchema = z.object({
  email: z.string().email(),
  password: z.string().min(8),
  name: z.string().min(2).max(100),
});

type CreateUserDto = z.infer<typeof CreateUserSchema>;
```

---

## 🔐 3. Security

### Security Headers
```typescript
import helmet from 'helmet';
import rateLimit from 'express-rate-limit';

app.use(helmet());
app.use(rateLimit({
  windowMs: 15 * 60 * 1000,
  max: 100,
}));
```

### JWT Authentication
```typescript
function authMiddleware(req, res, next) {
  const token = req.headers.authorization?.replace('Bearer ', '');
  if (!token) return res.status(401).json({ error: 'Token required' });
  
  const decoded = jwt.verify(token, env.JWT_SECRET);
  req.user = decoded;
  next();
}
```

---

## 📦 4. Response Format

```typescript
interface SuccessResponse<T> {
  success: true;
  data: T;
  meta?: { page, limit, total };
}

interface ErrorResponse {
  success: false;
  error: { code: string; message: string };
}
```

---

## 🔗 Related Skills
- `backend-core` - TypeScript, structure
- `backend-database` - Repository, caching

---

- `backend-database` - Repository, caching

---

*Backend API v1.2 - Verified*

## 🔄 Workflow

> **Source:** [Node.js Best Practices (Goldberg)](https://github.com/goldbergyoni/nodebestpractices#-2-metrics-and-logging)

### Phase 1: Interface Design (Contract First)
- [ ] **Specs**: Define input/output with OpenAPI (Swagger) or Zod schema.
- [ ] **Roadmap**: Determine endpoint list and HTTP methods.

### Phase 2: Layered Implementation
- [ ] **Controller**: Manage HTTP request/response only, do not write business logic.
- [ ] **Service**: Put all business logic here (Reusable).
- [ ] **DAL**: Abstract database access.

### Phase 3: Security & Hardening
- [ ] **Middleware**: Configure Helmet, Rate Limiter and CORS.
- [ ] **Validation**: Validate every incoming data (Body, Query, Params) with Zod.
- [ ] **Error**: Setup Global Error Handler and return user-friendly messages.

### Checkpoints
| Phase | Verification                                                  |
| ----- | ------------------------------------------------------------- |
| 1     | Was API documentation prepared before code?                   |
| 2     | Is there any SQL/ORM code in Controller file? (Should not be) |
| 3     | Is stack trace hidden when returning 500 error?               |
