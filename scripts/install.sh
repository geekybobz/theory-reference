#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SHARED="$REPO_ROOT/shared"

required=(
  "$SHARED/SKILL.md"
  "$SHARED/phases/planning.md"
  "$SHARED/phases/chapter_build.md"
  "$SHARED/outline_format.md"
  "$SHARED/rules/rules.md"
  "$SHARED/templates/chapter.tex"
  "$SHARED/templates/main.tex"
  "$REPO_ROOT/claude/.claude/skills/theory-reference/CLAUDE.md"
  "$REPO_ROOT/codex/SKILL.md"
  "$REPO_ROOT/codex/CODEX.md"
  "$REPO_ROOT/codex/agents/openai.yaml"
)

for f in "${required[@]}"; do
  test -f "$f" || { echo "Missing: $f"; exit 1; }
done

# ── Codex ────────────────────────────────────────────────────
# Codex prunes unknown subdirectories from skill dirs, so shared/ cannot
# be copied there. Use an absolute path to the repo instead.
CODEX_HOME_DIR="${CODEX_HOME:-$HOME/.codex}"
CODEX_DEST="$CODEX_HOME_DIR/skills/theory-reference"
mkdir -p "$CODEX_DEST"

cp "$REPO_ROOT/codex/CODEX.md" "$CODEX_DEST/CODEX.md"

cat > "$CODEX_DEST/SKILL.md" <<EOF
---
name: theory-reference
description: Build rigorous compact theoretical reference notes in LaTeX for a topic. Use when asked to build notes, create a reference, or make a math refresher.
---

Read \`$SHARED/SKILL.md\` first.

Apply \`CODEX.md\` only if needed.

Do not load any other file unless the shared skill routes to it.
EOF

echo "Codex:  installed to $CODEX_DEST"

# ── Claude ───────────────────────────────────────────────────
# ~/.claude/skills/theory-reference may be a symlink; resolve to the real path.
CLAUDE_LINK="$HOME/.claude/skills/theory-reference"
if [ -L "$CLAUDE_LINK" ]; then
  CLAUDE_DEST="$(readlink "$CLAUDE_LINK")"
else
  CLAUDE_DEST="$CLAUDE_LINK"
fi
mkdir -p "$CLAUDE_DEST"

rm -rf "$CLAUDE_DEST/shared"
cp -R "$SHARED" "$CLAUDE_DEST/shared"
cp "$REPO_ROOT/claude/.claude/skills/theory-reference/CLAUDE.md" "$CLAUDE_DEST/CLAUDE.md"

cat > "$CLAUDE_DEST/SKILL.md" <<EOF
---
name: theory-reference
description: Build rigorous compact theoretical reference notes in LaTeX for a topic. Use when asked to build notes, create a reference, or make a math refresher.
---

Read \`shared/SKILL.md\` first.

Apply \`CLAUDE.md\` only if needed.

Do not load any other file unless the shared skill routes to it.
EOF

echo "Claude: installed to $CLAUDE_DEST"
echo ""
echo "Shared logic source: $SHARED"
echo "Re-run this script any time shared/, claude/, or codex/ changes."
