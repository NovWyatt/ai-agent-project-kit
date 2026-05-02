# Testing And Security Strategy

This kit supports frontend, backend, and security verification through optional skills. It must not install tools or dependencies into project targets automatically.

## Tool Choice

Use the smallest tool that verifies the risk:

- Browser/UI risk: use `playwright-browser-testing` for rendered UI, e2e flows, visual checks, and frontend debugging.
- Backend/API risk: use `backend-testing` for services, API handlers, database boundaries, auth logic, queues, cache, and integration behavior.
- Security/supply-chain risk: use `security-reviewer` for repos, PRs, scripts, dependencies, CI, Dockerfiles, secrets handling, auth/session, and web security review.

## When To Use Playwright

- A user-visible browser flow needs verification.
- Layout, navigation, forms, dialogs, or responsive behavior matter.
- A smoke test can catch regressions across frontend and backend wiring.
- `APIRequestContext` helps set up or verify state for a UI/e2e flow.

Do not use Playwright as the only testing layer for backend logic. Backend unit, integration, API contract, and database boundary tests should stay backend-native.

## When To Use Backend-Native Tests

- The behavior lives in services, API handlers, authz, validators, database access, queues, cache, or config.
- The test should run without a browser.
- You need fast unit coverage or focused integration coverage.
- You need to verify error handling, transactions, permissions, idempotency, or schema boundaries.

Prefer existing stack conventions:

- Node/Express/Nest: Jest, Vitest, Supertest, native `fetch`.
- Python/FastAPI/Django: pytest, httpx, TestClient, pytest-django.
- Go: `go test`, `httptest`.
- Rust: `cargo test`, integration tests.
- Java/Spring: JUnit, MockMvc, Testcontainers.

## When To Use Security Reviewer

- Reviewing unknown repos, PRs, scripts, dependencies, CI workflows, Dockerfiles, or installers.
- Checking package scripts, install hooks, lockfile drift, suspicious dependencies, and shell scripts.
- Reviewing `.env` handling, tokens, private keys, auth/session/JWT/cookie/CORS/CSRF/rate-limit behavior.
- Planning optional scans such as package audit, Trivy, OWASP ZAP baseline, or OWASP WSTG checklist.

Security review is read-only by default. Do not run intrusive scanners against production.

## Safety Rules For Codex

- Inspect existing tools before adding new ones.
- Ask before dependency install, tool init, browser download, DB migration, seed, Docker compose, scanner, or unknown script.
- Prefer local or staging targets over production.
- Do not use production credentials, production data, real payments, or destructive actions.
- Report exact commands, results, skipped checks, and artifacts such as traces, screenshots, reports, or logs.
- Never claim tests or scans passed unless they actually ran.

## Promotion Criteria

Before promoting these skills to stable:

- Test each skill in at least one sandbox project.
- Verify the agent asks before installs, migrations, Docker, browser downloads, and scanners.
- Confirm output is concise, actionable, and includes evidence.
- Update `CHANGELOG.md` and `docs/COMPATIBILITY.md`.
- Only then copy stable skills into project install templates.
