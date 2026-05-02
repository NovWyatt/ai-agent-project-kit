---
name: frontend-design-craft
description: use when auditing, polishing, or patching production frontend UI for design quality, product clarity, accessibility, component consistency, or anti AI-slop cleanup. start in audit-only mode unless the user explicitly asks for patch-mode.
---

# Frontend Design Craft

Default mode: audit-only. Do not edit files unless the user asks for patch-mode.

## Read First

- `PRODUCT.md`, `DESIGN.md`, `README.md`, `PROJECT_CONTEXT.md`, `SESSION_HANDOFF.md` if present.
- Existing component system, design tokens, theme files, Tailwind config, CSS variables, UI primitives, copy style, routes, and screenshots if available.
- Do not invent a new design system when the repo already has tokens or components.

## Product UI vs Brand UI

- Product UI: workflows, forms, tables, dashboards, navigation, states, accessibility, speed, trust.
- Brand UI: landing pages, marketing sections, visual identity, narrative, emotion, memorable moments.
- Preserve the current product intent. Add brand expression only where it supports the task.

## Anti AI-Slop Checklist

- Avoid random purple/blue gradients, generic gradient text, glassmorphism without reason, nested cards, cards-on-cards, low contrast, vague icons, fake metrics, and filler marketing copy.
- Prefer clear hierarchy, useful whitespace, readable type scale, predictable controls, honest empty/loading/error states, and consistent interaction feedback.
- Replace generic copy with product-specific, action-oriented text when context is available.

## Audit-Only Mode

Return:
- visual/product issues by priority
- affected files or components
- evidence from current UI/code
- minimal recommended fixes
- risks or manual checks

## Patch-Mode

Before editing:
1. Identify the smallest UI surface to change.
2. Reuse existing components, tokens, spacing, colors, and typography.
3. Avoid route, API, auth, database, or business logic changes.
4. Plan the smallest relevant verification command.

After editing, report changed files, verification run, remaining visual checks, and any assumptions.
