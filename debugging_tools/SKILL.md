---
name: debugging_tools
router_kit: FullStackKit
description: Debugging tools - console, debugger, network, profiling.
metadata:
  skillport:
    category: quality
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, debugging tools, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - debugging-methodology
---

# 🛠️ Debugging Tools

> Debugging tools and techniques.

---

## 💻 Console Methods

```typescript
console.log('Value:', value);
console.table(arrayData);
console.group('Section');
console.trace('Stack trace');
console.time('op'); /* ... */ console.timeEnd('op');
```

---

## 🔴 Debugger

```typescript
function process(data) {
  debugger; // Breakpoint
  return transform(data);
}
```

```bash
# Node Inspector
node --inspect src/index.js
# chrome://inspect
```

---

## 🌐 Network

```typescript
// Axios interceptor
axios.interceptors.request.use(config => {
  console.log('Request:', config);
  return config;
});
```

---

## 📊 Logging

```typescript
import pino from 'pino';

const logger = pino({ level: 'info' });
logger.info({ userId }, 'User logged in');
logger.error({ err }, 'Login failed');
```

---

## 🔄 Workflow

> **Kaynak:** [OpenTelemetry Documentation](https://opentelemetry.io/docs/) & [Chrome DevTools Debugging Guide](https://developer.chrome.com/docs/devtools/javascript/)

## 🔄 Workflow

> **Source:** [OpenTelemetry Documentation](https://opentelemetry.io/docs/) & [Chrome DevTools Debugging Guide](https://developer.chrome.com/docs/devtools/javascript/)

### Phase 1: Observation & Reproduction
- [ ] **Logging Audit**: Check if sufficient context is logged during error (Pino/Winston).
- [ ] **Reproduction**: Identify necessary inputs to consistently reproduce the error in local or `staging` environment.
- [ ] **Network Analysis**: Monitor API calls and payloads via Browser Network Tab or Proxyman/Charles.

### Phase 2: Strategic Debugging
- [ ] **Breakpoints**: Trace where state breaks step-by-step (Step-over/Step-into) using `debugger` or IDE breakpoints.
- [ ] **Binary Search**: Temporarily disable large parts of code to find the faulty block (Divide and Conquer).
- [ ] **Memory Profiling**: Analyze objects taking up most space by taking Heap Snapshot in case of Memory leak.

### Phase 3: Fix & Verification
- [ ] **Root Cause Fix**: Fix the root cause of the error, not just the symptom.
- [ ] **Regression Testing**: Run relevant tests to ensure the fix didn't break anything else.
- [ ] **Observability Update**: Add a new alert or metric for faster detection of similar errors in the future.

### Checkpoints
| Phase | Verification                                                                 |
| ----- | ---------------------------------------------------------------------------- |
| 1     | Was the error solved with persistent logs or "deletable" logs (console.log)? |
| 2     | Can entire request flow be traced via Trace ID (Distributed Tracing)?        |
| 3     | Was a test scenario added for the bug fix?                                   |

---
*Debugging Tools v1.5 - With Workflow*
