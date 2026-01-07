---
name: vitest_runner
router_kit: FullStackKit
description: Modern JavaScript/TypeScript testing with Vitest including mocking and coverage.
metadata:
  skillport:
    category: auto-healed
    tags: [architecture, assertions, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, jest compatible, mocking, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, unit testing, utilities, version control, vite, vitest runner, workflow]
---

# Vitest

## Description

Modern JavaScript/TypeScript testing with Vitest including mocking and coverage.

## When to Use

- Testing JavaScript/TypeScript
- React component testing
- Unit and integration tests

---

## Core Patterns

### Basic Tests

```typescript
import { describe, it, expect } from 'vitest';

describe('math', () => {
  it('should add numbers', () => {
    expect(1 + 1).toBe(2);
  });

  it('should throw on invalid input', () => {
    expect(() => divide(1, 0)).toThrow('Division by zero');
  });
});
```

### Mocking

```typescript
import { vi, describe, it, expect } from 'vitest';

// Mock module
vi.mock('./api', () => ({
  fetchUser: vi.fn().mockResolvedValue({ id: 1 })
}));

// Mock function
const callback = vi.fn();
callback('arg');
expect(callback).toHaveBeenCalledWith('arg');
```

### Async Tests

```typescript
it('should fetch data', async () => {
  const data = await fetchData();
  expect(data).toEqual({ id: 1 });
});

it('should reject on error', async () => {
  await expect(fetchData()).rejects.toThrow('Error');
});
```

### React Testing

```typescript
import { render, screen } from '@testing-library/react';
import { userEvent } from '@testing-library/user-event';

it('should handle click', async () => {
  const onClick = vi.fn();
  render(<Button onClick={onClick}>Click</Button>);

  await userEvent.click(screen.getByRole('button'));
  expect(onClick).toHaveBeenCalled();
});
```

## 🔄 Workflow

> **Source:** [Vitest Official Documentation](https://vitest.dev/guide/) & [Vite + Testing Best Practices](https://github.com/vitest-dev/vitest)

### Phase 1: Environment & Setup
- [ ] **Vite Integration**: Verify that `vitest.config.ts` file matches Vite settings.
- [ ] **Environment Choice**: Select `jsdom` or `happy-dom` for web projects, `node` environment for backend.
- [ ] **Global Mocks**: Define global mocks for frequently used external services (API, LocalStorage) in `setup.ts`.

### Phase 2: Unit & Component Testing
- [ ] **Isolation Layer**: Isolate dependencies using `vi.mock()` and test only the target unit.
- [ ] **Assertion Strategy**: Verify expected results (be.truthy, toEqual, toBeCalled) using `expect` methods.
- [ ] **Snapshot Testing**: Capture unexpected interface changes in UI components using `toMatchSnapshot()`.

### Phase 3: Performance & Coverage
- [ ] **Watch Mode**: Keep tests in `watch` mode during development process to get instant feedback.
- [ ] **Coverage Analysis**: Report test coverage using `v8` or `istanbul` provider.
- [ ] **Dependency Cleanup**: Prevent data pollution between tests using `vi.clearAllMocks()`.

### Checkpoints
| Phase | Verification                                                                           |
| ----- | -------------------------------------------------------------------------------------- |
| 1     | Are test files in `*.test.ts` or `*.spec.ts` format?                                   |
| 2     | Are async codes (`async/await`) handled correctly?                                     |
| 3     | Is `toEqual` (value) used instead of `toBe` (reference) in complex object comparisons? |

---
*Vitest Runner v1.5 - With Workflow*
