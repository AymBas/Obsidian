---
tags: ['software-development', 'tool', 'github-actions', 'ci', 'cd', 'automation']
checked: false
last_updated: 2025-07-11
---

# GitHub Actions

## Definition
*GitHub Actions* is a tool commonly used in modern development workflows.

### Code Snippet
```yaml
# .github/workflows/ci.yml
name: CI
on: [push]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-python@v5
      - run: pytest
```

See also: [[Unit Testing]] • [[Integration Testing]]
