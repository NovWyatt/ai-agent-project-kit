# AI Agent Project Kit

A portable, framework-neutral starter folder for projects that use both Codex and Claude Code, especially from VS Code extensions.

The kit is conservative by default: it helps agents understand a project, review risk, and make small verified changes without broad refactors or unsafe actions.

## What this kit adds to a project

- `AGENTS.md`: shared instructions for Codex and other agents.
- `CLAUDE.md`: imports `AGENTS.md` for Claude Code.
- `.claude/settings.json`: conservative deny/allow permissions for Claude Code.
- `.codex/config.toml`: conservative Codex project config.
- `.agents/skills/`: portable stable skills shared across agents.
- `.claude/skills/`: mirrored stable skills for Claude Code.
- `.claude/agents/` and `.codex/agents/`: safe reviewer subagent templates.
- `PROJECT_CONTEXT.md` and `SESSION_HANDOFF.md`: optional project memory files.

## What this kit keeps only in the kit library

- `skills-library/stable/`: stable skills used in templates.
- `skills-library/experimental/`: experimental skills not installed into projects by default.
- `sources/`: notes about third-party repos such as `anthropics/skills` and `forrestchang/andrej-karpathy-skills`.
- `inbox/`: candidate skills/tools to review before promotion.
- `docs/`: weekly review, update checklist, compatibility, and third-party skill notes.

## Safe install

From inside a project root:

```bash
/path/to/ai-agent-project-kit/install.sh
```

Windows PowerShell:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File "C:\Users\Wyatt\Desktop\ai-agent-project-kit\install.ps1"
```

The installer does not overwrite existing files. If a file already exists, it saves the new template under `.ai-kit-candidates/` for manual comparison.

## Recommended first prompt after installing

Use this in Codex or Claude Code:

```text
Read AGENTS.md, CLAUDE.md, PROJECT_CONTEXT.md, and SESSION_HANDOFF.md. Do not edit source code yet. Summarize project status, detected tech stack, likely test/build commands, release risks, and what you need to inspect before making any changes.
```

## Recommended second prompt near release

```text
Review the project for release risk only. Do not edit files. Focus on security, broken flows, missing tests, deployment risk, and any broad changes that could destabilize the project.
```

## Weekly skill/tool review

Once per week, use `docs/WEEKLY_REVIEW.md` to review GitHub Trending, official Codex/Claude updates, and new skill/MCP repos.

Do not update real projects directly from trending sources. Use this flow:

```text
inbox -> experimental -> sandbox test -> stable -> project install
```

## Third-party sources currently tracked

- `anthropics/skills`: reference and experimental source only. Do not copy the full repo into projects.
- `forrestchang/andrej-karpathy-skills`: stable behavior guidance, integrated into `AGENTS.md` and the `karpathy-guidelines` skill.

## Important

This kit is intentionally conservative. It is designed to avoid breaking near-finished projects.
