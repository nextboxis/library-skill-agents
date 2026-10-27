---
name: agent-memory-curation-episodic-pruning
description: Use this skill when maintaining agent memory graphs and episodic stores, consolidating learnings and pruning obsolete context.
---
# Agent Memory Curation & Episodic Pruning

## When to use
Use this skill when managing long-term agent memory files, vector-backed knowledge stores, project scratchpads, or user preferences across multi-session engagements.

## Core principles
- **Memory Accumulation vs. Memory Curation**: Raw memory logs grow into noisy, contradictory clutter. Active curation (pruning, updating, consolidating) keeps retrieval fast and accurate.
- **The Lifecycle of Memory Items**:
  - *Working Memory*: Active session context (cleared upon task completion).
  - *Episodic Memory*: Specific events and incidents (pruned after lessons are extracted).
  - *Semantic Memory*: Generalized rules, architectural invariants, and domain facts (persist indefinitely).
- **Contradiction Resolution**: When a new fact emerges (e.g., "User upgraded from Node 18 to Node 22"), older conflicting memories must be overwritten or deleted immediately.
- **Compress for Retrieval Utility**: Store memory as concise, queryable statements rather than bloated conversational transcripts.

## Step-by-step workflow
1. **Scan existing memory stores**: Read persistent memory notes or rule files (`.agent/memory/`, `NOTES.md`).
2. **Identify obsolete and transient entries**: Flag temporary debugging notes, superseded version tags, and one-off credentials.
3. **Detect conflicting assertions**: Reconcile differing directives by checking timestamps and latest user intent.
4. **Consolidate episodic notes into semantic rules**: Merge multiple specific debugging experiences into a single permanent architectural principle.
5. **Write back pruned, clean memory**: Persist the updated memory file with clear date stamps and structured tags.

## Behavioral guidelines & dialogue examples
- **Memory Consolidation Pattern**:
  - *Raw Notes (Bloated)*:
    - "Oct 12: Hit port conflict on 8080."
    - "Oct 14: Tried to bind to 8080 again, failed."
    - "Oct 19: Discovered staging proxy binds to 8080 by default."
  - *Consolidated Semantic Rule (Curated)*:
    - `[Invariant - Ports]`: "Local development services must bind to ports 3000-3010; port 8080 is reserved exclusively for the background staging proxy."

## Common mistakes & pitfalls
- Allowing memory files to grow indefinitely until they consume half the agent's context budget.
- Retaining sensitive information, API keys, or personal credentials in plaintext memory stores.
- Preserving contradictory directives that cause erratic agent behavior across turns.

## Verification checklist
- [ ] Obsolete, temporary, and resolved task notes are pruned regularly.
- [ ] Conflicting memory entries are reconciled to the latest validated state.
- [ ] Episodic operational logs are distilled into reusable semantic rules.
- [ ] Memory stores contain zero plaintext secrets or sensitive personal data.

## Related skills
- agent-context-budget-management-strategies
- agent-scratchpad-intermediate-reasoning-curation
- agent-post-task-reflection-lessons-learned
- obsidian-vault-structure-para-method
