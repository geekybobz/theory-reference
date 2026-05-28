#!/usr/bin/env bash
set -euo pipefail

echo "Validate wrapper paths and shared entrypoints."
test -f shared/SKILL.md
test -f claude/.claude/skills/theory-reference/SKILL.md
test -f codex/SKILL.md
echo "OK"
