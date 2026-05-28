# Chapter Build Phase

## Flow

1. Read `{PROJECT_DIR}/outline/ch{N}.md`
2. Present it to the user
3. Wait for approval or edits
4. Build the chapter only after approval

## First chapter only

Also read:
- `templates/main.tex`
- `templates/preamble_base.tex`
- `templates/preamble_math.tex`
- `templates/preamble_domain.tex`

Write project-level files only once, to `{PROJECT_DIR}/`:
- `{PROJECT_DIR}/main.tex`
- `{PROJECT_DIR}/preamble_base.tex`
- `{PROJECT_DIR}/preamble_math.tex`
- `{PROJECT_DIR}/preamble_domain.tex`

## Always read before writing LaTeX

Read `rules/rules.md` and `templates/chapter.tex` before drafting the chapter.

Write the chapter to `{PROJECT_DIR}/chapters/ch{N}_{slug}.tex`.

## Constraints

- No exercises unless the user asks
- No decorative figures
- No filler summaries
- Keep prose compact
- Every display equation must be referenced
- Sections tagged `path: extended` in the outline begin with `\paragraph*{Extended.}` so they are visually skippable on a first-pass read
