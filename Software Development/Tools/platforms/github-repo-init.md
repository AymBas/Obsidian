# GitHub Repository Initialization

## Initialize Local Repository

```bash
# 1) Initialize git repository (skip if you already have a .git folder)
git init

# 2) Stage & commit your files
git add .
git commit -m "Initial commit"
```

## Push to GitHub

### Option 1: Create New Repository and Push (Recommended)

```bash
# Create GitHub repo and push existing commits
gh repo create REPO_NAME --public --source=. --remote=origin --push
```

This command:
- Creates a new repository on GitHub
- Adds it as remote origin
- Pushes your existing commits

### Option 2: Connect to Existing Repository

```bash
# Add remote for existing GitHub repo
git remote add origin https://github.com/USERNAME/REPO_NAME.git

# Or update existing remote
git remote set-url origin https://github.com/USERNAME/REPO_NAME.git

# Push and set upstream (only needed once)
git push -u origin main
```

## Protocol Options

### HTTPS (Recommended for most users)
```bash
git remote set-url origin https://github.com/USERNAME/REPO_NAME.git
```

### SSH (if you have SSH keys configured)
```bash
git remote set-url origin git@github.com:USERNAME/REPO_NAME.git
```

## Related
- [[platforms/github]] - GitHub CLI installation and auth
- [[platforms/github-account-setup]] - SSH key setup for GitHub 