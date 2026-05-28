#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

required=(
  "$REPO_ROOT/shared/SKILL.md"
  "$REPO_ROOT/shared/phases/planning.md"
  "$REPO_ROOT/shared/phases/chapter_build.md"
  "$REPO_ROOT/shared/outline_format.md"
  "$REPO_ROOT/shared/rules/rules.md"
  "$REPO_ROOT/shared/templates/chapter.tex"
  "$REPO_ROOT/shared/templates/main.tex"
  "$REPO_ROOT/claude/.claude/skills/theory-reference/SKILL.md"
  "$REPO_ROOT/claude/.claude/skills/theory-reference/CLAUDE.md"
  "$REPO_ROOT/codex/SKILL.md"
  "$REPO_ROOT/codex/CODEX.md"
  "$REPO_ROOT/codex/agents/openai.yaml"
)

for f in "${required[@]}"; do
  test -f "$f" || { echo "Missing: $f"; exit 1; }
done

echo "Layout valid"
