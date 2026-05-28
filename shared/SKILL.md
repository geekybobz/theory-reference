---
name: theory-reference
description: Build a rigorous compact theoretical reference document in LaTeX for any topic.
---

# theory-reference

## Routing

Check the working directory for `plan.md`.

If `plan.md` is absent:
- Read `phases/planning.md`
- Read nothing else unless that file tells you to

If `plan.md` exists and the user asks to build a chapter:
- Read `phases/chapter_build.md`
- Read only the requested `outline/ch{N}.md`
- Read no other files unless `phases/chapter_build.md` tells you to

If `plan.md` exists and the user asks to review a chapter:
- Read only `outline/ch{N}.md`
- Present it and wait

## Loading rule

Load the minimum files needed for the active phase.
Do not preload rules, templates, or outlines speculatively.
