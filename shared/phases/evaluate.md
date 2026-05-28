# Evaluate Phase

## Goal

Audit an existing plan and its outlines across three axes before (or between) chapter builds:
1. **Flow** — is the step-by-step build order logical and complete?
2. **Beginner friendliness** — can a newcomer follow the chain without gaps?
3. **Pedagogy** — is theory developed correctly for each topic?

## What to read

Load:
- `{PROJECT_DIR}/plan.md`
- All files in `{OUTLINE_DIR}` (every `ch{NN}.md`)

Do not load chapter `.tex` files or templates.

## Audit checklist

### 1. Flow (step-by-step build order)

For each chapter, check:
- Does it depend only on chapters that appear before it?
- Are all `deps:` entries listed in `plan.md` actually defined in prior chapters?
- Is any concept used in a chapter that was never introduced earlier? (missing bridge)
- Does the macro order move from concrete → abstract → general?

Flag: **gap** if a concept is used before it is defined. **reorder** if a chapter logically belongs earlier.

### 2. Beginner friendliness (accessibility)

Check:
- Are stated prereqs (`prereqs:` in plan.md and each outline) realistic for the target reader?
- Does ch01 have at least one `intuition: yes` and one `keyidea` entry?
- Are early chapters (first half) heavier on `checkpoint: verify` and later chapters on `checkpoint: recall`?
- Can a reader follow the `path: core` sections alone without needing `path: extended`?
- Are misconceptions (`mistake:`) flagged at the hardest conceptual jumps?
- Is the estimated page count for early chapters not overwhelming (≤ ~6 pages)?

Flag: **too steep** if prereqs are unrealistic or ch01 lacks scaffolding. **no escape hatch** if there is no core-only path.

### 3. Pedagogy per chapter (theory development)

For each chapter outline, check:
- Does the section order follow CRA: intuition before definition before theorem?
- Is the stated `depth:` style consistent with what the sections actually contain?
  - `derivation-first`: should have `keyeqn` entries and step-by-step derivation notes
  - `intuition-first`: should lead with `intuition: yes` sections
  - `theorem-proof-compact`: should have `thm:` entries with proof disposition stated
- Are proofs marked `inline` only for short proofs? Are longer ones `deferred`?
- Are `bridge:` entries planned where chapters share overlapping structure?
- Does each chapter have at least one `checkpoint`?

Flag: **wrong order** if defs precede intuition in early sections. **depth mismatch** if stated depth contradicts section content. **no checkpoint** if a chapter has none.

## Output to user

Present a structured report:

```
FLOW
  ch01: ✓
  ch02: ✓
  chNN: ⚠ gap — <concept> used here, first defined in chMM

ACCESSIBILITY
  prereqs: realistic | too steep
  ch01 scaffolding: adequate | weak
  core path: complete | no escape hatch
  early checkpoints: present | missing

PEDAGOGY (per chapter)
  ch01: ✓ | ⚠ wrong order | ⚠ depth mismatch | ✗ no checkpoint
  ...

RECOMMENDED EDITS (ranked by importance)
  1. ...
  2. ...
```

Then ask: accept all / pick specific items / reject — before making any changes.

## After approval

Apply only the approved edits to the affected `outline/ch{NN}.md` files.
Do not touch `plan.md` chapter order unless the user explicitly approves a reorder.
Do not generate any LaTeX.

After edits, confirm which files were changed and offer to proceed to chapter build.
