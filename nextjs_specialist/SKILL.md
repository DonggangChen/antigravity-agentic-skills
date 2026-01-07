---
name: nextjs_specialist
router_kit: DevOpsKit
description: Next.js 15 App Router, Server Components, SSR/SSG optimization and modern Next.js best practices.
metadata:
  skillport:
    category: development
    tags: [accessibility, api integration, backend, browser apis, client-side, components, css3, debugging, deployment, frameworks, frontend, fullstack, html5, javascript, libraries, nextjs specialist, node.js, npm, performance optimization, responsive design, seo, state management, testing, typescript, ui/ux, web development]      - app-router
---

# ⚛️ Next.js Specialist

> Next.js 15 App Router and Server Components guide.

---

1. [App Router Basics](#1-app-router-basics)
2. [Server vs Client Components](#2-server-vs-client-components)
3. [Data Fetching](#3-data-fetching)
4. [Rendering Strategies](#4-rendering-strategies)
5. [Optimization](#5-optimization)

---

## 1. App Router Basics

### File Structure
```
app/
├── layout.tsx          # Root layout
├── page.tsx            # Home page (/)
├── loading.tsx         # Loading UI
├── error.tsx           # Error boundary
├── not-found.tsx       # 404 page
├── globals.css
│
├── (marketing)/        # Route group (Not visible in URL)
│   ├── about/
│   │   └── page.tsx    # /about
│   └── contact/
│       └── page.tsx    # /contact
│
├── dashboard/
│   ├── layout.tsx      # Nested layout
│   ├── page.tsx        # /dashboard
│   └── settings/
│       └── page.tsx    # /dashboard/settings
│
├── blog/
│   ├── page.tsx        # /blog
│   └── [slug]/
│       └── page.tsx    # /blog/:slug (dynamic)
│
└── api/
    └── users/
        └── route.ts    # API route
```

### Special Files
| File            | Purpose                        |
| --------------- | ------------------------------ |
| `layout.tsx`    | Shared layout, state preserved |
| `page.tsx`      | Unique route content           |
| `loading.tsx`   | Suspense fallback              |
| `error.tsx`     | Error boundary                 |
| `not-found.tsx` | 404 handler                    |
| `route.ts`      | API endpoint                   |

---

## 2. Server vs Client Components

### Server Components (Default)
```tsx
// app/users/page.tsx
// ✅ Server Component - 'use client' yok

async function UsersPage() {
  const users = await db.users.findMany(); // Direct DB access
  
  return (
    <ul>
      {users.map(user => (
        <li key={user.id}>{user.name}</li>
      ))}
    </ul>
  );
}

export default UsersPage;
```

### Client Components
```tsx
'use client'; // ⚠️ At the top of file

import { useState } from 'react';

export function Counter() {
  const [count, setCount] = useState(0);
  
  return (
    <button onClick={() => setCount(c => c + 1)}>
      Count: {count}
    </button>
  );
}
```

### Composition Pattern
```tsx
// Server Component
import { Counter } from './Counter'; // Client Component

async function Dashboard() {
  const data = await fetchData(); // Runs on server
  
  return (
    <div>
      <h1>{data.title}</h1>
      <Counter /> {/* Client Component */}
    </div>
  );
}
```

### Which One When?
| Server Component   | Client Component                  |
| ------------------ | --------------------------------- |
| Data fetching      | Interactivity (onClick, onChange) |
| Backend access     | Browser API (localStorage)        |
| Sensitive logic    | Hooks (useState, useEffect)       |
| Büyük dependencies | Event listeners                   |

---

## 3. Data Fetching

### Server Components
```tsx
// Automatic cache
async function Page() {
  const res = await fetch('https://api.example.com/data');
  const data = await res.json();
  return <div>{data.title}</div>;
}

// Cache control
const res = await fetch(url, {
  cache: 'force-cache', // Default - cache
  // cache: 'no-store',  // Her request'te fresh
  // next: { revalidate: 60 }, // ISR - 60 saniye
});
```

### Server Actions
```tsx
// app/actions.ts
'use server';

export async function createUser(formData: FormData) {
  const name = formData.get('name');
  await db.users.create({ data: { name } });
  revalidatePath('/users');
}

// app/users/page.tsx
import { createUser } from './actions';

export default function Page() {
  return (
    <form action={createUser}>
      <input name="name" />
      <button type="submit">Create</button>
    </form>
  );
}
```

---

## 4. Rendering Strategies

### Static (SSG)
```tsx
// Default - generated at build time
export default function Page() {
  return <h1>Static Page</h1>;
}

// For Dynamic segments
export async function generateStaticParams() {
  const posts = await getPosts();
  return posts.map(post => ({ slug: post.slug }));
}
```

### Dynamic (SSR)
```tsx
// Render on every request
export const dynamic = 'force-dynamic';

export default async function Page() {
  const data = await fetchRealTimeData();
  return <div>{data.value}</div>;
}
```

### Incremental Static Regeneration (ISR)
```tsx
export const revalidate = 60; // 60 seconds

export default async function Page() {
  const data = await fetchData();
  return <div>{data.value}</div>;
}
```

---

## 5. Optimization

### Image Optimization
```tsx
import Image from 'next/image';

<Image
  src="/hero.jpg"
  alt="Hero"
  width={1200}
  height={600}
  priority // For LCP
  placeholder="blur"
  blurDataURL="data:image/..."
/>
```

### Font Optimization
```tsx
// app/layout.tsx
import { Inter } from 'next/font/google';

const inter = Inter({
  subsets: ['latin'],
  display: 'swap',
});

export default function Layout({ children }) {
  return (
    <html className={inter.className}>
      <body>{children}</body>
    </html>
  );
}
```

### Metadata
```tsx
// Static
export const metadata = {
  title: 'My App',
  description: 'App description',
};

// Dynamic
export async function generateMetadata({ params }) {
  const post = await getPost(params.slug);
  return {
    title: post.title,
    openGraph: { images: [post.image] },
  };
}
```

### Parallel Routes
```
app/
├── @modal/
│   └── login/page.tsx
├── @sidebar/
│   └── page.tsx
└── layout.tsx
```

```tsx
// layout.tsx
export default function Layout({ children, modal, sidebar }) {
  return (
    <>
      {sidebar}
      {children}
      {modal}
    </>
  );
}
```

---

*Next.js Specialist v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Next.js App Router Documentation](https://nextjs.org/docs/app) & [Vercel Security Guide](https://vercel.com/guides/nextjs-security-checklist)

### Phase 1: Rendering Strategy
- [ ] **Default to Server**: Treat every component as Server Component by default.
- [ ] **Isolate Client**: Make only leaf nodes requiring interaction (`useState`, `onClick`) Client Components.
- [ ] **Streaming**: Define `Suspense` boundaries and create `loading.tsx` files.

### Phase 2: Data & Actions
- [ ] **Fetch**: Perform data fetching inside Server Component (Use `Promise.all` to prevent Waterfall).
- [ ] **Actions**: Use Server Actions for form operations and validate input with Zod.
- [ ] **Security**: Manually perform authentication and authorization checks in Server Actions (call `auth()`).

### Phase 3: Performance (Core Web Vitals)
- [ ] **Images**: Use `next/image` and set `sizes` prop correctly.
- [ ] **Fonts**: Optimize fonts with `next/font` (Prevents layout shift).
- [ ] **Scripts**: Load 3rd party scripts with `next/script` and `strategy="lazyOnload"`.

### Checkpoints
| Phase | Verification                                                     |
| ----- | ---------------------------------------------------------------- |
| 1     | Are you getting "Hydration Error"? (Server/Client HTML mismatch) |
| 2     | Is LCP (Largest Contentful Paint) < 2.5s?                        |
| 3     | Do sensitive data (API Key) leak to Client bundle?               |
