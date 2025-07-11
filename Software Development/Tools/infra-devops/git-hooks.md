---
tags: ['software-development', 'tool', 'git-hooks', 'automation']
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
