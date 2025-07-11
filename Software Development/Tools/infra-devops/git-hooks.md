---
tags: ['software-development', 'tool', 'git-hooks', 'automation']
checked: false
last_updated: 2025-07-11
---

# Git Hooks

## Definition
*Git Hooks* is a tool commonly used in modern development workflows.

### Code Snippet
```bash
# .git/hooks/pre-commit
#!/bin/sh
ruff check --quiet
```

See also: [[Ruff]] • [[ESLint]]
