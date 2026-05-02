---
name: browser-harness-testing
description: use for browser-based testing, visual web debugging, local or staging UI verification, form interaction, responsive layout checks, and reproducing web bugs with a real Chrome browser through browser-use/browser-harness. do not use for production actions, payments, account changes, destructive actions, or credential entry unless the user explicitly approves each step.
---

# Browser Harness Testing

Use browser-harness only when the task requires real browser interaction.

## Safety Rules

- Prefer local or staging URLs.
- Do not use production unless the user explicitly requests it.
- Do not submit real payments, withdrawals, deposits, orders, account changes, or destructive actions.
- Stop at login pages and ask the user to log in manually.
- Do not type passwords, API keys, recovery codes, cookies, or private tokens.
- Do not read secrets from `.env` or credential files.
- First navigation must open a new tab, not overwrite the user's active tab.
- After testing, summarize what was observed, what was fixed, and what still needs manual verification.

## Best Use Cases

- Reproduce a UI bug.
- Test a fixed form.
- Check mobile responsive behavior.
- Verify navigation, modal, dropdown, and button behavior.
- Confirm local/staging flow after code changes.
- Inspect browser-visible errors.

## Workflow

1. Confirm the target URL is local or staging.
2. Open a new tab.
3. Reproduce the issue.
4. Record visible errors and console/network clues when available.
5. Make the smallest code fix.
6. Re-test the same browser flow.
7. Report exact steps tested and remaining risks.
