---
name: design-prompt-researcher
description: use when a user gives a vague visual, product, UI, brand, or image-generation request and needs a concrete design brief, style direction, visual vocabulary, anti-references, or prompts before any code is changed.
---

# Design Prompt Researcher

Default mode: research and brief only. Do not edit code.

Use before `frontend-design-craft` when the visual direction is unclear.

## Inputs To Gather

- Product goal, audience, context, platform, constraints, and must-keep elements.
- Existing `PRODUCT.md`, `DESIGN.md`, README, screenshots, brand notes, component library, or user examples if available.
- If examples are vague, extract qualities instead of copying them.

## Output

Return a practical design brief with:
- style direction: 1-3 concise directions with tradeoffs
- visual vocabulary: shapes, density, rhythm, imagery, icon style, motion feel
- typography guidance: hierarchy, tone, scale, readability notes
- color guidance: palette intent, contrast, semantic states, dark/light notes
- layout guidance: grid, spacing, composition, responsive behavior
- anti-references: what to avoid and why
- UI generation prompt: for screens/components
- image generation prompt: only if bitmap imagery is useful

## Rules

- Do not claim external trend research unless actually performed.
- Do not copy proprietary references or recreate a living artist/brand exactly.
- Prefer product-specific clarity over decorative novelty.
- Keep prompts implementation-ready but framework-neutral.
- Ask only when missing context would materially change the direction.
