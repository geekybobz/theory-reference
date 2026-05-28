# Chapter Build Phase

## Naming conventions

- Chapter number: zero-padded two digits — `ch01`, `ch02`, … `ch10`, `ch11`
- Slug: chapter title lowercased, spaces and hyphens replaced with underscores, non-alphanumeric stripped, max 20 chars
  Example: "Measure Theory Basics" → `measure_theory_basics`
- Outline file: `{PROJECT_DIR}/outline/ch{NN}.md`
- Chapter file: `{PROJECT_DIR}/chapters/ch{NN}_{slug}.tex`

## Flow

1. Read `{PROJECT_DIR}/outline/ch{NN}.md`
2. Present it to the user
3. Wait for approval or edits
4. Build the chapter only after approval

## Project-level files (first chapter only)

Check before writing — if any file already exists in `{PROJECT_DIR}`, skip it; do not overwrite.

If `{PROJECT_DIR}/main.tex` does not exist:
- Read `templates/main.tex`, `templates/preamble_base.tex`, `templates/preamble_math.tex`, `templates/preamble_domain.tex`
- Write all four to `{PROJECT_DIR}/`
- Note: all four must stay flat in `{PROJECT_DIR}/` — LaTeX resolves `\input{preamble_base}` from the same directory as `main.tex`

## After writing each chapter

Append `\include{chapters/ch{NN}_{slug}}` to `{PROJECT_DIR}/main.tex` immediately after the last existing `\include` line (or after the `% CHAPTERS` comment if no chapters yet). Do not duplicate an existing entry.

## Always read before writing LaTeX

Read `rules/rules.md` and `templates/chapter.tex` before drafting the chapter.

## Constraints

- No exercises unless the user asks
- No decorative figures
- No filler summaries
- Keep prose compact
- Every display equation must be referenced
- Sections tagged `path: extended` in the outline begin with `\paragraph*{Extended.}` so they are visually skippable on a first-pass read
