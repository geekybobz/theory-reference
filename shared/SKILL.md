---
name: theory-reference
description: Build a rigorous compact theoretical reference document in LaTeX for any topic.
---

# theory-reference

## Project directory

Before routing, resolve PROJECT_DIR — the folder where `plan.md`, `outline/`, and output LaTeX will live.

1. If the user's message contains a path, use it as PROJECT_DIR.
2. Else read `README.md` in the working directory (if it exists) and look for a field such as `notes-dir:`, `project-dir:`, or `output-dir:`. Use the value if found.
3. Else ask: "Where should project files live? Press Enter to use the current directory."

Use PROJECT_DIR for every project file reference below. Skill-internal files (phases/, rules/, templates/) are unaffected — they resolve relative to the skill location as before.

## Routing

Check PROJECT_DIR for `plan.md`.

If `plan.md` is absent:
- Read `phases/planning.md`
- Read nothing else unless that file tells you to

If `plan.md` exists and the user asks to build a chapter:
- Read `phases/chapter_build.md`
- Read only the requested `{PROJECT_DIR}/outline/ch{N}.md`
- Read no other files unless `phases/chapter_build.md` tells you to

If `plan.md` exists and the user asks to review a chapter:
- Read only `{PROJECT_DIR}/outline/ch{N}.md`
- Present it and wait

## Loading rule

Load the minimum files needed for the active phase.
Do not preload rules, templates, or outlines speculatively.
