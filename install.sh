#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-$(pwd)}"
KIT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATE_DIR="$KIT_DIR/templates"
CANDIDATE_DIR="$ROOT/.ai-kit-candidates"

copy_or_candidate() {
  local src="$1"
  local dest="$2"
  local dest_dir
  dest_dir="$(dirname "$dest")"
  mkdir -p "$dest_dir"
  if [ -e "$dest" ]; then
    local candidate="$CANDIDATE_DIR/${dest#$ROOT/}"
    mkdir -p "$(dirname "$candidate")"
    cp "$src" "$candidate"
    echo "[SKIP] exists: ${dest#$ROOT/} -> template saved to .ai-kit-candidates/${dest#$ROOT/}"
  else
    cp "$src" "$dest"
    echo "[ADD] ${dest#$ROOT/}"
  fi
}

copy_tree_or_candidate() {
  local src_dir="$1"
  local dest_dir="$2"
  find "$src_dir" -type f | while read -r src; do
    local rel="${src#$src_dir/}"
    copy_or_candidate "$src" "$dest_dir/$rel"
  done
}

copy_or_candidate "$TEMPLATE_DIR/AGENTS.md" "$ROOT/AGENTS.md"
copy_or_candidate "$TEMPLATE_DIR/CLAUDE.md" "$ROOT/CLAUDE.md"
copy_or_candidate "$TEMPLATE_DIR/PROJECT_CONTEXT.md" "$ROOT/PROJECT_CONTEXT.md"
copy_or_candidate "$TEMPLATE_DIR/SESSION_HANDOFF.md" "$ROOT/SESSION_HANDOFF.md"
copy_tree_or_candidate "$TEMPLATE_DIR/.claude" "$ROOT/.claude"
copy_tree_or_candidate "$TEMPLATE_DIR/.codex" "$ROOT/.codex"
copy_tree_or_candidate "$TEMPLATE_DIR/.agents" "$ROOT/.agents"

# Mirror skills for Claude Code when project-level .claude/skills is not present.
mkdir -p "$ROOT/.claude/skills"
if [ -d "$ROOT/.agents/skills" ]; then
  find "$ROOT/.agents/skills" -mindepth 1 -maxdepth 1 -type d | while read -r skill; do
    name="$(basename "$skill")"
    if [ -e "$ROOT/.claude/skills/$name" ]; then
      echo "[SKIP] exists: .claude/skills/$name"
    else
      cp -R "$skill" "$ROOT/.claude/skills/$name"
      echo "[ADD] .claude/skills/$name"
    fi
  done
fi

echo ""
echo "Done. Review with:"
echo "  git status"
echo "  git diff -- AGENTS.md CLAUDE.md PROJECT_CONTEXT.md SESSION_HANDOFF.md .claude .codex .agents"
echo ""
echo "If .ai-kit-candidates exists, compare those files manually before replacing existing project files."
