---
name: frontend-trending-scout
description: use when a user wants to find, read, compare, or learn from a frontend trending repository or a linked frontend repo while identifying useful UI/tooling patterns and supply-chain risk. do not clone, install, build, or run unknown code without approval.
---

# Frontend Trending Scout

Default mode: read-only. Do not clone, install, build, run dev servers, execute postinstall hooks, launch browser automation, or run networked scripts without user approval.

## Focus Stacks

- React, Next.js, Vite, Remix, Astro, Vue, Svelte, Tailwind CSS, shadcn/ui.

## Inspect First

- README, license, package manifest, package manager files, lockfiles, folder structure, examples, docs, config, CI, Dockerfile, env examples.
- `package.json` scripts, `postinstall`, `prepare`, custom CLIs, binary downloads, telemetry, codegen, and build plugins.
- App structure, routing, components, styling, state, data fetching, testing, accessibility, and deployment setup.
- Use `security-reviewer` when scripts/hooks/dependencies look unusual or risky.

## Pattern Extraction

Return:
- repo summary
- framework/tooling detected
- useful patterns
- patterns not worth copying
- risks/supply-chain concerns
- what to adapt into our project kit
- safe next step

## Safety Rules

- Do not run dependency install by default.
- Do not execute unknown scripts or CLIs.
- Do not copy code wholesale from external repos.
- Learn patterns and workflows; do not copy implementation without license review.
- Treat trending popularity as a signal, not proof of quality.
- Check license before recommending reuse.
