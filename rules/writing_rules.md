# Writing Rules

These rules are enforced without exception on every LaTeX file this skill generates.

---

## Prose rules

1. No `--` or `---` anywhere in prose. Use commas, semicolons, colons, or parentheses instead.

2. Every section opens with exactly one motivating sentence before the first definition or equation. The sentence states why this concept is needed, not what it is.

3. No sentence begins with a math symbol. Write "The value $V^\pi$..." not "$V^\pi$...".

4. No prose paragraph longer than 5 sentences without a display equation or environment breaking the flow.

5. Short, direct sentences. Prefer two short sentences over one compound sentence joined by "and" or "but".

6. Active voice in theorem statements and proofs. Write "We show that..." not "It can be shown that...".

7. No transitional summaries that repeat what was just said ("In this section we have shown..."). Cut them.

---

## Math and equation rules

8. Every display equation is labeled with `\label{eq:...}` and referred to in the text by `\cref{eq:...}` or `\eqref{eq:...}`. An equation that is never referred to should be inline, not displayed.

9. Display math is introduced by a complete sentence ending in a colon or a period. Never a bare colon at the end of a sentence fragment.

10. Every theorem, lemma, proposition, or claim has either an inline proof or an explicit note: "Proof deferred to [source], Theorem N." Avoid "the proof is straightforward" without a pointer.

11. Proofs end with `\qed` (provided by amsthm automatically via the proof environment).

---

## Structure and layout rules

12. No `\newpage`, `\clearpage`, or `\pagebreak` in the document body. The preamble spacing handles flow.

13. No `\vspace` larger than `\medskip` in body text.

14. At most 2 tcolorbox environments per section. `keyeqn` and `keyidea` are reserved for genuinely central results, not every definition.

15. `refnote` appears at most once per section, always at the end of the section.

16. Every figure is (a) referred to by number in the text, (b) genuinely informative and not reproducible by equations alone. If in doubt, omit the figure.

---

## Citation rules

17. Citations use `\cite{key}` with a specific chapter, section, or equation number where possible. Example: `\cite[Ch.~3, Theorem~3.1]{sutton2018}`.

18. Do not write "see [3]" without context. Write "the proof follows [3, Lemma 2.1]" or "this definition follows [5, Ch.~2]".
