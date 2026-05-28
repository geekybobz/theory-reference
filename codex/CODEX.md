# Codex Notes

Use Codex-specific behavior only in this wrapper layer.

Rules:
- Keep wrapper behavior minimal
- Do not duplicate shared instructions
- Prefer the shared phase routing exactly
- Add Codex metadata in `agents/openai.yaml`, not in the shared files
- Treat the installed skill root as the Codex entrypoint
- Read only `shared/` files that the router or active phase requires
