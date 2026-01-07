---
name: firestore_patterns
router_kit: FullStackKit
description: Firebase Firestore NoSQL patterns, real-time sync and security rules guide.
metadata:
  skillport:
    category: database
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, firestore patterns, git, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - realtime
---

# 🔥 Firestore Patterns

> Firebase Firestore NoSQL patterns guide.

---

## 📋 Basic Operations

```typescript
import { 
  collection, doc, getDoc, setDoc, 
  addDoc, updateDoc, deleteDoc, query, where 
} from 'firebase/firestore';

// Read
const docRef = doc(db, 'users', 'userId');
const docSnap = await getDoc(docRef);

// Create
await setDoc(doc(db, 'users', 'userId'), { name: 'John' });
await addDoc(collection(db, 'users'), { name: 'John' }); // Auto ID

// Update
await updateDoc(doc(db, 'users', 'userId'), { name: 'Jane' });

// Delete
await deleteDoc(doc(db, 'users', 'userId'));
```

---

## 🔄 Real-time Listeners

```typescript
import { onSnapshot } from 'firebase/firestore';

const unsubscribe = onSnapshot(
  doc(db, 'users', 'userId'),
  (doc) => {
    console.log('Data:', doc.data());
  }
);

// Cleanup
unsubscribe();
```

---

## 🔍 Queries

```typescript
const q = query(
  collection(db, 'users'),
  where('age', '>=', 18),
  where('status', '==', 'active'),
  orderBy('createdAt', 'desc'),
  limit(10)
);

const querySnapshot = await getDocs(q);
```

---

## 🔒 Security Rules

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /users/{userId} {
      allow read: if request.auth != null;
      allow write: if request.auth.uid == userId;
    }
  }
}
```

---

*Firestore Patterns v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Firebase Security Rules Guide](https://firebase.google.com/docs/firestore/security/get-started)

### Phase 1: Data Modeling
- [ ] **Access Patterns**: Model based on how you read data (do not normalize like SQL).
- [ ] **Subcollections**: Use subcollections to avoid exceeding 1MB document limit.
- [ ] **Denormalization**: Consider duplicating data to increase read performance.

### Phase 2: Security Implementation
- [ ] **Auth**: Add `request.auth != null` check to every rule.
- [ ] **Validation**: Validate incoming data (type, length) within security rules.
- [ ] **Testing**: Test rules with unit tests using Emulator.

### Phase 3: Optimization
- [ ] **Indexes**: Create composite indexes for complex queries.
- [ ] **Offline**: Enable offline persistence for mobile.

### Checkpoints
| Phase | Verification                                                                 |
| ----- | ---------------------------------------------------------------------------- |
| 1     | Does reading one document require reading 100 other documents? (Bad)         |
| 2     | Is there any place writable by everyone (`allow write: if true`)? (Critical) |
| 3     | Do queries give index error?                                                 |
