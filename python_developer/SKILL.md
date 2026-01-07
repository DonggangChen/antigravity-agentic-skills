---
name: python_developer
router_kit: AIKit
description: Python best practices, FastAPI, Pandas, and data science libraries usage.
metadata:
  skillport:
    category: development
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, python developer, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - data-science
---

# 🐍 Python Developer

> Modern Python development standards and library ecosystem.

---

*Python Developer v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [PEP 8 - Style Guide for Python Code](https://peps.python.org/pep-0008/) & [FastAPI Documentation](https://fastapi.tiangolo.com/learn/)

### Phase 1: Environment & Dependency
- [ ] **Venv**: Set up an isolated virtual environment (`venv` or `poetry`) for each project.
- [ ] **Type Hints**: Increase code readability using Python 3.9+ Type Hints.

### Phase 2: API & Application Logic
- [ ] **Backend**: Create asynchronous (`async def`) endpoints with FastAPI.
- [ ] **Validation**: Validate input data with `Pydantic` models.
- [ ] **Concurrency**: Use `Multiprocessing` for CPU heavy jobs, `AsyncIO` for I/O heavy jobs.

### Phase 3: Testing & Code Quality
- [ ] **Linting**: Perform static code analysis with `Ruff` or `Flake8`.
- [ ] **Testing**: Write comprehensive unit and integration tests with `Pytest`.

### Checkpoints
| Phase | Verification                                                          |
| ----- | --------------------------------------------------------------------- |
| 1     | Does code comply with PEP 8 standards?                                |
| 2     | Are dependencies (`requirements.txt` or `pyproject.toml`) up-to-date? |
| 3     | Are Global interpreter lock (GIL) limitations considered?             |
