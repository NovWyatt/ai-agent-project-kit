---
name: playwright-browser-testing
description: use when a task requires browser UI verification, e2e flows, visual checks, rendered frontend debugging, or Playwright test authoring. prefer existing test tooling and do not install, initialize, or download browsers without explicit user approval.
---

# Playwright Browser Testing

Default mode: inspect first. Do not install packages, initialize Playwright, download browsers, or run unknown scripts without user approval.

## Use When

- Browser UI behavior must be verified in a rendered app.
- The task asks for e2e tests, smoke tests, visual checks, form/navigation testing, or frontend debugging.
- A local or staging URL is available, or the repo has a safe dev server command.
- Playwright `APIRequestContext` can support UI/e2e setup or verify backend state related to a browser flow.

## Inspect First

- Check for existing Playwright, Cypress, Selenium, WebdriverIO, Vitest browser mode, or framework-specific e2e setup.
- Detect package manager from lockfiles and manifests: `package-lock.json`, `pnpm-lock.yaml`, `yarn.lock`, `bun.lockb`, `bun.lock`, `package.json`.
- Read `package.json` scripts before running anything; watch for `postinstall`, `prepare`, custom CLIs, and networked scripts.
- Prefer existing test commands and conventions over adding new tooling.
- If the project needs backend-only coverage, use backend-native tests instead of Playwright.

## Installation Policy

- Do not run install/init/browser download commands unless the user clearly approves.
- If approved, use the project package manager:
  - npm: `npm init playwright@latest`
  - pnpm: `pnpm create playwright`
  - yarn: `yarn create playwright`
- Install browsers only as needed, for example `npx playwright install` or `npx playwright install --with-deps` for CI/Linux.
- Confirm before changing manifests, lockfiles, CI, or test config.

## Test Authoring Rules

- Start with one small smoke test for the highest-value flow.
- Do not replace backend unit/integration/API/database tests with Playwright.
- Use `APIRequestContext` only for UI/e2e setup, teardown, or state verification tied to the browser flow.
- Use user-visible locators: role, label, placeholder, text, alt text, title.
- Avoid brittle selectors: generated classes, hashes, DOM depth, implementation-only IDs.
- Keep tests isolated; no hidden dependency on test order or shared mutable state.
- Mock or stub third-party services when possible.
- Do not use production credentials, production data, real payments, or destructive actions.

## Running And Reporting

- State the exact command before running tests.
- Report command, result, failing test names, error summaries, and relevant trace/screenshot/report paths.
- Do not claim tests passed unless they actually ran.
- If tests cannot run, explain why and suggest the smallest safe next check.
