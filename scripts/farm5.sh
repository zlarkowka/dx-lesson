#!/usr/bin/env bash
# Create 5 issues, 5 branches, 5 PRs (requires gh and a clean working tree)
set -e

if ! command -v gh >/dev/null; then
  echo "This script requires GitHub CLI (gh). Install from https://cli.github.com/"
  exit 1
fi

if ! command -v jq >/dev/null; then
  echo "This script requires jq for JSON parsing."
  exit 1
fi

for i in 1 2 3 4 5; do
  title="docs: Add TIL note ${i}"
  body="Add a short TIL note number ${i}."
  issue_json=$(gh issue create -t "$title" -b "$body" --label docs --json number,title)
  number=$(echo "$issue_json" | jq -r '.number')
  branch="issue-${number}-til-${i}"
  git checkout -b "$branch"
  scripts/new-til.sh "TIL ${i} – small insight"
  git add .
  git commit -m "docs(til): add TIL ${i} (Fixes #${number})"
  git push -u origin "$branch"
  gh pr create -t "docs(til): add TIL ${i}" -b "Closes #${number}"
  gh pr merge --merge --delete-branch --auto
done
