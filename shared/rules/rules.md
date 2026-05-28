# Rules

Apply on every generated LaTeX file.

## Prose

- No em dashes
- Start each section with one motivating sentence
- No sentence begins with a math symbol
- No prose block longer than 5 sentences without a break
- Prefer short active sentences
- No repeated summary sentences
- CRA ordering: for non-trivial concepts place an `intuition` block or a one-line concrete example *before* `\begin{definition}`, not after
- Elaborative interrogation: after any non-trivial theorem, pose one why-question before the next definition (e.g. "What fails if condition X is removed?") — place in a mode-B checkpoint or as a plain sentence

## Math

- Every display equation gets `\label{eq:...}`
- Every display equation is referenced in text
- Unreferenced equations should be inline
- Every theorem-like statement has an inline proof or a deferred source note
- Proofs end with `\qed`

## Layout

- No `\newpage`, `\clearpage`, `\pagebreak`
- No large manual spacing
- Keep box use sparse
- Figures: include only when a diagram encodes structural information that prose and equations cannot convey (commutative diagrams, geometric proof sketches, dependency graphs). For MST-style content this is rare. When used: generate with Python (`scripts/figure_template.py`), output as `.pgf` (`\input{}`) or `.pdf` (`\includegraphics{}`). Place the figure immediately adjacent to the text that references it.
- Cite figures in text

## Notation

- scalar: `$x$`
- vector: `$\mathbf{x}$`
- matrix: `$\mathbf{A}$`
- set: `$\mathcal{X}$`
- random variable: `$X$`
- operator names upright: `\mathrm{tr}`, `\argmax`
- defined as: `:=`
- expectation specifies distribution when needed
- use domain macros only in `preamble_domain.tex`

## Box usage

Use only when they add information density. At most 2 boxes per section. No nested boxes. Bullets only inside `roadmap`.

| Box | Colour | Rule |
|---|---|---|
| `roadmap` | teal | once per chapter |
| `keyidea` | blue | central conceptual insight |
| `keyeqn` | yellow | core equations only |
| `intuition` | gray | useful mental model |
| `mistake` | pink | real common misconception only |
| `checkpoint` | amber | mode A: verify (did you follow the derivation); mode B: recall (close notes, derive from scratch) |
| `selfcheck` | green | claim fully proved here |
| `refnote` | purple | once per section, at end |
| `connection` | navy | once near chapter end; links to application domain |
| `bridge` | brown | once per section max; links to a specific result in another chapter |
| `notation` | slate | notation-heavy openings only |

Signatures:
- All boxes except `connection` and `bridge`: `\begin{boxname}[opts] ... \end{boxname}`
- `connection` takes a mandatory title: `\begin{connection}{RL Connection} ... \end{connection}`
- `bridge` takes a mandatory title: `\begin{bridge}{Ch.2: Orthogonality} ... \end{bridge}`
