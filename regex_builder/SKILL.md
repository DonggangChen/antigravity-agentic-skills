---
name: regex_builder
router_kit: FullStackKit
description: Regular expression creation, testing, debugging and explanation guide.
metadata:
  skillport:
    category: development
    tags: [accessibility, api integration, backend, browser apis, client-side, components, css3, debugging, deployment, frameworks, frontend, fullstack, html5, javascript, libraries, node.js, npm, performance optimization, regex builder, responsive design, seo, state management, testing, typescript, ui/ux, web development]      - text-processing
---

# 🔤 Regex Builder

> Regular expression creation and testing guide.

---

## 📋 Basic Syntax

### Character Classes
| Pattern | Matches                | Example              |
| ------- | ---------------------- | -------------------- |
| `.`     | Any character          | `a.c` → "abc", "a1c" |
| `\d`    | Digit [0-9]            | `\d+` → "123"        |
| `\w`    | Word char [a-zA-Z0-9_] | `\w+` → "hello_123"  |
| `\s`    | Whitespace             | `a\sb` → "a b"       |
| `\D`    | Not digit              | `\D+` → "abc"        |
| `\W`    | Not word char          | `\W+` → "!@#"        |

### Quantifiers
| Pattern | Meaning         | Example                        |
| ------- | --------------- | ------------------------------ |
| `*`     | 0 or more       | `ab*c` → "ac", "abc", "abbc"   |
| `+`     | 1 or more       | `ab+c` → "abc", "abbc"         |
| `?`     | 0 or 1          | `ab?c` → "ac", "abc"           |
| `{n}`   | Exactly n times | `a{3}` → "aaa"                 |
| `{n,m}` | Between n and m | `a{2,4}` → "aa", "aaa", "aaaa" |
| `{n,}`  | At least n      | `a{2,}` → "aa", "aaa", ...     |

### Anchors
| Pattern | Meaning           |
| ------- | ----------------- |
| `^`     | Start of line     |
| `$`     | End of line       |
| `\b`    | Word boundary     |
| `\B`    | Non-word boundary |

---

## 🔧 Common Patterns

### Email
```regex
^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$
```

### URL
```regex
https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)
```

### Phone (TR)
```regex
^(\+90|0)?[0-9]{10}$
```

### IP Address
```regex
^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)\.?\b){4}$
```

### Date (YYYY-MM-DD)
```regex
^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])$
```

### Password (Strong)
```regex
^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$
```

---

## 🧪 Test Commands

### JavaScript
```javascript
const regex = /pattern/flags;
regex.test('string');      // true/false
'string'.match(regex);     // matches array
'string'.replace(regex, 'replacement');
```

### Python
```python
import re

re.search(r'pattern', 'string')
re.findall(r'pattern', 'string')
re.sub(r'pattern', 'replacement', 'string')
```

### CLI (ripgrep)
```bash
rg 'pattern' file.txt
rg -o 'pattern' file.txt  # Only matching
rg -c 'pattern' file.txt  # Count
```

---

## 🔍 Debugging Tips

1. **Escape special chars**: `. * + ? ^ $ { } [ ] ( ) | \`
2. **Lazy vs Greedy**: `.*?` (lazy) vs `.*` (greedy)
3. **Non-capturing group**: `(?:pattern)` 
4. **Lookahead**: `(?=pattern)` ve `(?!pattern)`
5. **Lookbehind**: `(?<=pattern)` ve `(?<!pattern)`

---

*Regex Builder v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Regular-Expressions.info](https://www.regular-expressions.info/) & [OWASP ReDoS Prevention](https://owasp.org/www-community/attacks/Regular_expression_Denial_of_Service_-_ReDoS)

### Phase 1: Construction & Security
- [ ] **Named Groups**: Use named groups like `(?<year>\d{4})` (Readability).
- [ ] **ReDoS Prevention**: Use Atomic Groups `(?>...)` or Possessive Quantifiers `++` to prevent "Catastrophic Backtracking".
- [ ] **Boundaries**: Always define string boundaries with `^` and `$` (or `\A` and `\z`).

### Phase 2: Testing & Validation
- [ ] **Visual Testing**: Visually test on Regex101 or RegExr.
- [ ] **Unit Tests**: Test both "match" (positive) and "non-match" (negative) cases.
- [ ] **Performance**: Keep regex execution time limited (Execution timeout).

### Phase 3: Implementation
- [ ] **Pre-compilation**: Compile regex at start, not inside loops (`new RegExp`, `re.compile`).
- [ ] **Comments**: Use `(?# comment)` or "Verbose Mode" (Python `re.X`) for complex regexes.
- [ ] **Library**: Prefer ready-made libraries (URL parser, Email validator) for very complex patterns, do not reinvent the wheel.

### Checkpoints
| Phase | Verification                                                                |
| ----- | --------------------------------------------------------------------------- |
| 1     | Is Regex safe against ReDoS attacks? (Scan with Safe-regex tools).          |
| 2     | Does the pattern accept only expected characters? (Allowlist vs Blocklist). |
| 3     | Is Unicode support (`u` flag) enabled? (For Emoji and UTF-8 characters).    |
