---
name: clerk_auth
router_kit: SecurityKit
description: Clerk modern authentication, WebAuthn, passkeys and social auth integration guide.
metadata:
  skillport:
    category: authentication
    tags: [accessibility, api integration, backend, browser apis, clerk auth, client-side, components, css3, debugging, deployment, frameworks, frontend, fullstack, html5, javascript, libraries, node.js, npm, performance optimization, responsive design, seo, state management, testing, typescript, ui/ux, web development]      - webauthn
---

# 🔐 Clerk Auth

> Clerk modern authentication guide.

---

## 📋 Installation

```bash
npm install @clerk/nextjs
```

### middleware.ts
```typescript
import { clerkMiddleware } from '@clerk/nextjs/server';

export default clerkMiddleware();

export const config = {
  matcher: ['/((?!.*\\..*|_next).*)', '/', '/(api|trpc)(.*)'],
};
```

---

## 🔧 Provider Setup

```typescript
// app/layout.tsx
import { ClerkProvider } from '@clerk/nextjs';

export default function Layout({ children }) {
  return (
    <ClerkProvider>
      <html>
        <body>{children}</body>
      </html>
    </ClerkProvider>
  );
}
```

---

## 👤 Components

```typescript
import { 
  SignInButton, 
  SignUpButton, 
  UserButton,
  SignedIn,
  SignedOut 
} from '@clerk/nextjs';

function Header() {
  return (
    <header>
      <SignedOut>
        <SignInButton />
        <SignUpButton />
      </SignedOut>
      <SignedIn>
        <UserButton />
      </SignedIn>
    </header>
  );
}
```

---

## 🔒 Server-side Auth

```typescript
import { auth, currentUser } from '@clerk/nextjs/server';

export async function GET() {
  const { userId } = await auth();
  
  if (!userId) {
    return new Response('Unauthorized', { status: 401 });
  }
  
  const user = await currentUser();
  return Response.json({ user });
}
```

---

*Clerk Auth v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Clerk Documentation](https://clerk.com/docs)

### Phase 1: Integration
- [ ] **Install**: `@clerk/nextjs` package and API Keys.
- [ ] **Middleware**: Separate Public/Private routes with `clerkMiddleware`.
- [ ] **Provider**: Wrap root layout with `ClerkProvider`.

### Phase 2: UX & Components
- [ ] **Header**: Set up conditional render structure with `SignedIn` / `SignedOut`.
- [ ] **Profile**: Add `UserButton` or `UserProfile` component.
- [ ] **Custom Flow**: Build Custom Sign-in page if necessary.

### Phase 3: Server Logic
- [ ] **Protect**: Check `auth().userId` in API routes.
- [ ] **Data**: Access user data with `currentUser()`.
- [ ] **Sync**: Map user to your own database using Webhook (Optional).

### Checkpoints
| Phase | Verification                                                  |
| ----- | ------------------------------------------------------------- |
| 1     | Does Middleware block static files (image, css)? (Should not) |
| 2     | Does it redirect to login page after sign-out?                |
| 3     | Do API requests return 401 when sent without token?           |
