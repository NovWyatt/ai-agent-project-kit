---
name: backend-testing
description: use when adding, fixing, or reviewing backend, API, service, database, queue, cache, auth, or integration tests. detect the stack first, prefer existing test tooling, and do not run migrations, seeders, Docker, or destructive integration tests without approval.
---

# Backend Testing

Default mode: inspect first. Do not run database migrations, seeders, Docker compose, queues, schedulers, destructive integration tests, or unknown scripts without explicit approval.

## Detect Stack First

- Node/Express/Nest: Jest, Vitest, Supertest, native `fetch`, framework testing modules.
- Python/FastAPI/Django: pytest, httpx, FastAPI `TestClient`, pytest-django, Django test client.
- Go: `go test`, `httptest`, table tests, integration packages.
- Rust: `cargo test`, integration tests under `tests/`, framework test clients.
- Java/Spring: JUnit, MockMvc, Testcontainers, Spring Boot test slices.

## Inspect First

- Read README, manifests, test config, existing tests, env examples, migrations, Docker/compose, CI, and package scripts.
- Identify test DB requirements, external services, auth setup, fixtures, factories, and rollback strategy.
- Prefer existing framework, naming, fixtures, helpers, and command conventions.

## Test Pyramid Guidance

- Unit tests: pure service/domain logic, validators, policy decisions, edge cases.
- Integration tests: service + DB/cache/queue boundary where behavior depends on infrastructure.
- API contract tests: route status, schema, authz, validation errors, pagination, idempotency.
- Database boundary tests: queries, transactions, constraints, migrations only when approved.

## Full-Stack Projects

- If Playwright already exists, use Playwright API calls only to set up or verify state for UI/e2e flows.
- Do not use Playwright as a replacement for backend unit, service, API, or database tests.

## Running And Reporting

- Start with the smallest relevant test command.
- Ask before commands that create, migrate, seed, reset, or delete data.
- Report command, result, failing test names, errors, and any skipped unsafe checks.
- Do not claim tests passed unless they actually ran.
