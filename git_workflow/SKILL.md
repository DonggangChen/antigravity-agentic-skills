---
name: git_workflow
router_kit: FullStackKit
description: Branch strategy, commit conventions, merge conflict resolution and Git best practices guide.
metadata:
  skillport:
    category: development
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, git workflow, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - workflow
---

# 🌿 Git Workflow

> Branch strategy, commit conventions and Git best practices guide.

---

## 📋 Table of Contents

1. [Branching Strategies](#1-branching-strategies)
2. [Commit Conventions](#2-commit-conventions)
3. [Merge vs Rebase](#3-merge-vs-rebase)
4. [Conflict Resolution](#4-conflict-resolution)
5. [Useful Commands](#5-useful-commands)

---

## 1. Branching Strategies

### Git Flow
```
main (production)
  └── develop
        ├── feature/user-auth
        ├── feature/payment
        └── release/v1.2.0
              └── hotfix/critical-bug
```

### GitHub Flow (Recommended - Simple)
```
main (always deployable)
  ├── feature/add-login
  ├── fix/button-style
  └── chore/update-deps
```

### Branch Naming
```bash
# Feature
feature/user-authentication
feature/JIRA-123-add-payment

# Bug Fix
fix/login-redirect-issue
bugfix/memory-leak

# Hotfix (production)
hotfix/critical-security-patch

# Other
chore/update-dependencies
refactor/auth-module
docs/api-documentation
```

---

## 2. Commit Conventions

### Conventional Commits
```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

### Types
| Type       | Description                 |
| ---------- | --------------------------- |
| `feat`     | New feature                 |
| `fix`      | Bug fix                     |
| `docs`     | Documentation               |
| `style`    | Formatting (no code change) |
| `refactor` | Refactoring                 |
| `perf`     | Performance improvement     |
| `test`     | Adding/fixing tests         |
| `chore`    | Build, CI, dependencies     |
| `ci`       | CI configuration            |
| `revert`   | Revert commit               |

### Örnekler
```bash
feat(auth): add OAuth2 login support

fix(api): resolve null pointer in user endpoint
Closes #123

refactor!: drop support for Node 14
BREAKING CHANGE: Minimum Node version is now 18

chore(deps): update lodash to 4.17.21
```

### Commit Message Rules
```
✅ CORRECT:
- Imperative mood: "Add feature" (not "Added" or "Adds")
- 50 character title limit
- Start with capital letter, no period
- Descriptive body (why, how)

❌ INCORRECT:
- "Fixed stuff"
- "WIP"
- "asdfasdf"
- "Updated code"
```

---

## 3. Merge vs Rebase

### Merge
```bash
# Feature branch'i main'e merge
git checkout main
git merge feature/user-auth

# Creates merge commit
# History is preserved
```

### Rebase
```bash
# Rebase feature branch onto main
git checkout feature/user-auth
git rebase main

# Linear history
# Commits are rewritten
```

### Which When?
| Situation             | Strategy     |
| --------------------- | ------------ |
| Public/shared branch  | Merge        |
| Local feature branch  | Rebase       |
| Feature merge to main | Squash merge |
| Hotfix                | Merge        |

### Squash Merge
```bash
git checkout main
git merge --squash feature/user-auth
git commit -m "feat(auth): add user authentication"
```

---

## 4. Conflict Resolution

### Conflict Markers
```
<<<<<<< HEAD
Current branch content
=======
Incoming branch content
>>>>>>> feature-branch
```

### Resolution Steps
```bash
# 1. View conflicts
git status

# 2. Edit files (remove markers)

# 3. Stage resolved files
git add <resolved-file>

# 4. Continue merge/rebase
git merge --continue
# or
git rebase --continue
```

### With VS Code
```bash
# Accept Current Change
# Accept Incoming Change
# Accept Both Changes
# Compare Changes
```

### Abort
```bash
git merge --abort
git rebase --abort
```

---

## 5. Useful Commands

### History
```bash
# Beautiful log
git log --oneline --graph --all

# Last 10 commits
git log -10 --oneline

# File history
git log --follow -p -- path/to/file
```

### Undo
```bash
# Undo last commit (keep changes)
git reset --soft HEAD~1

# Undo last commit completely
git reset --hard HEAD~1

# Revert commit (create new commit)
git revert <commit-hash>

# Unstage staged file
git restore --staged <file>

# Undo changes
git restore <file>
```

### Stash
```bash
# Stash changes
git stash

# Stash with message
git stash push -m "WIP: feature X"

# Stash list
git stash list

# Apply last stash
git stash pop

# Apply specific stash
git stash apply stash@{2}
```

### Interactive Rebase
```bash
# Edit last 3 commits
git rebase -i HEAD~3

# In opened editor:
pick abc1234 First commit
squash def5678 Second commit  # Merge with previous
reword ghi9012 Third commit   # Change message
```

### Cherry Pick
```bash
# Pick specific commit
git cherry-pick <commit-hash>

# Multiple
git cherry-pick <hash1> <hash2>
```

---

*Git Workflow v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Atlassian Git Workflows](https://www.atlassian.com/git/tutorials/comparing-workflows) & [Trunk Based Development](https://trunkbaseddevelopment.com/)

### Phase 1: Branching
- [ ] **Strategy**: Use "Trunk Based Development" (short-lived feature branches) for most teams.
- [ ] **Naming**: Standardize `feat/` `fix/` prefixes.
- [ ] **Lifetime**: Branch lifetime should not exceed 2 days. If it does, split it.

### Phase 2: Committing
- [ ] **Atomic**: A commit should only change one thing.
- [ ] **Message**: Enforce `feat(auth): add login` format (Conventional Commits).
- [ ] **Verification**: Run linter/test with `pre-commit` hook.

### Phase 3: Merging
- [ ] **Review**: Do not merge without Code Owner approval.
- [ ] **Method**: Prefer `Squash Merge` to keep history clean.
- [ ] **Cleanup**: Delete branch after merge.

### Checkpoints
| Phase | Verification                                           |
| ----- | ------------------------------------------------------ |
| 1     | Is Main branch deployable (Green) at any time?         |
| 2     | Does reading `git log --oneline` tell a story?         |
| 3     | Is there a risk of code loss while resolving conflict? |
