---
name: anthropic-skill-patterns
description: use only when designing, reviewing, or improving agent skills, skill folders, skill metadata, or reusable agent workflows. this is a reference pattern skill inspired by public agent skill repositories; do not use it as a general coding instruction.
---

# Skill Design Patterns

Use this skill when improving the AI Agent Project Kit itself or creating new reusable skills.

## Rules

- Keep each skill focused on one repeatable workflow.
- Put trigger conditions in the YAML `description` because agents often see metadata before reading the full body.
- Keep `SKILL.md` compact. Move long details into references if needed.
- Prefer instructions over scripts unless the workflow needs deterministic execution.
- Do not bundle large assets or entire external repositories into project templates.
- Keep experimental skills out of real projects until tested in a sandbox.

## Promotion Flow

1. Add a candidate to `inbox/new-skills-to-review/`.
2. Review README, license, scripts, permissions, and risk.
3. Move to `skills-library/experimental/`.
4. Test in a sandbox project.
5. Promote to `skills-library/stable/` only after it proves useful and safe.
6. Add a short entry to `CHANGELOG.md` and `docs/COMPATIBILITY.md`.

## Red Flags

Reject or sandbox very carefully if a skill/tool:
- runs destructive commands by default
- reads `.env`, private keys, tokens, cookies, or browser sessions without explicit need
- auto commits, pushes, deploys, or publishes
- makes broad refactors without user approval
- requires unknown closed-source binaries or unreviewed scripts
