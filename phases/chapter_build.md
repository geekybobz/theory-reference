# Chapter Build Phase

## Flow: review first, then build

1. Read `outline/ch{N}.md`. Present it verbatim to the user.
2. Ask: "Ready to build, or any adjustments to the outline?"
3. Apply any changes to `outline/ch{N}.md` before building.
4. Build `chapters/ch{N}_{slug}.tex` using `templates/chapter.tex` as scaffold.

**First chapter of a new project only:** also generate the preamble files and `main.tex`.
Read `templates/preamble_base.tex` + `templates/preamble_math.tex` + `templates/preamble_domain.tex`.
Adapt the domain macros block for the topic. Write all three as separate files in the project.

## Compact rules — apply without exception

### Prose
- No em-dashes. Use , ; : or parens.
- Every section: one motivating sentence before the first definition or equation.
- No sentence starts with a math symbol: "The value $V^\pi$…" not "$V^\pi$…".
- Max 5-sentence prose block without a display equation breaking the flow.
- Short direct sentences; avoid compound sentences joined by "and" or "but".
- Active voice: "We show that…" not "It can be shown that…".
- No trailing summaries that repeat what was just said. Cut them.

### Math
- Every display equation: `\label{eq:...}` + `\cref` or `\eqref` in text. Not referenced → make it inline.
- Display math introduced by a complete sentence ending in : or .
- Every theorem/lemma: inline proof, or explicit "Proof deferred to [Source, Thm N]".
- Proofs end with `\qed`.

### Layout
- No `\newpage`, `\clearpage`, `\pagebreak` in body.
- No `\vspace` larger than `\medskip`.
- Max 2 tcolorbox per section. `keyeqn`/`keyidea` for central results only.
- `refnote` once per section, always at the end.
- Every figure cited by number in text and not reproducible by equations alone.
- `\cite[Ch.~3, Thm~3.1]{key}` — always specific. Never bare "see [3]".

### Boxes
```
roadmap     | chapter opening                   | once/chapter
keyidea     | central conceptual insight        | once/section
keyeqn      | 1–2 most important equations     | once/section
intuition   | concrete analogy or picture       | once/section
mistake     | genuinely common misconception    | only when truly common
checkpoint  | inline verification step          | freely
refnote     | source pointers                   | once/section, at end
selfcheck   | claim proved within these notes   | when self-contained
connection  | domain link                       | once/chapter, near end
notation    | notation-heavy chapter opening    | at most once/chapter
example     | worked example                    | only if user asks
```
No nested boxes. Bullet lists only inside `roadmap`. Display eqs allowed inside `keyeqn`.

### Notation
```
scalar  $x$ italic           | vector $\mathbf{x}$ bold lower  | matrix $\mathbf{A}$ bold upper
RV      $X$ uppercase        | set    $\mathcal{X}$ calligraphic | dist  $P$, $\mathcal{D}$, $\mu$
operator $\mathrm{tr}$, $\argmax$ upright | defined-as $:=$ | approx $\approx$
```
Expectation: always specify distribution — `$\mathbb{E}_{x \sim P}[f(x)]$` — unless unambiguous.
KL: `$\KL{p}{q}$`. Entropy: `$\mathcal{H}(p)$` not `$H$`.
Domain macros: check or add in the project's `preamble_domain.tex` only.

## Never include
- Problems or exercises unless the user asks
- Decorative figures
- Filler text or transitional summaries that repeat what was just said
- Passive voice in theorem statements
