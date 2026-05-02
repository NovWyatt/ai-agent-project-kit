# AGENTS.md

## Purpose
These are shared project instructions for AI coding agents such as Codex and Claude Code.
Keep this file framework-neutral. Put project-specific details in `PROJECT_CONTEXT.md`.

## Operating Principles
- Think before coding.
- Prefer simple, maintainable solutions.
- Make surgical changes only; do not refactor unrelated code.
- Do not guess critical requirements. State assumptions and risks.
- Do not commit, push, deploy, publish, delete data, or run destructive commands unless explicitly asked.
- Never hardcode secrets, API keys, passwords, tokens, private keys, cookies, or session data.
- Never claim tests passed unless they were actually executed.
- If verification cannot be run, explain why and suggest the smallest next check.

## Conservative Coding Discipline
Use these principles for implementation, debugging, refactoring, and review:

1. Think before coding: identify ambiguity, assumptions, and risk before editing.
2. Simplicity first: prefer the smallest maintainable solution.
3. Surgical changes: edit only files directly related to the task.
4. Goal-driven execution: define success and verify with the smallest relevant check.

Push back when a requested change is broad, risky, destructive, or likely to destabilize a near-release project.

## Context Files
Use these files when they exist:
- `PROJECT_CONTEXT.md`: project overview, tech stack, architecture, important decisions, current status.
- `SESSION_HANDOFF.md`: latest progress, decisions, next steps, blockers.
- `README.md`: setup and usage instructions.

Do not create or update these files for explanation-only questions.
For implementation tasks, update `SESSION_HANDOFF.md` and `PROJECT_CONTEXT.md` only when the work changes project state.

## Before Editing
For non-trivial changes:
1. Read `PROJECT_CONTEXT.md` and `SESSION_HANDOFF.md` if present.
2. Inspect the smallest set of relevant files.
3. Make a short plan.
4. Identify verification commands before editing.

## Near-Release Safety
If the project is near release, default to review-only unless the user asks for a specific fix.
Do not perform broad refactors, dependency upgrades, formatting sweeps, schema rewrites, or architecture changes near release without explicit approval.

## Coding Standards
- Follow the existing project style and folder conventions.
- Keep changes minimal and localized.
- Prefer explicit, readable code over clever abstractions.
- Use descriptive names.
- Add comments only to explain non-obvious decisions or tradeoffs.
- Preserve public APIs, behavior, migrations, and configuration unless the task requires changing them.
- Do not edit generated files, lockfiles, or dependency manifests unless the task requires it.

## Security Baseline
- Do not read or expose `.env`, `.env.*`, `secrets/**`, credential files, private keys, or tokens.
- Validate external input.
- Preserve authentication, authorization, CSRF, CORS, and rate-limit protections when they exist.
- Use parameterized database access or safe ORM/query-builder APIs.
- Treat payment, balance, auth, permissions, file upload, and admin flows as high-risk.

## Verification
Run the smallest relevant verification after code changes when possible:
- Web/Laravel/PHP: `php artisan test`, `composer test`, `php artisan route:list`, `npm run build`.
- Node/Web: `npm test`, `npm run lint`, `npm run build`.
- Python: `pytest`, `ruff check`, `python -m pytest`.
- Go: `go test ./...`.
- Rust: `cargo test`, `cargo clippy`.
- Mobile: platform-specific build/test commands if configured.
- Desktop: project-specific build/test commands if configured.

If a command is not configured, do not invent success. Report it as not available.

## Skill And Agent Kit Policy
- Use project-installed skills only when they are relevant.
- Stable skills may guide normal work.
- Experimental skills must not be used to modify real projects unless the user explicitly asks.
- Do not auto-install new skills, MCP servers, hooks, or agents into this project without approval.
- Do not copy third-party repositories wholesale into this project.

## Response Format After Implementation
Use this format after making code changes:

### Changes Made
- ...

### Files Updated
- `path/file`: what changed and why

### Verification
- Command: `...`
- Result: passed / failed / not run, with reason

### Security Notes
- ...

### Handoff
- `SESSION_HANDOFF.md`: updated / not updated, with reason
- `PROJECT_CONTEXT.md`: updated / not updated, with reason

### Next Steps
- ...

## Response Format For Explanation-Only Questions
For explanation-only questions, answer directly and do not force the implementation format.
