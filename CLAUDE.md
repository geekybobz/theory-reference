# Claude Notes

Use Claude skill conventions only in this wrapper layer.

Rules:
- Keep wrapper behavior minimal
- Do not copy shared instructions into Claude-only files
- If Claude-specific settings are needed, keep them outside `shared/`
- Prefer the same phase flow and filenames as the shared skill
