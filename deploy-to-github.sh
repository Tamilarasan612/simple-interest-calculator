#!/bin/bash

# =====================================================
#  Simple Interest Calculator — GitHub Deploy Script
# =====================================================
# Usage: bash deploy-to-github.sh YOUR-GITHUB-USERNAME YOUR-REPO-NAME
# Example: bash deploy-to-github.sh johndoe simple-interest-calculator

USERNAME=$1
REPO=$2

if [ -z "$USERNAME" ] || [ -z "$REPO" ]; then
  echo "Usage: bash deploy-to-github.sh YOUR-GITHUB-USERNAME YOUR-REPO-NAME"
  exit 1
fi

echo "=> Initializing git repository..."
git init

echo "=> Staging all files..."
git add .

echo "=> Creating initial commit..."
git commit -m "Initial commit: Add all project files"

echo "=> Renaming branch to main..."
git branch -M main

echo "=> Adding remote origin..."
git remote add origin https://github.com/$USERNAME/$REPO.git

echo "=> Pushing to GitHub..."
git push -u origin main

echo ""
echo "============================================"
echo " Done! Visit your repo at:"
echo " https://github.com/$USERNAME/$REPO"
echo "============================================"
