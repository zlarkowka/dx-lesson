# DX Farm — TIL & Templates

This repo is designed to **boost your GitHub Developer Experience score fast** by farming small, meaningful contributions:
- **Commits** via small docs/config edits
- **PRs** by opening tiny branches and merging
- **Issues** using short templates

## Quickstart
```bash
# 1) Create repo (via GitHub UI or gh)
#    gh repo create dx-farm --public --source=. --remote=origin --push

# 2) Create 5 issues quickly (see scripts below or copy from templates)
# 3) For each issue: create branch → commit a tiny change → open PR → merge
```

## Today I Learned (TIL)
Keep short notes that you can add daily. Each entry lives in `TIL/YYYY-MM-DD-topic.md` and is 5–10 lines.

- Start with `scripts/new-til.sh` to generate a new note.
- Then commit: `git add . && git commit -m "docs(til): add YYYY-MM-DD {topic}"`
- Open a PR: `gh pr create -t "docs(til): add {topic}" -b "Closes #<issue-number>"`

## Repo Contents
- `.github/ISSUE_TEMPLATE/*` — one-click issue templates
- `.github/PULL_REQUEST_TEMPLATE.md` — tiny PR body that auto-closes issues
- `scripts/*` — helpers to create notes and micro-changes
- `TIL/*` — your notes
- `CHANGELOG.md` — log merged changes
- `CONTRIBUTING.md` — minimal how-to
- `LICENSE` — MIT
- `.gitignore`, `.editorconfig` — useful defaults

Happy shipping!
