#!/usr/bin/env bash
# Make a tiny, legit change to README.md
set -e
note=${1:-"Add quick tip to README"}
date=$(date +%F)
echo "- ${date}: ${note}" >> README.md
echo "Appended a line to README.md"
