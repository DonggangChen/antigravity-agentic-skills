---
description: Unified Super-Workflow. Skill loading + engineering discipline. Run for every complex request.
---

# Super Protocol v2: Intelligent Engine

> [!CAUTION]
> ## 🇺🇸 LANGUAGE RULE - ABSOLUTE AND IMMUTABLE
> 
> | Area | Language | Example |
> |------|-----|-------|
> | Conversation, explanation, plan | **ENGLISH** | "Now we will create the API" |
> | Code, variables, functions | English | `getUserById()` |
> | Comments | English | `// Get the user` |
> | Commit messages | English | `feat: add login` |
> 
> **⚠️ CHECK THIS RULE IN EVERY MESSAGE! SWITCHING TO NON-ENGLISH IS FORBIDDEN!**

---

# PHASE 0: SKILL LOADING (MANDATORY)

> [!CAUTION]
> **⛔ THIS PHASE CANNOT BE SKIPPED! ⛔**
> 
> - Proceeding to Phase 1 without loading a skill is **FORBIDDEN**
> - Violating this rule = Breaking the Workflow
> - **No exceptions!**

---

## Step 0.1: MCP Health Check

// turbo
```javascript
mcp_skillport_search_skills({ query: "*" })
```

**Result Check:**
- ✅ Success → Proceed to Step 0.2
- ❌ Error/Timeout → **STOP**, notify user, do not proceed

---

## Step 0.2: Prompt Analysis and Skill Search

1. Extract **key technologies** from user request (React, Python, API, etc.)
2. Search for skills:

// turbo
```javascript
mcp_skillport_search_skills({ query: "<keywords>" })
```

---

## Step 0.3: Skill Loading

**Selection Rules:**
- Select the **top 3** skills with score **≥ 1.0**
- Load each one:

// turbo
```javascript
mcp_skillport_load_skill({ skill_id: "<skill_id>" })
```

**Fallback Rule:**
- If no suitable skill exists (all scores < 1.0) → load `code_review` skill
- **No prompt should remain skill-less!**

---

## ✅ CHECKPOINT: Is Phase 0 Complete?

**NEVER** proceed to Phase 1 without satisfying the following conditions:

| #   | Condition                   | Status |
| --- | --------------------------- | ------ |
| 1   | MCP health check successful | ☐      |
| 2   | At least 1 skill loaded     | ☐      |
| 3   | Loaded skills shown to user | ☐      |

**⛔ If all boxes are not checked → STOP!**

---

# PHASE 1: Project Environment Check

## Step 1.1: Workspace Check

- Is there an active workspace?
- If not → Ask user "Which folder are we working in?"

## Step 1.2: Project Config Check

Does `.agent/GEMINI.md` exist?

**If No** → Create:
```markdown
# Project: [PROJECT_NAME]

## Technologies
- [analyze package.json, requirements.txt etc.]

## Recent Updates
- [Date]: Project config created
```

**If Yes** → Read and load context

---

# PHASE 2: Strategy Determination

## Step 2.1: Ambiguity Check

- Is request clear? (e.g., "Change button color to blue") → Proceed to Phase 3
- Is request ambiguous? (e.g., "Improve the page") → Proceed to Step 2.2

## Step 2.2: Single Question Rule

- **DO NOT** ask multiple questions
- Ask **ONE** question, wait for answer
- Repeat until scope is clear

---

# PHASE 3: Planning

## Step 3.1: Create Task List

- Start task with `task_boundary`
- Create/update `task.md`

## Step 3.2: Micro Tasks

Each task should take **2-5 minutes**:

| ❌ Bad               | ✅ Good                  |
| ------------------- | ----------------------- |
| "Do Authentication" | "Create Login form"     |
| "Setup API"         | "Write GET endpoint"    |
| "Add test"          | "UserService unit test" |

## Step 3.3: User Approval

- Show plan to user
- Request approval with `notify_user`
- Exception: Proceed directly for simple and clear tasks

---

# PHASE 4: Engineering Cycle

## TDD Rule (Iron Law)

> **"Do not write code without writing tests!"**

| Step       | Action                          | Verification      |
| ---------- | ------------------------------- | ----------------- |
| 🔴 RED      | Write failing test              | Test must fail    |
| 🟢 GREEN    | Write minimal code to pass test | Test must pass    |
| 🔵 REFACTOR | Clean up code                   | Tests still green |

**Exceptions:** Config files, UI visuals → Define manual verification

## Verification Gate

Before saying "Done", **MUST**:

1. 🎯 Which command is proof?
2. ▶️ Run command
3. 👀 Check output
4. ✅ Say "done" only if successful

---

# PHASE 5: Git & Final Steps

## Step 5.1: Commit Conventions

| Type       | Description         | Example                   |
| ---------- | ------------------- | ------------------------- |
| `feat`     | New feature         | `feat: add login page`    |
| `fix`      | Bug fix             | `fix: resolve null error` |
| `docs`     | Documentation       | `docs: update README`     |
| `style`    | Formatting          | `style: fix indentation`  |
| `refactor` | Code restructuring  | `refactor: extract utils` |
| `test`     | Adding/fixing tests | `test: add unit tests`    |
| `chore`    | Build, CI, deps     | `chore: update deps`      |

**Format:** `<type>(<scope>): <description>`

## Step 5.2: Update Project Config

`.agent/GEMINI.md` → Add to "Recent Updates":
```markdown
- [DATE]: [Summary of work done]
```

## Step 5.3: Notify User

Complete task, **show proofs**.

---

# 🔄 REMEMBER IN EVERY MESSAGE

> [!IMPORTANT]
> ## Three Iron Rules
> 
> 1. **🇺🇸 SPEAK ENGLISH** - Everything excluding code is English
> 2. **📦 LOAD SKILL** - At least 1 skill mandatory (score ≥ 1.0)
> 3. **✅ PROVE IT** - Show proof before saying "Done"

