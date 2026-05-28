---
name: theory-reference
description: Build a rigorous compact theoretical reference document in LaTeX for any topic.
---

# theory-reference

## Project directory

Resolve PROJECT_DIR before routing — the folder where `plan.md`, `outline/`, and output LaTeX live.

1. If the user's message contains a path, use it.
2. Else if `README.md` exists in CWD, read it and look for `notes-dir:`, `project-dir:`, or `output-dir:`. Use the value if found.
3. Else use CWD silently — do not ask.

Skill-internal files (`phases/`, `rules/`, `templates/`) resolve relative to the skill location and are unaffected.

## Routing

Check PROJECT_DIR for `plan.md`.

If `plan.md` is absent → read `phases/planning.md`. Read nothing else.

If `plan.md` exists:
- Validate it contains a `chapters:` field. If missing or malformed, tell the user and offer to regenerate.
- If the user explicitly says "redo plan", "start over", or "new plan" → read `phases/planning.md`.
- Otherwise → read `phases/chapter_build.md` and the requested `{PROJECT_DIR}/outline/ch{NN}.md`.

If the user asks to review an outline only → read `{PROJECT_DIR}/outline/ch{NN}.md` and present it without building.

## Loading rule

Load the minimum files needed for the active phase.
Do not preload rules, templates, or outlines speculatively.
