---
description: Build a rigorous compact theoretical reference document in LaTeX for any topic (ML, RL, physics, mathematics, control theory, etc.). Trigger when the user asks to create lecture notes, a theoretical reference, a math refresher, or says "build notes on X", "create a reference for X", or invokes /theory-reference.
---

# theory-reference

## Phase routing

Check the working directory for `plan.md`.

**Planning phase** (`plan.md` absent):
Read `phases/planning.md`. Do nothing else until the user approves the plan.

**Chapter build** (`plan.md` exists, user names a chapter or says "build ch{N}"):
Read `phases/chapter_build.md` + `outline/ch{N}.md`.
Show the outline for review. Wait for approval or adjustments. Then build.

**Chapter review** (`plan.md` exists, user says "review ch{N}"):
Read `outline/ch{N}.md` only. Present it. Ask if ready to build.

Load no other files unless the active phase file explicitly instructs it.
