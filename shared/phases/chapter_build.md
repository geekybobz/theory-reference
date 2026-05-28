# Chapter Build Phase

## Flow

1. Read `outline/ch{N}.md`
2. Present it to the user
3. Wait for approval or edits
4. Build the chapter only after approval

## First chapter only

Also read:
- `templates/main.tex`
- `templates/preamble_base.tex`
- `templates/preamble_math.tex`
- `templates/preamble_domain.tex`

Write project-level files only once.

## Always read before writing LaTeX

Read `rules/rules.md` and `templates/chapter.tex` before drafting the chapter.

## Constraints

- No exercises unless the user asks
- No decorative figures
- No filler summaries
- Keep prose compact
- Every display equation must be referenced
- Sections tagged `path: extended` in the outline begin with `\paragraph*{Extended.}` so they are visually skippable on a first-pass read
