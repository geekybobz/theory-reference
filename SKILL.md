---
description: Build a rigorous compact theoretical reference document in LaTeX for any topic (ML, RL, physics, mathematics, control theory, etc.). Trigger when the user asks to create lecture notes, a theoretical reference, a math refresher, or says "build notes on X", "create a reference for X", or invokes /theory-reference.
---

# theory-reference skill

## What this skill produces

A modular, tightly written LaTeX reference document for any theoretical topic.
Output: a preamble, a main.tex, and per-chapter .tex files.
Everything is self-contained. No dependency on any other project.

---

## CRITICAL: Review before build

**Never generate any files until the user has reviewed and approved a content plan.**

Every session must follow this sequence:

1. Run the research step (see below).
2. Present findings and a proposed document structure.
3. Explicitly ask: "Does this structure and pedagogy look right? Any changes before I build?"
4. Wait for approval.
5. Only then generate files.

If the user asks to skip the review, confirm once that they want to proceed directly, then build.

---

## Step 1: Online research (mandatory, run before anything else)

When a topic is given, search for:

**Textbooks and canonical references**
- Search for the standard textbooks used in graduate and advanced undergraduate courses on the topic.
- Look for books commonly cited in lecture notes (e.g., Sutton and Barto for RL, Rudin for analysis, Boyd and Vandenberghe for convex optimization).
- Note author, title, and which chapters are most relevant.

**Lecture notes and course pages**
Search specifically from these institutions and platforms:
- MIT OpenCourseWare (ocw.mit.edu)
- Stanford course pages
- CMU course pages
- ETH Zurich course pages
- UCL (David Silver RL lectures, etc.)
- NPTEL (nptel.ac.in) -- Indian Institute of Technology lecture series, strong in mathematics, control, and engineering topics
- Any other strong program relevant to the topic

**Survey papers and tutorials**
- Search for influential tutorial papers or survey articles that are commonly used as entry points to the topic.

**From these sources, extract:**
- The standard conceptual order (what is introduced first, what depends on what)
- The typical proof style (inline derivations vs. deferred proofs vs. proof sketches)
- The standard notation used in the community
- Common prerequisite knowledge assumed

**Present to the user:**
- A bullet list of the 3-5 most important sources found, with a one-line description of each
- 2-3 pedagogical options extracted from these sources (e.g., "Option A: theorem-proof compact, Option B: derivation-first intuitive, Option C: survey style")
- A proposed document structure: list of chapters/sections with one-line purpose each
- Ask which pedagogy to follow and whether the structure looks right

---

## Step 2: Set tone and depth

Once the user confirms a pedagogy direction, match the writing style to it.

Examples:
- Shalev-Shwartz style: definition-theorem-proof, concise, minimal prose between results
- Sutton and Barto style: motivate every step, intuition before formalism, short proofs
- Silver UCL style: equation-heavy, each concept grounded in a concrete example
- Bertsekas style: rigorous, proof-complete, dense, assumes mathematical maturity

Depth is set at the chapter level. Different chapters can have different depths if the user asks.

---

## Step 3: Generate LaTeX

Use the preamble template at `templates/preamble.tex` in this skill directory.
Use the chapter scaffold at `templates/chapter.tex`.
Use the main template at `templates/main.tex`.

Adapt the domain macros block in the preamble for the specific topic before writing any chapter.

Apply all rules in `rules/writing_rules.md` without exception.
Follow box usage guidelines in `rules/box_usage.md`.
Follow notation conventions in `rules/notation.md`.

---

## Step 4: Figures

Only generate a figure if:
- It conveys information that cannot be expressed clearly in equations or prose
- It is referred to explicitly in the text by number

If a figure is needed: generate it with Python (matplotlib), save to a `figures/` subdirectory, import via `\includegraphics`.

If in doubt, skip the figure.

---

## What is optional (only include if the user asks)

- Problem sets
- Worked examples
- Connection boxes (domain link at end of chapter)
- Appendices
- Index

By default, a chapter contains: roadmap box, section prose with inline proofs, keyidea and keyeqn boxes where genuinely useful, refnote at section ends.

---

## What is never included

- Em-dashes (`--` or `---`) in prose
- `\newpage` or `\clearpage` in the document body
- Passive voice in theorem statements
- Decorative figures
- Filler text or transitional summaries that repeat what was just said
- Problems or exercises unless the user explicitly asks
