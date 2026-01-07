---
name: performance_profiling
router_kit: FullStackKit
description: CPU/Memory profiling, bottleneck analysis, benchmark techniques and performance optimization guide.
metadata:
  skillport:
    category: optimization
    tags: [big data, cleaning, csv, data analysis, data engineering, data science, database, etl pipelines, export, import, json, machine learning basics, migration, nosql, numpy, pandas, performance profiling, python data stack, query optimization, reporting, schema design, sql, statistics, transformation, visualization]      - optimization
---

# ⚡ Performance Profiling

> CPU, Memory profiling and bottleneck analysis guide.

---

## 📋 Contents

1. [JavaScript/Node.js Profiling](#1-javascriptnodejs-profiling)
2. [React Profiling](#2-react-profiling)
3. [Memory Leak Detection](#3-memory-leak-detection)
4. [Benchmark Techniques](#4-benchmark-techniques)
5. [Database Profiling](#5-database-profiling)

---

## 1. JavaScript/Node.js Profiling

### Chrome DevTools
```javascript
// Console timing
console.time('operation');
// ... code
console.timeEnd('operation');

// Performance API
const start = performance.now();
// ... code
const end = performance.now();
console.log(`Execution time: ${end - start}ms`);
```

### Node.js Profiling
```bash
# CPU profiling
node --prof app.js
node --prof-process isolate-*.log > profile.txt

# Clinic.js (comprehensive)
npx clinic doctor -- node app.js
npx clinic flame -- node app.js
npx clinic bubbleprof -- node app.js
```

### V8 Profiler
```javascript
const v8Profiler = require('v8-profiler-next');

v8Profiler.startProfiling('CPU');
// ... code
const profile = v8Profiler.stopProfiling('CPU');
profile.export((error, result) => {
  fs.writeFileSync('profile.cpuprofile', result);
  profile.delete();
});
```

---

## 2. React Profiling

### React DevTools Profiler
```jsx
import { Profiler } from 'react';

function onRenderCallback(
  id, phase, actualDuration, baseDuration, startTime, commitTime
) {
  console.log({ id, phase, actualDuration, baseDuration });
}

<Profiler id="MyComponent" onRender={onRenderCallback}>
  <MyComponent />
</Profiler>
```

### why-did-you-render
```javascript
// wdyr.js
import React from 'react';
import whyDidYouRender from '@welldone-software/why-did-you-render';

whyDidYouRender(React, {
  trackAllPureComponents: true,
});
```

### Render Optimization
```jsx
// useMemo - calculation cache
const expensiveValue = useMemo(() => computeExpensive(a, b), [a, b]);

// useCallback - function reference
const handleClick = useCallback(() => doSomething(id), [id]);

// React.memo - component memoization
const MemoizedComponent = React.memo(MyComponent);
```

---

## 3. Memory Leak Detection

### Common Leak Sources
| Source           | Example                 | Solution                      |
| ---------------- | ----------------------- | ----------------------------- |
| Event listeners  | `addEventListener`      | `removeEventListener` cleanup |
| Timers           | `setInterval`           | `clearInterval` cleanup       |
| Closures         | Large objects reference | Weak references               |
| DOM references   | Detached DOM            | Assign null                   |
| Global variables | `window.data = large`   | Lit scope                     |

### Chrome DevTools Memory Tab
```
1. Memory tab → Heap snapshot
2. Perform actions
3. Take another snapshot
4. Compare snapshots (Comparison view)
5. Filter by "Detached" for DOM leaks
```

### Node.js Memory
```bash
# Memory usage monitoring
node --expose-gc app.js

# heapdump
npm install heapdump
```

```javascript
const heapdump = require('heapdump');
heapdump.writeSnapshot('./heap-' + Date.now() + '.heapsnapshot');
```

---

## 4. Benchmark Techniques

### JavaScript Benchmarking
```javascript
// Benchmark.js
const Benchmark = require('benchmark');
const suite = new Benchmark.Suite;

suite
  .add('Method A', () => methodA())
  .add('Method B', () => methodB())
  .on('cycle', (event) => console.log(String(event.target)))
  .on('complete', function() {
    console.log('Fastest: ' + this.filter('fastest').map('name'));
  })
  .run({ async: true });
```

### HTTP Benchmarking
```bash
# autocannon (Node.js)
npx autocannon -c 100 -d 30 http://localhost:3000

# wrk
wrk -t12 -c400 -d30s http://localhost:3000

# ab (Apache Bench)
ab -n 10000 -c 100 http://localhost:3000/
```

### Lighthouse CI
```bash
npx lhci autorun --collect.url=http://localhost:3000
```

---

## 5. Database Profiling

### PostgreSQL
```sql
-- Slow query log
ALTER SYSTEM SET log_min_duration_statement = 1000; -- 1s

-- EXPLAIN ANALYZE
EXPLAIN (ANALYZE, BUFFERS, FORMAT TEXT)
SELECT * FROM users WHERE email = 'test@example.com';

-- pg_stat_statements
SELECT query, calls, mean_time, total_time
FROM pg_stat_statements
ORDER BY total_time DESC
LIMIT 10;
```

### MongoDB
```javascript
// Profiling enable
db.setProfilingLevel(1, { slowms: 100 });

// Query profiler
db.system.profile.find().sort({ ts: -1 }).limit(10);

// Explain
db.users.find({ email: "test@example.com" }).explain("executionStats");
```

---

## 🎯 Quick Performance Checklist

```checklist
- [ ] Bundle size analysis (webpack-bundle-analyzer)
- [ ] Core Web Vitals (LCP, FID, CLS)
- [ ] Network waterfall analysis
- [ ] Memory leak check
- [ ] Database query optimization
- [ ] Caching strategy (Redis, CDN)
- [ ] Code splitting / Lazy loading
```

---

*Performance Profiling v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Chrome DevTools Performance Features](https://developer.chrome.com/docs/devtools/performance/) & [Node.js Diagnostics](https://nodejs.org/en/docs/guides/diagnostics/flame-graphs/)

### Phase 1: Capture
- [ ] **Tool Selection**: For CPU intensive jobs `Node --prof` or `py-spy`, For Frontend `Chrome DevTools`.
- [ ] **Environment**: Perform profiling in a Prod-like environment if possible, if not in Prod (with Sampling profiler).
- [ ] **Recording**: Capture at least 30-60 seconds to gather sufficient data.

### Phase 2: Analysis (Flamegraph)
- [ ] **Width**: Blocks occupying *wide* space in the graph (Functions consuming time) are targets.
- [ ] **Depth**: *Deep* stacks usually indicate recursion or complex framework calls.
- [ ] **Hot Path**: Find the most frequently called function with the highest total time.

### Phase 3: Optimization & Verification
- [ ] **De-optimization**: Clean up patterns that break V8 (JS) optimization (e.g., delete keyword, hidden class changes).
- [ ] **Memory**: Check Garbage Collection (Minor/Major GC) frequency. Too frequent GC = Memory thrashing.
- [ ] **Verify**: Take another profile after fix and prove the difference.

### Checkpoints
| Phase | Verification                                                                            |
| ----- | --------------------------------------------------------------------------------------- |
| 1     | Is Debug mode (logging) off while profiling?                                            |
| 2     | Are named functions used instead of anonymous functions? (For stack trace readability). |
| 3     | Is "Idle" time separated from "System" time?                                            |
