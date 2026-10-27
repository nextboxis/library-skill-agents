# CLAUDE.md - AI Agent Skills Context & Router

You have access to a library of **980 specialized agent skills** located in the `skills/` directory.
Each skill contains rigorous, operational step-by-step guidance, code snippets, pitfalls, and checklists.

## How to Use Skills
1. When asked to perform any specialized task (e.g., debugging, security review, React refactoring, DSA coding, system design, PowerPoint generation):
   - Consult `skills-manifest.json` or `INDEX.md` to identify the most relevant skill(s).
   - Read the corresponding `skills/<skill-name>/SKILL.md` before executing the task.
   - Strictly follow the **Core principles**, **Step-by-step workflow**, and **Verification checklist** defined in the skill.
2. For presentation design requests, consult `skills/pptx-router/SKILL.md` to route to the appropriate 3–5 PowerPoint skills.
3. For debugging tasks, always reference `skills/git-bisect-automated-bug-hunting/SKILL.md` or `skills/root-cause-analysis-5-whys-fishbone-diagram/SKILL.md`.
4. For security, refer to `skills/owasp-top-10-web-vulnerabilities-remediation/SKILL.md` and related AppSec/Pentest skills.

## Quick Skill Search
Run `skills-cli search "<keyword>"` (or `cargo run -- search "<keyword>"`) to find applicable skills.
