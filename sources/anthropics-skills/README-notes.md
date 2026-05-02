# Source Notes: anthropics/skills

Purpose in this kit: reference and experimental source.

Do not copy the entire upstream repository into normal projects. Use it to learn skill structure and select individual ideas for sandbox testing.

## Useful Patterns To Borrow

- `SKILL.md` as the entrypoint.
- Short YAML frontmatter with clear name and description.
- Progressive loading: metadata first, body second, references/scripts only when needed.
- Keep skills focused and composable.
- Keep heavy assets and large references out of default project templates.

## Recommended Workflow

1. Review upstream skill or pattern.
2. Add a note under `inbox/new-skills-to-review/`.
3. If useful, create a simplified local version in `skills-library/experimental/`.
4. Test in a sandbox project.
5. Promote to `skills-library/stable/` only after testing.

## Current Local Derivative

- `skills-library/experimental/anthropic-skill-patterns/`

This is a small local reference skill for designing skills. It is not installed into projects by default.
