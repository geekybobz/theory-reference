# Rules

Apply on every generated LaTeX file.

## Prose
- No em dashes; no sentence begins with a math symbol
- Start each section with one motivating sentence; no filler summary sentences
- No prose block longer than 5 sentences without a break; prefer short active sentences
- CRA + elaboration: place `intuition` block or concrete example *before* `\begin{definition}`; after any non-trivial theorem pose a why-question before the next def (mode-B checkpoint or plain sentence)

## Math
- Every display equation: `\label{eq:...}` and referenced in text; unreferenced → inline
- Every theorem-like statement: inline proof or deferred source note; proofs end with `\qed`

## Layout
- No `\newpage`, `\clearpage`, `\pagebreak`; no large manual spacing; keep box use sparse
- Figures: only when a diagram encodes structure prose/equations cannot (commutative diagrams, geometric sketches, dep graphs). Generate with Python (`scripts/figure_template.py`), output `.pgf` or `.pdf`. Cite in text.

## Notation

| Form | Style |
|---|---|
| scalar | `$x$` |
| vector | `$\mathbf{x}$` |
| matrix | `$\mathbf{A}$` |
| set | `$\mathcal{X}$` |
| random variable | `$X$` |
| operator | `\mathrm{tr}`, `\argmax` (upright) |
| defined as | `:=` |
| domain macros | `preamble_domain.tex` only |

## Boxes

At most 2 per section. No nested boxes. Bullets only inside `roadmap`.

| Box | When |
|---|---|
| `roadmap` | once per chapter |
| `keyidea` | central conceptual insight |
| `keyeqn` | core equations only |
| `intuition` | useful mental model |
| `mistake` | real common misconception only |
| `checkpoint` | mode A: verify (follow derivation) / mode B: recall (derive from scratch) |
| `selfcheck` | claim fully proved here |
| `refnote` | once per section, at end |
| `connection` | once near chapter end; links to application domain |
| `bridge` | once per section max; links to result in another chapter |
| `notation` | notation-heavy openings only |

Signatures: all boxes → `\begin{name}...\end{name}`. `connection` and `bridge` take a mandatory title arg: `\begin{bridge}{Ch.2: Orthogonality}`.
