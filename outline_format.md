# Chapter Outline Format

Input to chapter build. Output of planning phase.
One file per chapter saved at `outline/ch{N}.md`.

---

## Template

```
CH{N}: {Title}
prereqs: {chapter refs or prior knowledge required}
depth: {theorem-proof-compact | derivation-first | intuition-first | survey}

sections:
  {N}.{k} {Section Title}
      def: {Name} — {one-line description}
      thm: {Name} — {one-line}; proof: {inline | deferred: Source Thm N}
      keyidea: {yes — one line | no}
      keyeqn: {label-slug — what it expresses | no}
      intuition: {yes | no}
      mistake: {yes — misconception described | no}
      checkpoint: {yes | no}

boxes: roadmap[, keyidea×N][, keyeqn×N][, intuition×N][, refnote: Source Ch.N][, connection: domain]
figure: {YES: one-line description | NO}
optional: {worked-example | appendix | none}
est-pages: ~{N}
```

---

## Rules

- Include only the rows (def / thm / keyidea / etc.) that apply to that section. Omit absent ones.
- `proof: inline` means a short proof is written in the chapter. `deferred` means cite only.
- Keep each file to 20–30 lines. Dense is better than verbose.
