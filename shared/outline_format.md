# Plan and Outline Format

## plan.md

```text
topic: {subject}
prereqs: {assumed background}
pedagogy: {derivation-first | intuition-first | theorem-proof-compact | survey}
sources:
  - {Author, Title, Year} -- one line why
chapters:
  ch01: {title} [deps: none]
  ch02: {title} [deps: ch01]
  ...
```

---

# Chapter Outline Format

One file per chapter at `outline/ch{N}.md`.

```text
CH{N}: {Title}
prereqs: {prior knowledge or chapter deps}
depth: {theorem-proof-compact | derivation-first | intuition-first | survey}

sections:
  {N}.{k} {Section Title}
      def: {Name} - {one line}
      thm: {Name} - {one line}; proof: {inline | deferred: Source Thm N}
      keyidea: {yes - one line | no}
      keyeqn: {label-slug - purpose | no}
      intuition: {yes | no}
      mistake: {yes - misconception | no}
      checkpoint: {verify | recall | why-question | no}
      path: {core | extended}

boxes: roadmap[, keyidea×N][, keyeqn×N][, intuition×N][, refnote: Source Ch.N][, connection: domain][, bridge: Ch.N]
figure: {YES: one line describing what the diagram encodes | NO}
optional: {worked-example | appendix | none}
est-pages: ~{N}
```

Rules:
- Include only the rows that apply
- Keep it to 20 to 30 lines
- Dense is better than verbose
