# AI Agent Kit Update Checklist

Use this checklist before adding new skills, agents, MCP servers, or workflow rules to the kit.

## Before Adding

- [ ] Source is trusted enough to inspect.
- [ ] README, docs, and `SKILL.md` or agent instructions were reviewed.
- [ ] Scripts and install commands were inspected.
- [ ] No hidden secret collection.
- [ ] No auto-deploy, auto-push, auto-commit, auto-delete, or destructive command by default.
- [ ] No broad refactor behavior without explicit user approval.
- [ ] Works with Codex, Claude Code, or both.
- [ ] Tested in a sandbox project before stable promotion.

## Classification

Choose one:

- [ ] inbox: not reviewed yet
- [ ] experimental: reviewed but not trusted for real projects yet
- [ ] stable: tested and safe for normal projects
- [ ] archived: outdated or replaced
- [ ] rejected: unsafe, incompatible, or unnecessary

## Compatibility

- [ ] Codex CLI
- [ ] Codex VS Code extension
- [ ] Claude Code CLI
- [ ] Claude Code VS Code extension
- [ ] Windows PowerShell
- [ ] macOS/Linux shell
- [ ] Project-local install
- [ ] User-global install

## Promotion Requirements

Before moving experimental to stable:

- [ ] Tested on a throwaway project.
- [ ] Did not modify files unexpectedly.
- [ ] Did not read secrets.
- [ ] Produced useful output.
- [ ] Did not create excessive prompt bloat.
- [ ] Added to `CHANGELOG.md`.
- [ ] Added or updated `docs/COMPATIBILITY.md`.
