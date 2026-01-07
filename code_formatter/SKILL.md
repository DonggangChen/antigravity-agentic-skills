---
name: code_formatter
router_kit: FullStackKit
description: Automated code formatting, Prettier/ESLint integration and code style consistency guide.
metadata:
  skillport:
    category: development
    tags: [big data, cleaning, code formatter, csv, data analysis, data engineering, data science, database, etl pipelines, export, import, json, machine learning basics, migration, nosql, numpy, pandas, python data stack, query optimization, reporting, schema design, sql, statistics, transformation, visualization]      - code-style
---

# 🎨 Code Formatter

> Automated code formatting and style consistency guide.

---

## 📋 Prettier Configuration

### .prettierrc
```json
{
  "semi": true,
  "singleQuote": true,
  "tabWidth": 2,
  "trailingComma": "es5",
  "printWidth": 80,
  "bracketSpacing": true,
  "arrowParens": "avoid",
  "endOfLine": "lf"
}
```

### Commands
```bash
# Format single file
npx prettier --write src/file.ts

# Format all files
npx prettier --write "src/**/*.{ts,tsx,js,jsx,json,css,md}"

# Check without writing
npx prettier --check "src/**/*"
```

---

## 🔧 ESLint Integration

### .eslintrc.js
```javascript
module.exports = {
  extends: [
    'eslint:recommended',
    'plugin:@typescript-eslint/recommended',
    'plugin:react/recommended',
    'prettier', // Disables Prettier conflicts
  ],
  plugins: ['@typescript-eslint', 'react'],
  rules: {
    'no-console': 'warn',
    'no-unused-vars': 'error',
  },
};
```

### Commands
```bash
# Lint
npx eslint src/

# Lint and fix
npx eslint src/ --fix

# Specific files
npx eslint "src/**/*.{ts,tsx}"
```

---

## 🔄 Git Hooks (Husky + lint-staged)

### package.json
```json
{
  "lint-staged": {
    "*.{ts,tsx,js,jsx}": [
      "eslint --fix",
      "prettier --write"
    ],
    "*.{json,css,md}": [
      "prettier --write"
    ]
  }
}
```

### Setup
```bash
npx husky-init && npm install
npx husky add .husky/pre-commit "npx lint-staged"
```

---

## 📁 Ignore Files

### .prettierignore
```
node_modules/
dist/
build/
.next/
coverage/
*.min.js
```

### .eslintignore
```
node_modules/
dist/
build/
*.config.js
```

---

*Code Formatter v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Prettier Docs](https://prettier.io/docs/en/install.html)

### Phase 1: Installation
- [ ] **Packages**: Install `prettier`, `eslint` and relevant plugins.
- [ ] **Config**: Add `.prettierrc` and `.eslintrc` files to root directory.
- [ ] **Ignore**: Add `build/`, `dist/` to `.prettierignore` file.

### Phase 2: Automation
- [ ] **Scripts**: Add `format` and `lint` scripts to `package.json`.
- [ ] **VS Code**: Enable "Format on Save" in `.vscode/settings.json`.
- [ ] **Hooks**: Add pre-commit check with Husky and lint-staged.

### Phase 3: CI Integration
- [ ] **Pipeline**: Add `npm run lint` and `prettier --check` steps to CI process.

### Checkpoints
| Phase | Verification                                            |
| ----- | ------------------------------------------------------- |
| 1     | Do files change when `npm run format` runs?             |
| 2     | Does Husky prevent commit when there is incorrect code? |
| 3     | Does CI pipeline fail when there is a format error?     |
