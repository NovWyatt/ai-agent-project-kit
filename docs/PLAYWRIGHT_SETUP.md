# Optional Playwright Setup

Playwright support is optional for projects using this kit. The installer must not add Playwright, initialize config, or download browsers automatically.

## When To Use Playwright

- You need browser-level UI verification, e2e coverage, smoke tests, or rendered frontend debugging.
- You need to test forms, navigation, auth-adjacent flows, dialogs, responsive layout, or browser-only behavior.
- Unit/component tests cannot verify the risk you care about.

## When Not To Use Playwright

- Pure business logic can be covered by unit tests.
- The project already has sufficient Cypress, Selenium, WebdriverIO, or framework e2e coverage.
- The only available target is production and the flow uses real money, real users, destructive actions, or sensitive data.
- The user has not approved dependency installation, Playwright init, or browser downloads.

## Detect Existing Setup

Check these before adding anything:

- `package.json` for `@playwright/test`, `playwright`, `cypress`, `selenium-webdriver`, `webdriverio`, or e2e scripts.
- `playwright.config.*`, `cypress.config.*`, `e2e/`, `tests/e2e/`, `specs/`, `.github/workflows/`.
- Lockfiles to detect package manager: `package-lock.json`, `pnpm-lock.yaml`, `yarn.lock`, `bun.lockb`, `bun.lock`.
- Existing docs for local app URL, seed data, test users, and CI commands.

## Manual Install Commands

Only run these after explicit approval.

```bash
npm init playwright@latest
```

```bash
pnpm create playwright
```

```bash
yarn create playwright
```

Browser install, when needed:

```bash
npx playwright install
```

CI/Linux with system dependencies, when needed:

```bash
npx playwright install --with-deps
```

For Bun projects, prefer checking current Playwright docs and project conventions before choosing commands.

## Running Tests

Common commands after setup:

```bash
npx playwright test
```

```bash
npx playwright test --ui
```

```bash
npx playwright show-report
```

Prefer project-defined scripts when present, such as `npm run test:e2e`, `pnpm test:e2e`, or `yarn test:e2e`.

## CI Notes

- Use the package manager already used by the project.
- Cache dependencies using the CI platform's standard package-manager cache.
- Install Playwright browsers in CI only when e2e tests run.
- Upload traces, screenshots, videos, and HTML reports only for failed runs when possible.
- Avoid production credentials; use dedicated test credentials or mocked services.

## Troubleshooting Browser Install

- Missing browser executable: run `npx playwright install` after approval.
- Linux dependency errors: use `npx playwright install --with-deps` after approval, or configure CI image dependencies explicitly.
- Version mismatch: reinstall browsers after Playwright package upgrades.
- Slow CI: limit projects/browsers for smoke checks; run full matrix only where it adds value.

## Codex Safety Rules

- Inspect existing test tooling first.
- Do not run install/init/browser download commands without explicit approval.
- Read scripts before running them.
- Start with the smallest smoke test.
- Use user-visible locators such as role, label, and text.
- Do not use production credentials, production data, real payments, or destructive actions.
- Report exact commands, results, and trace/screenshot/report paths.
