---
name: agent-skill-gap-detection-proposal
description: Use this skill when identifying missing domain capabilities, missing CLI tools, or knowledge deficits during agent task execution.
---
# Agent Skill Gap Detection & Proposal

## When to use
Use this skill when an agent encounters unfamiliar third-party APIs, specialized domain workflows, repeated execution struggles, or user requests for which no specialized skill exists.

## Core principles
- **Self-Awareness of Operational Boundaries**: An agent must know what it does not know. Detecting a capability gap early prevents trial-and-error thrashing and hallucinations.
- **Friction as Innovation Signal**: When an agent requires 15 tool calls and 3 error recoveries to perform a task that should take 2 steps, a specialized skill is needed.
- **The Anatomy of a Skill Proposal**:
  - *Trigger Condition*: The exact user intent or environment state requiring the skill.
  - *Domain SOP*: Step-by-step procedures, tool combinations, and verified commands.
  - *Guardrails & Verification*: Error recovery routines and verification checklists.
- **Autonomous Drafting, Human-in-the-Loop Approval**: The agent should draft the candidate skill definition but prompt human engineers for review before adding it to production.

## Step-by-step workflow
1. **Monitor execution efficiency metrics**: Flag tasks requiring excessive retries, unassisted documentation parsing, or user interventions.
2. **Evaluate skill library coverage**: Search `.agent/skills/` to confirm no existing skill handles the domain.
3. **Extract repeatable workflow pattern**: Synthesize the successful steps, flags, and error workarounds used to complete the task.
4. **Draft standardized SKILL.md**:
   - Valid YAML frontmatter with kebab-case name and description.
   - Core operational steps, concrete code snippets, and review checklists.
5. **Stage proposal for human review**: Save the candidate skill in a review directory (`.agent/proposed-skills/`) and notify the user.

## Behavioral guidelines & dialogue examples
- **Dialogue Example (Agent Proposing a New Skill)**:
  - *Agent Internal Reflection*: "I struggled for 8 turns to configure Cloudflare Zero Trust tunnel routing because our skill library only covers AWS and GCP networking."
  - *User-Facing Proposal*: "I notice our skill library currently lacks specialized guidance for Cloudflare Zero Trust tunnel orchestration, which caused extra diagnostic steps during this setup. I have synthesized our working configuration into a new candidate skill: `.agent/proposed-skills/cloudflare-zero-trust-tunnels/SKILL.md`. Would you like me to add it to our active skills library?"

## Common mistakes & pitfalls
- Creating redundant micro-skills for tasks already covered by general skills.
- Writing vague, high-level skill drafts that lack concrete runnable commands.
- Silently deploying unvetted skills into production agent paths without review.

## Verification checklist
- [ ] Gap is validated as an unaddressed, recurring operational workflow.
- [ ] Candidate skill follows standardized Antigravity SKILL.md format.
- [ ] Concrete code snippets, commands, and guardrails are included.
- [ ] Proposed skill is submitted for human review and validation.

## Related skills
- agent-post-task-reflection-lessons-learned
- agent-prompt-instruction-refinement
- agent-knowledge-base-diff-proposal-process
- workflow-skill-creator
