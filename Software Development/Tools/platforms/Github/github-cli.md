---
tags: ['software-development', 'tool', 'github-cli', 'workflow']
---

# GitHub CLI

## Installation

```bash
# macOS with Homebrew
brew install gh
```

## Authentication

```bash
# Login to GitHub account
gh auth login
```

This will guide you through the authentication process and set up your GitHub CLI token.

## Verify Authentication

```bash
# Check auth status
gh auth status
```

Should show:
- Logged in account
- Git operations protocol (ssh/https)
- Token scopes

## Common Commands

```bash
# Create repository
gh repo create REPO_NAME --public --source=. --remote=origin --push

# Add SSH key
gh ssh-key add ~/.ssh/YOUR_KEY.pub --title "KEY_TITLE"

# View repository
gh repo view

# Clone repository
gh repo clone USERNAME/REPO_NAME
```