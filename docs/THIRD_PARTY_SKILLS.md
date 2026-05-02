# Third-Party Skill Sources

This kit tracks external skill/agent repositories as sources, not as automatic project dependencies.

## anthropics/skills

Status: reference / experimental source.

Use for:
- learning Agent Skills folder structure
- reviewing examples of `SKILL.md` metadata and progressive loading
- selecting individual skills to test in sandbox projects
- improving the AI Agent Project Kit itself

Do not:
- copy the entire repository into every project
- promote document/browser/tool skills to stable without testing
- run scripts blindly
- add large assets to normal project templates

Recommended placement:
- notes: `sources/anthropics-skills/`
- selected experimental ideas: `skills-library/experimental/`
- tested and simplified skills: `skills-library/stable/`

## forrestchang/andrej-karpathy-skills

Status: stable guidance source.

Use for:
- think-before-coding behavior
- simplicity-first behavior
- surgical-change discipline
- goal-driven verification
- reducing overengineering and unrelated edits

Applied through:
- `templates/AGENTS.md` core behavior
- `skills-library/stable/karpathy-guidelines/`
- `templates/.agents/skills/karpathy-guidelines/`

Do not:
- force long response formats for every explanation-only question
- require every tiny question to update handoff files
- use broad refactor rules near release
