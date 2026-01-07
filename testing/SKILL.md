---
name: testing
router_kit: FullStackKit
description: Comprehensive test strategies and 2025 test tools. Unit, integration, e2e and visual testing.
metadata:
  skillport:
    category: quality
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - quality-assurance
---

# Testing Skill - Quality Assurance and Test Strategies

> Systematic test approaches for ensuring software quality.
> 2025 modern test tools and pyramid test strategy.

---

# 📋 Table of Contents

- [Testing Skill - Quality Assurance and Test Strategies](#testing-skill---quality-assurance-and-test-strategies)
- [📋 Table of Contents](#-table-of-contents)
- [1. Test Pyramid](#1-test-pyramid)
- [2. Unit Testing (Jest)](#2-unit-testing-jest)
  - [2.1 Basic Test Structure](#21-basic-test-structure)
  - [2.2 Mocking](#22-mocking)
- [3. Integration Testing](#3-integration-testing)
  - [3.1 API Integration](#31-api-integration)
- [4. E2E Testing (Playwright)](#4-e2e-testing-playwright)
  - [4.1 Login Flow](#41-login-flow)
- [5. Visual Regression Testing](#5-visual-regression-testing)
- [6. TDD (Test Driven Development)](#6-tdd-test-driven-development)
- [7. Test Writing Rules](#7-test-writing-rules)
  - [🔄 Workflow](#-workflow)
    - [Phase 1: Strategy \& Test Plan](#phase-1-strategy--test-plan)
    - [Phase 2: Implementation \& Interaction](#phase-2-implementation--interaction)
    - [Phase 3: Verification \& CI/CD](#phase-3-verification--cicd)
    - [Checkpoints](#checkpoints)

---

# 1. Test Pyramid

```
      / \
     /E2E\  ← Least (Slow, Expensive, Fragile)
    /-----\
   / INTEGR\ ← Medium (Balance of Speed and Confidence)
  /---------\
 /   UNIT    \ ← Most (Fast, Cheap, Isolated)
/-------------\
```

| Type            | Scope                      | Speed | Cost |
| --------------- | -------------------------- | ----- | ---- |
| **Unit**        | Function/Component         | ⚡⚡⚡   | 💸    |
| **Integration** | DB/API/Module interactions | ⚡⚡    | 💸💸   |
| **E2E**         | Full user flow             | ⚡     | 💸💸💸  |

---

# 2. Unit Testing (Jest)

## 2.1 Basic Test Structure

```typescript
import { sum } from './math';

describe('sum function', () => {
  test('adds 1 + 2 to equal 3', () => {
    expect(sum(1, 2)).toBe(3);
  });

  test('handles zero correctly', () => {
    expect(sum(0, 0)).toBe(0);
  });
});
```

## 2.2 Mocking

```typescript
// Service mocking
jest.mock('./apiService');
import { fetchData } from './apiService';

test('should use mocked data', async () => {
  (fetchData as jest.Mock).mockResolvedValue({ id: 1, name: 'Test' });
  const data = await getServiceData();
  expect(data.name).toBe('Test');
});
```

---

# 3. Integration Testing

## 3.1 API Integration

```typescript
import request from 'supertest';
import app from './app';

describe('POST /api/users', () => {
  test('should create a new user and return it', async () => {
    const response = await request(app)
      .post('/api/users')
      .send({ email: 'test@example.com', name: 'Test' });

    expect(response.status).toBe(201);
    expect(response.body.email).toBe('test@example.com');
  });
});
```

---

# 4. E2E Testing (Playwright)

## 4.1 Login Flow

```typescript
import { test, expect } from '@playwright/test';

test('user can login successfully', async ({ page }) => {
  await page.goto('/login');
  await page.fill('input[name="email"]', 'user@example.com');
  await page.fill('input[name="password"]', 'password123');
  await page.click('button[type="submit"]');

  await expect(page).toHaveURL('/dashboard');
  await expect(page.locator('h1')).toContainText('Hoş Geldiniz');
});
```

---

# 5. Visual Regression Testing

```typescript
// Playwright visual test
test('dashboard visual comparison', async ({ page }) => {
  await page.goto('/dashboard');
  await expect(page).toHaveScreenshot('dashboard.png');
});
```

---

# 6. TDD (Test Driven Development)

1. **RED:** Write test and see it failing.
2. **GREEN:** Write minimum code required to pass the test.
3. **REFACTOR:** Clean up code and test, make it compliant with standards.

---

# 7. Test Writing Rules

- **AAA Pattern:** Arrange, Act, Assert.
- **Isolation:** Tests must be independent of each other.
- **Speed:** Unit tests must run very fast.
- **Readable:** Test name should clearly say what it tests.
- **Deterministic:** Same result with same input always.

---

## 🔄 Workflow

> **Source:** [Spotify's Testing Pyramid](https://engineering.atspotify.com/2018/01/testing-of-microservices/) & [Playwright Best Practices](https://playwright.dev/docs/best-practices)

### Phase 1: Strategy & Test Plan
- [ ] **Define Coverage Scope**: Determine critical user flows and logic requiring testing.
- [ ] **Choose Level**: Select correct test level according to testing pyramid (Unit -> Integration -> E2E).
- [ ] **Infrastructure Setup**: Configure Vitest/Jest or Playwright environment, prepare necessary mocks.

### Phase 2: Implementation & Interaction
- [ ] **Unit Tests**: Test functions and UI components in isolation (using Stub/Mock).
- [ ] **Integration Flows**: Verify compatibility of services and database/API layer.
- [ ] **E2E Scenarios**: Simulate full flows like "Login -> Checkout" on real browser with Playwright.

### Phase 3: Verification & CI/CD
- [ ] **Coverage Audit**: Analyze test coverage (Line/Branch coverage) and fill gaps.
- [ ] **Visual Regressions**: Capture unexpected interface changes with "Snapshot Testing".
- [ ] **Automated Pipeline**: Ensure all tests run in CI/CD stage (before Check-in).

### Checkpoints
| Phase | Verification                                                                    |
| ----- | ------------------------------------------------------------------------------- |
| 1     | Are tests purified from "Flaky" (sometimes passing sometimes failing) property? |
| 2     | Do mock data reflect real world scenarios (Edge cases)?                         |
| 3     | Do E2E tests simulate production environment exactly?                           |

---
*Testing v2.5 - With Workflow*
