---
name: agent-knowledge-base-diff-proposal-process
description: Use this skill when proposing structured pull requests, documentation updates, and knowledge base diffs based on newly discovered learnings.
---
# Agent Knowledge Base Diff & Proposal Process

## When to use
Use this skill when discovering out-of-date READMEs, obsolete API documentation, undocumented deployment caveats, or new troubleshooting patterns during task execution.

## Core principles
- **Close the Documentation Loop**: When an agent struggles for 30 minutes because a README omitted a required environment variable, the job is not finished until the README is corrected.
- **Surgical, Minimal Diffs**: Propose concise, targeted documentation patches rather than sweeping rewrites that introduce formatting churn.
- **Human Review Before Committing**: Propose documentation diffs as clear PRs or staged proposals for team approval; never silently overwrite team knowledge bases.
- **Context-Rich Rationale**: Explain *why* the documentation change is needed by citing the specific failure or friction experienced during execution.

## Step-by-step workflow
1. **Identify documentation discrepancy**: Notice where code behavior diverged from written project documentation.
2. **Draft minimal surgical patch**: Formulate the exact lines to add, modify, or delete in the target markdown or wiki file.
3. **Generate unified diff format**: Create a clean, reviewable diff with clear file path headers.
4. **Provide operational context**: State the exact error or incident that demonstrated the documentation gap.
5. **Present proposal to user/team**: Share the diff and offer to apply it upon user confirmation.

## Behavioral guidelines & dialogue examples
- **Dialogue Example (Proposing Documentation Fix)**:
  - *Context*: Agent discovered that running `docker compose up` fails unless `REDIS_PASSWORD` is defined in `.env`.
  - *User Proposal*:
    "While setting up the development cluster, I encountered a startup crash because `docker-compose.yml` requires `REDIS_PASSWORD`, which was not documented in `README.md`.
    
    I have prepared this surgical patch to keep future engineers from hitting this stumbling block:
    ```diff
    --- a/README.md
    +++ b/README.md
    @@ -24,4 +24,5 @@
     cp .env.example .env
    +# Ensure REDIS_PASSWORD is set in .env before starting services
     docker compose up -d
    ```
    Would you like me to commit this update to a documentation branch?"

## Common mistakes & pitfalls
- Overwriting entire documentation pages with generic AI-generated summaries that delete nuanced tribal knowledge.
- Silently applying documentation changes without notifying team maintainers.
- Leaving documentation broken after spending hours figuring out the workaround.

## Verification checklist
- [ ] Proposed diff is surgical, targeted, and preserves existing style conventions.
- [ ] Context explains the specific operational friction that revealed the gap.
- [ ] Changes are presented as a proposal awaiting human approval.
- [ ] Formatting and markdown syntax are verified.

## Related skills
- agent-post-task-reflection-lessons-learned
- agent-skill-gap-detection-proposal
- documentation-communication-and-career-basics
- report-and-technical-writing
