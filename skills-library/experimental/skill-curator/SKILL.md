---
name: skill-curator
description: use when a user wants to extract ideas from a website, repository, article, prompt library, skill library, or agent library for possible inclusion in the AI Agent Project Kit without copying licensed or unclear external content.
---

# Skill Curator

Default mode: review and propose. Do not copy external content verbatim unless the license and attribution requirements are clear and compatible.

## Source Classification

- Safe to reference: public docs or repo with clear license and low-risk ideas.
- Learn idea only: useful workflow exists, but content should be rewritten from first principles.
- Needs license review: unclear license, restrictive terms, mixed provenance, or copied third-party content.
- Do not use: unsafe scripts, secret collection, destructive defaults, malware-like behavior, or incompatible license.

## Evaluate

- What user problem does the source solve?
- Is it a repeatable workflow suitable for a skill?
- Would it belong in docs, `AGENTS.md`, or a dedicated skill?
- Should it start in `experimental` or is it mature enough to consider for `stable` later?
- Does it require tools, network access, credentials, browser control, or risky commands?

## Output

Return:
- source summary
- license/usage concern
- reusable workflow extracted
- proposed skill/docs changes
- safety notes
- next patch plan

## Rules

- Prefer original wording and local conventions.
- Extract workflows, checklists, and trigger conditions instead of copying prose or code.
- Keep new skills small and practical.
- Use `experimental` first unless the workflow has already been tested in sandbox projects.
- Do not add scripts, MCP servers, hooks, or dependencies without explicit approval.
