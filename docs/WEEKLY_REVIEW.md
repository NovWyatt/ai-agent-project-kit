# Weekly AI Agent Kit Review

Use this once per week to decide whether the kit should be updated.

## Step 1: Discover

Check:
- GitHub Trending
- official Codex updates
- official Claude Code updates
- new skills or MCP servers
- issues/discussions in tools already used

## Step 2: Triage

For each candidate, answer:

1. What does it do?
2. Does it help real projects or only demos?
3. Does it work with Codex, Claude Code, or both?
4. Does it add scripts, hooks, MCP servers, or permissions?
5. Could it read secrets or perform destructive actions?
6. Should it be rejected, added to inbox, added to experimental, or promoted to stable?

## Step 3: Test

Use a sandbox project. Do not test first in a project close to release.

## Step 4: Promote

Only promote to stable after:
- sandbox test passes
- behavior is predictable
- prompts stay concise
- no secret exposure
- no automatic destructive actions

## Weekly Output Template

```md
# Weekly Review - YYYY-MM-DD

## New Candidates
- ...

## Added to Inbox
- ...

## Added to Experimental
- ...

## Promoted to Stable
- ...

## Rejected
- ...

## Notes
- ...
```
