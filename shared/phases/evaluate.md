# Evaluate Phase

Load: `{PROJECT_DIR}/plan.md` + every `{OUTLINE_DIR}/ch{NN}.md`. No tex files or templates.

## Audit axes

**Flow** (per chapter)
- Deps reference only prior chapters; all `deps:` fields resolve to earlier chapters
- No concept used before introduced; macro order moves concrete → abstract → general
- Flag: `gap` (concept before defined) | `reorder` (chapter belongs earlier)

**Accessibility** (global)
- Prereqs realistic for target reader
- ch01 has `intuition: yes` + at least one `keyidea`
- First-half chapters weighted `checkpoint: verify`; second-half `checkpoint: recall`
- `path: core` sections readable without `path: extended`
- `mistake:` present at hardest conceptual jumps; est-pages ≤ 6 for early chapters
- Flag: `too steep` | `no escape hatch`

**Pedagogy** (per chapter)
- Section order follows CRA: intuition → def → thm (not def first)
- `depth:` matches content: `derivation-first` → keyeqn present; `intuition-first` → intuition leads; `theorem-proof-compact` → thm + proof disposition stated
- Short proofs `inline`, long proofs `deferred`
- `bridge:` planned where chapters share structure; every chapter has ≥ 1 `checkpoint`
- Flag: `wrong order` | `depth mismatch` | `no checkpoint`

## Output

```
FLOW        ch01: ✓  chNN: ⚠ gap — X used here, first defined in chMM
ACCESS      prereqs: realistic | too steep   scaffolding: adequate | weak   core-path: ok | no escape hatch
PEDAGOGY    ch01: ✓  ch02: ⚠ wrong order   ch03: ✗ no checkpoint

EDITS (ranked)
  1. ...
```

Ask: accept all / pick items / reject — before making changes.

## After approval

Edit only approved `outline/ch{NN}.md` files. Do not reorder `plan.md` chapters without explicit approval. No LaTeX. Confirm changed files; offer chapter build.
