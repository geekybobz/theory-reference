# Box Environment Usage Guide

Default behavior: use only `keyidea`, `keyeqn`, `refnote`, and `checkpoint` unless the user requests more structure.

---

## Environment reference

| Environment | Color | Fixed title | When to use | Frequency limit |
|---|---|---|---|---|
| `roadmap` | teal | "Chapter Roadmap" | Chapter opening only | Once per chapter |
| `keyidea` | blue | "Key Idea" | The one central conceptual insight of a section | Once per section max |
| `keyeqn` | yellow | "Key Equation" | The 1-2 equations most worth memorizing | Once per section max |
| `intuition` | gray | "Intuition" | A concrete analogy, geometric picture, or motivating example that precedes the formal treatment | Once per section |
| `mistake` | pink | "Common Mistake" | A misconception that frequently appears in practice | Only when the mistake is genuinely common, not for edge cases |
| `checkpoint` | amber | "Check" | An inline verification step after a non-obvious derivation step | Freely, wherever helpful |
| `refnote` | purple | "Further Reading" | Pointers to sources with specific chapter/theorem numbers | Once per section, at the end |
| `selfcheck` | green | "Self-Consistency Check" | A claim or result that is verified entirely within these notes | When a result is fully self-contained |
| `connection` | navy | Argument (e.g., "RL Connection") | The chapter's link to the target application domain | Once per chapter, near the end |
| `notation` | slate | "Notation" | A compact notation summary at the opening of a notation-heavy chapter | At most once per chapter |
| `example` | blue outline | "Worked Example N.k" | A fully worked numerical or derivation example | Only if user asks for worked examples |

---

## Nesting

Do not nest tcolorbox environments. A `keyeqn` inside a `keyidea` is not allowed.

## Equations inside boxes

Display equations inside boxes are allowed and encouraged for `keyeqn`. Use the standard `equation` environment. The label is still required.

## Lists inside boxes

Bullet lists inside `roadmap` are standard. Avoid bullet lists inside `keyidea` and `keyeqn`; use prose instead.
