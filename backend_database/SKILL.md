---
name: backend_database
router_kit: FullStackKit
description: Repository pattern, transactions, caching and query optimization.
metadata:
  skillport:
    category: development
    tags: [accessibility, api integration, backend, backend database, browser apis, client-side, components, css3, debugging, deployment, frameworks, frontend, fullstack, html5, javascript, libraries, node.js, npm, performance optimization, responsive design, seo, state management, testing, typescript, ui/ux, web development]      - backend-api
---

# 🗄️ Backend Database

> Database patterns, caching and performance optimization.

---

## 📋 1. Repository Pattern

```typescript
interface IUserRepository {
  findById(id: string): Promise<User | null>;
  findByEmail(email: string): Promise<User | null>;
  create(data: CreateUserDto): Promise<User>;
  update(id: string, data: UpdateUserDto): Promise<User>;
  delete(id: string): Promise<void>;
}

class UserRepository implements IUserRepository {
  constructor(private prisma: PrismaClient) {}

  async findById(id: string) {
    return this.prisma.user.findUnique({ where: { id } });
  }
}
```

---

## 🔄 2. Transactions

```typescript
async function transferMoney(fromId, toId, amount) {
  return prisma.$transaction(async (tx) => {
    const from = await tx.account.update({
      where: { id: fromId },
      data: { balance: { decrement: amount } },
    });
    
    if (from.balance < 0) throw new Error('Insufficient funds');
    
    await tx.account.update({
      where: { id: toId },
      data: { balance: { increment: amount } },
    });
  });
}
```

---

## ⚡ 3. Caching (Redis)

```typescript
async function getCachedUser(id: string) {
  const cacheKey = `user:${id}`;
  
  const cached = await redis.get(cacheKey);
  if (cached) return JSON.parse(cached);
  
  const user = await userRepository.findById(id);
  if (user) {
    await redis.set(cacheKey, JSON.stringify(user), 'EX', 3600);
  }
  return user;
}
```

---

## 🔍 4. Query Optimization

```typescript
// ❌ N+1 problem
const users = await prisma.user.findMany();
for (const user of users) {
  await prisma.post.findMany({ where: { authorId: user.id } });
}

// ✅ Single query with Include
const users = await prisma.user.findMany({
  include: { posts: true },
});

// ✅ Only necessary fields with Select
const users = await prisma.user.findMany({
  select: { id: true, name: true, email: true },
});
```

---

## ⏱️ 5. Async Best Practices

```typescript
// ❌ Sequential
const user = await getUser(id);
const orders = await getOrders(id);

// ✅ Parallel
const [user, orders] = await Promise.all([
  getUser(id),
  getOrders(id),
]);
```

---

## 🔗 Related Skills
- `backend-core` - Structure, TypeScript
- `backend-api` - Endpoints, response



---

*Backend Database v1.2 - Verified*

## 🔄 Workflow

> **Source:** [12 Factor App - Backing Services](https://12factor.net/backing-services)

### Phase 1: Schema & Migration
- [ ] **Design**: Draw ER diagram and normalize.
- [ ] **Migration Tool**: Setup versioned migration structure with Drizzle Kit, Prisma Migrate or TypeORM.
- [ ] **Seed**: Write idempotent seed scripts for testing and development.

### Phase 2: Access Layer (Repository Pattern)
- [ ] **Abstraction**: Separate database queries from Controller (Repo/DAO).
- [ ] **Injection**: Pass DB instance to services via dependency injection.
- [ ] **Transactions**: Wrap critical operations (Money transfer etc.) in transaction block.

### Phase 3: Optimization & Safety
- [ ] **Indices**: Analyze slow queries with `EXPLAIN` and add indices.
- [ ] **Connection Pooling**: Configure pool size settings in Prod environment.
- [ ] **Sanitization**: SQL Injection protection (Use ORM or parameterized query).

### Checkpoints
| Phase | Verification                                      |
| ----- | ------------------------------------------------- |
| 1     | Are migration files committed to Git?             |
| 2     | Is there N+1 query problem? (Query inside Loop)   |
| 3     | Is DB password hardcoded in code? (Must never be) |
