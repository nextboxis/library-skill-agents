---
name: agent-post-task-reflection-lessons-learned
description: Use this skill when an autonomous agent completes a complex task or encounters friction, extracting reusable lessons and refining operational rules.
---
# Agent Post-Task Reflection & Lessons Learned

## When to use
Use this skill immediately after completing a complex multi-step task, debugging an unfamiliar bug, experiencing unexpected tool failures, or fulfilling a challenging user request to extract systemic improvements.

## Core principles
- **Experience Without Reflection is Wasted Compute**: An agent that executes tasks without post-hoc reflection is doomed to repeat the same dead ends, inefficient queries, and syntax mistakes in subsequent turns.
- **The Three Questions of Reflection**:
  1. *What did I assume that turned out to be false?*
  2. *Where did I waste the most tool calls or context window?*
  3. *What generalizable rule would have prevented this friction?*
- **Extract Principles, Not Overfitted Memorization**: Formulate lessons as broad, robust behavioral heuristics rather than rigid string-matching rules.
- **Immediate Artifact Synthesis**: Capture insights into durable persistent files (`AGENTS.md`, memory stores, or rule updates) before the active context is truncated.

## Step-by-step workflow
1. **Trigger reflection hook**: Automatically evaluate the session trajectory upon final task completion.
2. **Audit execution timeline**: Review tool calls, error traces, and user corrective prompts.
3. **Isolate friction points**: Identify tool calls that failed, queries that returned zero results, or commands that required retry loops.
4. **Draft generalizable lessons**: Formulate 1 to 3 concrete operational directives.
5. **Persist and index**: Write the distilled lessons to the appropriate repository documentation or memory graph.

## Behavioral guidelines & dialogue examples
- **Reflection Example (After a Slow Database Debugging Task)**:
  - *Friction Observed*: Agent ran 6 separate ad-hoc `SELECT *` queries across 4 tables to trace an orphaned record, hitting context limits.
  - *Extracted Lesson*: "When diagnosing foreign key constraint failures in PostgreSQL, always query `information_schema.table_constraints` and `referential_constraints` first to map the dependency graph in 1 query, rather than guessing table relationships."
  - *Rule Update*: Append to `.agent/rules/db-debugging.md`: "Always inspect schema constraint catalogs before querying application data rows."

## Common mistakes & pitfalls
- Documenting trivial or tautological lessons (e.g., "Be more careful with syntax").
- Overfitting a rule to a rare edge case, making future agent behavior overly restrictive.
- Reflecting without persisting the insight to disk, losing the learning upon session termination.

## Verification checklist
- [ ] Post-task review identifies specific tool inefficiencies or false assumptions.
- [ ] Extracted lessons are formulated as positive, actionable rules.
- [ ] Insights are persisted in a project-accessible memory or documentation file.
- [ ] Rules are generalizable across similar technical domains.

## Related skills
- agent-error-taxonomy-root-cause-analysis
- agent-skill-gap-detection-proposal
- agent-prompt-instruction-refinement
- agent-learning-from-user-corrections
