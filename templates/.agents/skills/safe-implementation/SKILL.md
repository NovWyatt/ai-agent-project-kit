---
name: safe-implementation
description: use for implementing code changes in a near-finished or production-like project where stability matters. emphasizes small diffs, pre-change inspection, risk identification, verification, and honest reporting for Codex or Claude Code.
---

# Safe Implementation Skill

## Pre-change Checklist
Before editing:
1. Read the task carefully.
2. Identify high-risk areas: auth, permissions, billing, balance, payments, file upload, data deletion, migrations, deployment, concurrency.
3. Inspect the smallest relevant files.
4. State the intended change and verification command.

## Editing Rules
- Change only files needed for the task.
- Preserve behavior not mentioned by the user.
- Prefer bug fixes over rewrites.
- Avoid dependency upgrades unless required.
- Avoid formatting whole files unless formatting is the task.

## Verification Rules
- Run the smallest relevant command.
- If tests fail, report the exact failure and likely cause.
- If tests are missing, suggest the narrowest manual check.

## Completion Summary
Include changed files, verification status, risks, and next steps.
