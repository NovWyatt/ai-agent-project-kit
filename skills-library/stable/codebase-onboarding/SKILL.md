---
name: codebase-onboarding
description: use when first opening an unfamiliar project or when the user asks an ai agent to understand, summarize, map, or prepare to work on a codebase. operate in read-only mode first and identify stack, commands, architecture, risks, and next safe actions.
---

# Codebase Onboarding Workflow

Default mode: read-only. Do not edit files.

## Steps

1. Read project instruction files if present:
   - `AGENTS.md`
   - `CLAUDE.md`
   - `PROJECT_CONTEXT.md`
   - `SESSION_HANDOFF.md`
   - `README.md`
2. Detect the stack from package/build files.
3. Identify likely commands for install, test, lint, build, run, and deploy.
4. Summarize architecture and important folders.
5. List risk areas and files that should not be touched without approval.
6. Recommend the next safest action.

## Output

Return:
- detected tech stack
- important folders/files
- real commands found in the repo
- missing documentation
- release or maintenance risks
- next safe prompt to run
