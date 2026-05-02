# Compatibility Matrix

## Project Files

| Component | Codex | Claude Code | VS Code Extension | Notes |
|---|---:|---:|---:|---|
| `AGENTS.md` | Yes | Via `CLAUDE.md` import | Yes | Main shared rules |
| `CLAUDE.md` | No | Yes | Yes | Imports `AGENTS.md` |
| `PROJECT_CONTEXT.md` | Yes | Yes | Yes | Project-specific status |
| `SESSION_HANDOFF.md` | Yes | Yes | Yes | Optional working memory |

## Skills

| Skill | Status | Installed to Projects | Purpose |
|---|---|---:|---|
| universal-project | stable | Yes | Framework-neutral project behavior |
| safe-implementation | stable | Yes | Minimal safe code changes |
| session-handoff | stable | Yes | Update handoff only when useful |
| karpathy-guidelines | stable | Yes | Conservative coding discipline |
| release-review | stable | Yes | Review-only release checks |
| codebase-onboarding | stable | Yes | Read-only first-pass project mapping |
| anthropic-skill-patterns | experimental | No | Skill design reference for the kit itself |

## Tools Not Installed by Default

| Tool | Default | Reason |
|---|---|---|
| code-review-graph | Optional | Useful for larger projects and release review, but install manually |
| claude-context | Optional | Requires external vector database/API setup |
| browser-harness | Optional | Powerful browser control; use only when needed |
| cliProxyAPI-Dashboard | Optional | Extra proxy/security complexity; not needed for normal local workflow |
