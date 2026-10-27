# Hermes Souls & Skills Adapter

This directory provides the interface between Hermes AI Agent Souls (`.soul.md`) and the 980 operational skills (`SKILL.md`).

## Integration Pattern:
- Each specialist soul references its corresponding operational skill in its system prompt.
- For cybersecurity souls: map to `skills/osint-*`, `skills/active-directory-*`, `skills/soc-*`.
- For coding souls: map to `skills/react-*`, `skills/python-*`, `skills/rust-*`, `skills/go-*`.
