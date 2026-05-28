# Planning Phase

Online search is pre-authorised for this phase. Search freely at any point without asking permission.

## 1. Research

Search for: canonical textbooks, lecture notes (MIT OCW, Stanford, CMU, ETH Zurich, NPTEL, UCL), and influential survey papers or tutorials on the topic.

Extract from sources:
- Standard conceptual order — what builds on what
- Typical proof style in the field (inline, deferred, sketch)
- Standard notation conventions
- Assumed prerequisite knowledge
- Common points where learners get stuck or hold misconceptions
- Examples and exercises used to build intuition

## 2. Pedagogy

Present:
- 3–5 most important sources (one line each: author · title · what it covers)
- 2–3 pedagogy options grounded in those sources, e.g.:
  - **Theorem-proof compact** (Bertsekas / Rudin style): def → thm → proof, minimal prose
  - **Derivation-first intuitive** (Sutton & Barto style): motivate every step before formalism
  - **Intuition-first with formal grounding** (Silver UCL style): concept → picture → equation → proof
- Flag which approach best suits a personal study resource: surfaces intuition, flags common mistakes, embeds self-checks
- Suggested chapter ordering with dependency notes (what each chapter requires)

Ask the user to confirm pedagogy direction and scope before proceeding.

## 3. Chapter outlines

Once pedagogy is confirmed, write one `outline/ch{N}.md` per chapter using the format in `outline_format.md`.

For each chapter include: specific theorems, definitions, key equations, proof strategies, box placements.
Keep each outline file to 20–30 lines — pseudocode density.

## 4. User review

Present the chapter list as a table: N | Title | One-line purpose | Dependencies.

State: "Does this structure and pedagogy look right? Any changes before I build?"

Do not generate any LaTeX until the user explicitly approves.

## 5. Write plan artefacts

After approval write:
- `plan.md` — topic, pedagogy choice, chapter list with dependency order, key sources
- `outline/ch{N}.md` — one per chapter (already written in step 3; update if user revised)
