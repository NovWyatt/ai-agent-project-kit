---
name: release-review
description: use when reviewing a project before release, deployment, publishing, app store submission, production migration, or handoff. focus on risk analysis first, do not edit files by default, and produce a prioritized checklist for security, build, tests, environment, data, and rollback readiness.
---

# Release Review Workflow

Default mode: review-only. Do not edit files unless the user explicitly asks for a specific fix.

## Review Scope

Check the project for:
- broken build or missing build scripts
- missing or failing tests
- environment variables that are required but undocumented
- database migrations that may break existing data
- auth, permissions, payment, balance, upload, and admin risks
- missing deployment notes or rollback plan
- hardcoded secrets or unsafe logging
- mobile/desktop signing or packaging risks when relevant

## Process

1. Read `PROJECT_CONTEXT.md`, `SESSION_HANDOFF.md`, `README.md`, and package/build files if present.
2. Inspect only the files needed to understand release risk.
3. Do not refactor.
4. Return a prioritized checklist:
   - Critical: must fix before release
   - High: should fix before release
   - Medium: acceptable if documented
   - Low: optional cleanup after release

## Fix Mode

If the user asks to fix something:
- fix one issue at a time
- make the smallest change
- run the smallest relevant verification
- update `SESSION_HANDOFF.md` only after meaningful implementation work
