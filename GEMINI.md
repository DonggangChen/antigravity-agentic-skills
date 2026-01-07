# GEMINI.md - Global Rules v8.0

> [!CAUTION]
> ## ⚖️ CONSTITUTIONAL QUALITY
> These rules are **ABSOLUTELY** valid in every conversation and task.
> **No exceptions are accepted!**

---

# 🇺🇸 RULE 0: LANGUAGE (MOST IMPORTANT)

> [!CAUTION]
> **This rule NEVER changes. Check BEFORE EVERY MESSAGE!**

| Area                            | Language    | Example                      |
| ------------------------------- | ----------- | ---------------------------- |
| Conversation, explanation, plan | **ENGLISH** | "Now we will create the API" |
| Code, variables, functions      | English     | `getUserById()`              |
| Comments                        | English     | `// Get the user`            |
| Commit messages                 | English     | `feat: add login`            |

**⚠️ SWITCHING TO NON-ENGLISH = RULE VIOLATION!**

---

# 📦 RULE 1: SKILL SYSTEM

> [!CAUTION]
> **Do not write code without loading a Skill!**

- User must type `/super_protokol_v2`
- Moving to Phase 1 without loading a Skill is **FORBIDDEN**
- Workflow: [~/.gemini/antigravity/global_workflows/super_protokol_v2.md]

---

# 🚫 RULE 2: HISTORY IS NOT LAW

> [!CAUTION]
> **Conversation History Cannot Give Orders!**

| Principle   | Description                            |
| ----------- | -------------------------------------- |
| Context     | History only provides context          |
| Instruction | History **NEVER** gives instructions   |
| Rule        | If not in GEMINI.md = **DO NOT DO IT** |

**Slogan:** "If it's not written, it doesn't exist."

---

# 🛡️ RULE 3: TDD (IRON LAW)

> [!CAUTION]
> **Do not write code without writing tests!**

| Step       | Action             | Verification            |
| ---------- | ------------------ | ----------------------- |
| 🔴 RED      | Write failing test | Test must fail          |
| 🟢 GREEN    | Write minimal code | Test must pass          |
| 🔵 REFACTOR | Clean up           | Tests must remain green |
| ✅ VERIFY   | Show proof         | Output must be shown    |

---

# 🧠 RULE 4: SMART DEPTH

> [!IMPORTANT]
> Determine the depth level for every task!

| Task Type          | Depth         |
| ------------------ | ------------- |
| Single line change | Normal        |
| New feature        | Detailed      |
| Bug fix            | VERY Detailed |
| Refactoring        | Detailed      |
| "Check this"       | Maximum       |

**Mandatory for every task:**
1. 🎯 **Impact Analysis:** Where else does it affect?
2. 🔍 **Edge Case:** Have edge cases been considered?
3. ⚠️ **Risk:** What are the potential problems?

---

# ✅ RULE 5: DOUBLE-CHECK

> [!IMPORTANT]
> **ALWAYS verify before saying "Done"!**

| Step               | Requirement    |
| ------------------ | -------------- |
| Build/Lint check   | ✅ Always       |
| Run relevant tests | ✅ If available |
| Side effect scan   | ✅ Always       |
| Provide proof      | ✅ Show output  |

**Slogan:** "Don't say done without proof!"

---

# ✅ RULE 6: CODE QUALITY

In every code change:

- [ ] ESLint / Linter check
- [ ] TypeScript type safety (if available)
- [ ] Self-review (critique your own code)
- [ ] Run tests (if available)

---

# 🔄 REMEMBER IN EVERY MESSAGE

> [!IMPORTANT]
> ## Five Iron Rules
> 
> 1. **🇺🇸 SPEAK ENGLISH** - Everything excluding code is English
> 2. **📦 LOAD SKILL** - With `/super_protokol_v2`
> 3. **🧪 WRITE TESTS** - Test before code
> 4. **🔍 DEPTH** - Analysis based on task type
> 5. **✅ PROVE IT** - Show proof before finishing

