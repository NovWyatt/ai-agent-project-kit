# Trending Repo Research

Use this workflow when Codex studies unfamiliar repositories, GitHub trending projects, articles, prompt libraries, skill libraries, or agent libraries for ideas to improve the AI Agent Project Kit.

## Default Safety Posture

- Read first; do not execute unknown code.
- Do not clone, install, build, test, run Docker, run migrations, seed data, launch services, or execute scripts before user approval.
- Prefer README, license, manifests, lockfiles, folder structure, docs, examples, CI, Dockerfile, and scripts.
- Treat popularity as a discovery signal, not proof of quality or safety.

## How To Analyze Unknown Repos

1. Identify purpose, stack, license, maturity, and maintenance signals.
2. Read manifests and scripts before recommending any command.
3. Map architecture from folders and docs, not assumptions.
4. Identify patterns worth learning and patterns not worth copying.
5. Call out supply-chain, security, license, and maintenance concerns.
6. Propose a safe next step before deeper inspection or execution.

## Use Security Reviewer First When Risk Appears

Use `security-reviewer` before adopting ideas when a source has:

- install hooks such as `preinstall`, `postinstall`, or `prepare`
- shell scripts, curl-to-shell, generated binaries, or custom CLIs
- lockfile drift, missing lockfiles, unusual dependency sources, or dependency confusion risk
- GitHub Actions with broad permissions, secret-heavy deploys, or unsafe pull request triggers
- Dockerfiles or compose files with privileged mode, host mounts, or mounted secrets
- auth, token, cookie, CORS, CSRF, rate-limit, or `.env` handling patterns

## Copy Code vs Learn Pattern

- Copy code: reusing source text, implementation, snippets, prompts, config, or assets from the external source. Requires license review and attribution handling.
- Learn pattern: describing the general workflow, architecture, checklist, trigger condition, or safety rule in original wording. Preferred for this kit.
- When license is unclear, extract the idea only and rewrite from first principles.
- Do not copy entire skill libraries, prompt libraries, repo structures, or scripts into this kit.

## Frontend Research

Use `frontend-trending-scout` for React, Next, Vite, Remix, Astro, Vue, Svelte, Tailwind, and shadcn/ui repos.

Output should include:
- repo summary
- framework/tooling detected
- useful patterns
- patterns not worth copying
- risks/supply-chain concerns
- what to adapt into this kit
- safe next step

## Backend Research

Use `backend-trending-scout` for Node/Nest/Express, FastAPI/Django, Go, Rust, and Java/Spring repos.

Output should include:
- repo summary
- architecture detected
- API/service/data patterns
- deploy/config patterns
- test strategy patterns
- risks
- what to adapt into this kit
- safe next step

## Skill And Source Curation

Use `skill-curator` for websites, articles, prompt libraries, skill libraries, agent libraries, and mixed sources.

Classify each source as:
- safe to reference
- learn idea only
- needs license review
- do not use

Then decide whether the idea belongs in:
- docs only
- `AGENTS.md` policy
- a new experimental skill
- a future stable skill after sandbox testing

## Experimental vs Stable

Start in `experimental` when:
- the workflow is new to this kit
- safety behavior has not been sandbox tested
- source license/provenance is unclear
- the skill may produce broad changes or run tools

Consider `stable` only after:
- sandbox testing confirms predictable behavior
- the skill asks before risky commands
- output is concise, useful, and evidence-based
- docs and compatibility notes are updated
- the installer template change is explicitly approved
