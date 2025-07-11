# SSH GitHub Setup

## Generate SSH Key

```bash
# Generate new SSH key
ssh-keygen -t ed25519 -C "your_email@example.com"

# Add to SSH agent
ssh-add ~/.ssh/YOUR_KEY_NAME
```

## Add SSH Key to GitHub

### Option 1: Manual (Web Interface)
1. Copy your public key:
   ```bash
   cat ~/.ssh/YOUR_KEY_NAME.pub
   ```
2. Go to GitHub.com → Settings → SSH and GPG keys → New SSH key
3. Paste the key and save

### Option 2: GitHub CLI
```bash
gh ssh-key add ~/.ssh/YOUR_KEY_NAME.pub --title "KEY_TITLE"
```

## Test Connection

```bash
# Standard SSH test (port 22)
ssh -T git@github.com

# Alternative if port 22 is blocked (port 443)
ssh -T -p 443 git@ssh.github.com
```

**Expected output:** `Hi USER! You've successfully authenticated, but GitHub does not provide shell access.`

## Troubleshooting

If `ssh -T git@github.com` hangs, try:
- Use port 443: `ssh -T -p 443 git@ssh.github.com`
- Check firewall/network settings
- Verify SSH key is added to GitHub

## Related
- [[platforms/github]] - GitHub CLI installation and auth
- [[platforms/github-repo-init]] - Creating and pushing to GitHub repositories 