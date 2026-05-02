# MCP Library

This folder tracks MCP servers or MCP configuration snippets that may be useful later.

Nothing here is installed into projects by default.

Recommended policy:

- Keep MCP candidates in `experimental/` until tested.
- Do not install MCP servers that can read secrets or perform destructive actions without explicit approval.
- Prefer local/read-only MCP tools for near-release projects.

Possible future candidates:

- code-review-graph: local structural code graph for review and blast-radius analysis.
- claude-context: semantic code search for large codebases, requires external vector store/API setup.
- browser-harness: real browser automation, powerful but higher risk.
