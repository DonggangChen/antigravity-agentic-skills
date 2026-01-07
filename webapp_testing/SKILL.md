---
name: webapp_testing
router_kit: FullStackKit
description: Toolkit for interacting with and testing local web applications using Playwright. Supports verifying frontend functionality, debugging UI behavior, capturing browser screenshots, and viewing browser logs.
license: Complete terms in LICENSE.txt
metadata:
  skillport:
    category: auto-healed
    tags: [accessibility, api integration, backend, browser, browser apis, client-side, components, css3, cypress, debugging, deployment, e2e, frameworks, frontend, fullstack, html5, integration, javascript, libraries, node.js, npm, performance optimization, playwright, responsive design, seo, state management, testing, typescript, ui/ux, web development, webapp testing]
---

# Web Application Testing

To test local web applications, write native Python Playwright scripts.

**Helper Scripts Available**:
- `scripts/with_server.py` - Manages server lifecycle (supports multiple servers)

**Always run scripts with `--help` first** to see usage. DO NOT read the source until you try running the script first and find that a customized solution is abslutely necessary. These scripts can be very large and thus pollute your context window. They exist to be called directly as black-box scripts rather than ingested into your context window.

## Decision Tree: Choosing Your Approach

```
User task → Is it static HTML?
    ├─ Yes → Read HTML file directly to identify selectors
    │         ├─ Success → Write Playwright script using selectors
    │         └─ Fails/Incomplete → Treat as dynamic (below)
    │
    └─ No (dynamic webapp) → Is the server already running?
        ├─ No → Run: python scripts/with_server.py --help
        │        Then use the helper + write simplified Playwright script
        │
        └─ Yes → Reconnaissance-then-action:
            1. Navigate and wait for networkidle
            2. Take screenshot or inspect DOM
            3. Identify selectors from rendered state
            4. Execute actions with discovered selectors
```

## Example: Using with_server.py

To start a server, run `--help` first, then use the helper:

**Single server:**
```bash
python scripts/with_server.py --server "npm run dev" --port 5173 -- python your_automation.py
```

**Multiple servers (e.g., backend + frontend):**
```bash
python scripts/with_server.py \
  --server "cd backend && python server.py" --port 3000 \
  --server "cd frontend && npm run dev" --port 5173 \
  -- python your_automation.py
```

To create an automation script, include only Playwright logic (servers are managed automatically):
```python
from playwright.sync_api import sync_playwright

with sync_playwright() as p:
    browser = p.chromium.launch(headless=True) # Always launch chromium in headless mode
    page = browser.new_page()
    page.goto('http://localhost:5173') # Server already running and ready
    page.wait_for_load_state('networkidle') # CRITICAL: Wait for JS to execute
    # ... your automation logic
    browser.close()
```

## Reconnaissance-Then-Action Pattern

1. **Inspect rendered DOM**:
   ```python
   page.screenshot(path='/tmp/inspect.png', full_page=True)
   content = page.content()
   page.locator('button').all()
   ```

2. **Identify selectors** from inspection results

3. **Execute actions** using discovered selectors

## Common Pitfall

❌ **Don't** inspect the DOM before waiting for `networkidle` on dynamic apps
✅ **Do** wait for `page.wait_for_load_state('networkidle')` before inspection

## 🔄 Workflow

> **Source:** [Playwright Python Documentation](https://playwright.dev/python/docs/intro) & [Testing Hybrid Web Apps (2025)](https://github.com/microsoft/playwright)

### Phase 1: Environment & Reconnaissance
- [ ] **Server Management**: Automatically start test environment (Frontend/Backend) using `scripts/with_server.py --server "..."`.
- [ ] **DOM Inspection**: Perform selector analysis with `page.content()` and screenshot after reaching `networkidle` state.
- [ ] **Selector Strategy**: Determine `role`, `text` or `test-id` based selectors for stable tests.

### Phase 2: Scripting & Automation
- [ ] **Action Chain**: Code click, form filling and navigation steps using Playwright API.
- [ ] **Assertion Logic**: Check page title, element visibility or URL correctness with `expect()` methods.
- [ ] **Visual Testing**: Perform Snapshot comparisons (`screenshot` audit) for interface consistency.

### Phase 3: Debug & Reporting
- [ ] **Log Audit**: Audit browser console outputs (Console logs) and network errors (Failed requests).
- [ ] **Trace Analysis**: Perform step-by-step debugging using Playwright Trace Viewer for failed tests.
- [ ] **CI/CD Alignment**: Verify that tests run smoothly in headless mode and continuous integration pipeline.

### Checkpoints
| Phase | Verification                                            |
| ----- | ------------------------------------------------------- |
| 1     | Are server port conflicts and timeout values optimized? |
| 2     | Is `wait_for_selector` used for dynamic contents?       |
| 3     | Are test data (Mock data) cleaned up in every run?      |

---
*Webapp Testing v2.0 - With Workflow*