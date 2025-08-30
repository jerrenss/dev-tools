#!/bin/bash

# Git Aliases Setup Script
echo "Setting up git aliases..."

# 1. git b - branch
git config --global alias.b branch
echo "✓ Added: git b -> git branch"

# 2. git s - status
git config --global alias.s status
echo "✓ Added: git s -> git status"

# 3. git lo - log oneline
git config --global alias.lo "log --oneline"
echo "✓ Added: git lo"

# 4. git co - checkout
git config --global alias.co checkout
echo "✓ Added: git co"

# 5. git push - push to current branch
git config --global alias.push "push origin HEAD"
echo "✓ Added: git push"

# 5. git po - git pull origin
git config --global alias.po "pull origin"
echo "✓ Added: git po"

# 6. git acm - git add all and commit with message
git config --global alias.acm "!git add . && git commit -m"
echo "✓ Added: git acm"

# 7. git acmp - git add all, commit with message and push
git config --global alias.acmp '!f() { git add . && git commit -m "$1" && git push origin HEAD; }; f'
echo "✓ Added: git acmp"

echo ""
echo "All git aliases have been set up successfully!"
echo ""
echo "Usage examples:"
echo "  git b                    # Show branches"
echo "  git s                    # Show status"
echo "  git lo                   # Show log in one line"
echo "  git co                   # Checkout branch"
echo "  git push                 # Push to current branch"
echo "  git po                   # Pull from origin"
echo "  git acm \"Your message\"  # Add all and commit"
echo "  git acmp \"Your message\" # Add all, commit and push"
echo ""
echo "To see all aliases: git config --get-regexp alias"
