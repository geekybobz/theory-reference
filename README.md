# theory-reference

Shared, token-efficient skill repo with thin wrappers for Claude and Codex.

Principles:
- Put all reusable skill logic in `shared/`
- Keep model-specific wrappers minimal
- Duplicate nothing unless a platform requires it
- Route by phase so only small files are loaded
