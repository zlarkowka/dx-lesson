#!/usr/bin/env bash
# Create a new TIL note quickly
set -e

if [ -z "$1" ]; then
  echo "Usage: scripts/new-til.sh "Your short topic""
  exit 1
fi

slug=$(echo "$1" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-+|-+$//g')
today=$(date +%F)
file="TIL/${today}-${slug}.md"

mkdir -p TIL
cat > "$file" <<MD
# ${1}

**Date:** ${today}

## What I learned
- Point 1
- Point 2

## Links
- n/a
MD

echo "Created $file"
