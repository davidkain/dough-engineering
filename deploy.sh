#!/usr/bin/env bash
# Usage:
#   ./deploy.sh                 → commits with a timestamp message
#   ./deploy.sh "your message"  → commits with your message
#
# Stages everything, commits, pushes to origin/main.
# GitHub Pages rebuilds automatically in ~1–2 minutes.

set -e

cd "$(dirname "$0")"

# Nothing to commit (no tracked changes AND no untracked files)? Just push.
if git diff --quiet && git diff --cached --quiet && [ -z "$(git ls-files --others --exclude-standard)" ]; then
  echo "→ No changes to commit. Pushing any unpushed commits…"
  git push origin main
  echo "✅ Done. Live in ~1–2 min: https://davidkain.github.io/dough-engineering/"
  exit 0
fi

MSG="${1:-update $(date '+%Y-%m-%d %H:%M')}"

echo "→ Staging changes…"
git add -A

echo "→ Committing: $MSG"
git commit -m "$MSG"

echo "→ Pushing to GitHub…"
git push origin main

echo ""
echo "✅ Pushed. GitHub Pages will rebuild in ~1–2 minutes."
echo "   Live URL:  https://davidkain.github.io/dough-engineering/"
echo "   Build log: https://github.com/davidkain/dough-engineering/actions"
