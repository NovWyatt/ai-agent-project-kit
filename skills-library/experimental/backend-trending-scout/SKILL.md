---
name: backend-trending-scout
description: use when a user wants to find, read, compare, or learn from a backend trending repository or a linked backend repo while identifying API, service, data, deployment, testing, and security patterns. do not run Docker, migrations, seeders, builds, installs, or unknown code without approval.
---

# Backend Trending Scout

Default mode: read-only. Do not run Docker, database migrations, seeders, builds, services, dependency install, queues, schedulers, or unknown scripts without user approval.

## Focus Stacks

- Node, NestJS, Express, FastAPI, Django, Go, Rust, Java/Spring backend services.

## Inspect First

- README, license, manifests, lockfiles, API docs, env examples, Dockerfile, compose files, CI, migrations, scripts, and deployment docs.
- Routes, controllers/handlers, services, models, schemas, data access, auth, config, jobs/queues, cache, logging, tests, and observability.
- Use `backend-testing` when the user wants to turn patterns into a test strategy.
- Use `security-reviewer` when auth, env handling, scripts, or dependencies look risky.

## Pattern Extraction

Return:
- repo summary
- architecture detected
- API/service/data patterns
- deploy/config patterns
- test strategy patterns
- risks
- what to adapt into our project kit
- safe next step

## Safety Rules

- Do not run migrations, seed DBs, Docker compose, or background workers by default.
- Do not execute unknown scripts or generated binaries.
- Do not copy code wholesale from external repos.
- Learn patterns and workflows; do not copy implementation without license review.
- Check license before recommending reuse.
- Treat auth, payments, permissions, migrations, and data deletion as high-risk.
