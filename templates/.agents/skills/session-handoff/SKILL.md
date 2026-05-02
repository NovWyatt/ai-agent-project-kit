---
name: session-handoff
description: use when finishing an implementation task, switching between Claude Code and Codex, handing off work between sessions, or updating project memory files such as SESSION_HANDOFF.md and PROJECT_CONTEXT.md.
---

# Session Handoff Skill

## Update Rules
Update `SESSION_HANDOFF.md` after real implementation work.
Update `PROJECT_CONTEXT.md` only when architecture, tech stack, features, commands, or current status changed.
Do not update memory files for simple explanations.

## SESSION_HANDOFF.md Format
- Date
- Completed
- Decisions Made
- Files Changed
- Verification
- Next Steps
- Blockers / Risks

## Quality Rules
- Be factual.
- Do not claim tests passed unless they ran.
- Include failed commands and errors when relevant.
- Keep it concise enough for the next agent to read quickly.
