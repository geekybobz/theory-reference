---
name: theory-reference
description: Build a rigorous compact theoretical reference document in LaTeX for any topic.
---

# theory-reference

## Project discovery

Before routing, discover the project structure. Do this in order:

1. If the user's message contains a path, set PROJECT_DIR to that path.
2. Check `{PROJECT_DIR or CWD}/.theory-state` — if found, extract `project-dir`, `plan-file`, `outline-dir`, `chapters-dir` directly and skip steps 3–4.
3. Read `README.md` from CWD if it exists — it is the project manifest.
   Extract from it (look for a `<!-- theory-reference -->` block or plain fields):
   - `notes-dir` / `project-dir` → PROJECT_DIR
   - `plan-file` → PLAN_FILE (path to the plan document)
   - `outline-dir` → OUTLINE_DIR
   - `chapters-dir` → CHAPTERS_DIR
4. If README gives no useful info, inspect PROJECT_DIR:
   - PLAN_FILE: any `.md` file in PROJECT_DIR that contains both `topic:` and `chapters:` fields
   - OUTLINE_DIR: any subdirectory named `outline`, `outlines`, or similar containing `.md` files
5. Defaults (only if nothing found): PROJECT_DIR = CWD, PLAN_FILE = `plan.md`, OUTLINE_DIR = `outline/`, CHAPTERS_DIR = `chapters/`

Do not ask the user unless discovery produces genuine ambiguity (e.g. two conflicting plan files found).

Skill-internal files (`phases/`, `rules/`, `templates/`) resolve relative to the skill location and are unaffected.

## Routing

Use PLAN_FILE (discovered above) to determine phase.

If no plan file exists → read `phases/planning.md`. Read nothing else.

If a plan file is found:
- Read it. Validate it contains a `chapters:` field. If missing or malformed, tell the user and offer to regenerate.
- If the user says "redo plan", "start over", or "new plan" → read `phases/planning.md`.
- If the user says "evaluate", "evaluate plan", "audit plan", or "review plan" → read `phases/evaluate.md`. Load all outline files from OUTLINE_DIR.
- Otherwise → read `phases/chapter_build.md` and the relevant outline file from OUTLINE_DIR.

If the user only wants to review an outline → read the relevant outline file and present it without building.

## Loading rule

Load the minimum files needed for the active phase.
Do not preload rules, templates, or outlines speculatively.
