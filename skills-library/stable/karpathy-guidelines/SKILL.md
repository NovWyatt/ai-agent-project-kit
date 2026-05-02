---
name: karpathy-guidelines
description: use when an ai coding agent is about to implement, refactor, debug, or review code and should behave conservatively: think before coding, prefer simple solutions, make surgical changes, avoid unrelated refactors, state assumptions, and verify results without claiming unrun tests passed.
---

# Karpathy-Style Coding Discipline

Use these rules whenever changing or reviewing code in a real project.

## Core Principles

1. Think before coding.
   - Restate the task briefly when it is non-trivial.
   - Identify ambiguity, assumptions, and risk before editing.
   - Ask for clarification only when the missing detail can change the implementation materially.

2. Simplicity first.
   - Prefer the smallest maintainable solution.
   - Do not introduce abstractions, frameworks, rewrites, queues, services, or patterns unless the task truly requires them.
   - Match the existing project style.

3. Surgical changes.
   - Edit only files directly related to the requested change.
   - Do not clean up, rename, reformat, or refactor unrelated code.
   - Do not change public APIs, database schema, config, auth, permissions, or deployment behavior unless explicitly required.

4. Goal-driven execution.
   - Define what success means before making a multi-file change.
   - Run the smallest relevant verification command when possible.
   - Never claim tests, builds, or checks passed unless they actually ran.

## High-Risk Areas

Treat these as high-risk and use extra caution:
- authentication and authorization
- payments, balances, billing, deposits, withdrawals, orders, subscriptions
- database migrations and data loss
- file uploads and downloads
- admin panels and permission boundaries
- production deployment, environment variables, and secrets
- mobile app signing, desktop app packaging, and release pipelines

## Required Response After Implementation

Include:
- changed files
- verification command and real result
- risks or assumptions
- whether project memory files were updated and why

Do not use this format for explanation-only questions.
