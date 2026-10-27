---
name: agent-context-budget-management-strategies
description: Use this skill when monitoring, budgeting, and optimizing context window tokens during complex, multi-turn technical workflows.
---
# Agent Context Budget Management Strategies

## When to use
Use this skill during large refactorings, multi-file codebases audits, extensive log analyses, or long-running conversations where context window exhaustion threatens performance.

## Core principles
- **Context is an Expensive, Finite Resource**: As context windows fill up, model latency increases, retrieval precision degrades ("lost-in-the-middle" effect), and cost escalates.
- **Selective Reading Over Bulk Ingestion**: Never dump 10,000 lines of logs or entire source directories into context; use targeted grep, line slices, and AST searches.
- **Summarize and Truncate Progressively**: Roll completed execution steps into compact checkpoint summaries before launching the next phase.
- **The Offloading Rule**: Store heavy reference documentation, intermediate diffs, and large datasets on the local filesystem, loading only relevant snippets into context.

## Step-by-step workflow
1. **Estimate context headroom**: Gauge token consumption relative to the model's effective context limit (aim to stay under 60% capacity for peak reasoning).
2. **Filter tool inputs & outputs**:
   - Limit `view_file` to specific line ranges (50–100 lines) rather than full files.
   - Use `grep_search` with specific path and file globs.
   - Limit command outputs (`tail -n 50`, `git log -n 5`).
3. **Execute periodic context compaction**: When transitioning phases, summarize prior discoveries into a structured state ledger.
4. **Purge dead context**: Discard intermediate failure logs and dead-end traces once the root cause is resolved.
5. **Verify retention of core invariants**: Ensure project goals, critical constraints, and active task items remain in active context.

## Behavioral guidelines & dialogue examples
- **Efficient vs. Wasteful Context Usage**:
  - *Wasteful*: Reading 12 files completely (24,000 tokens) to find where a single interface is declared.
  - *Efficient*: Running `grep_search(Query="interface UserSession", Includes=["*.ts"])` (40 tokens), identifying the exact file and line, and reading only lines 40–60.

## Common mistakes & pitfalls
- Calling `cat` or `view_file` on 2,000-line minified JavaScript bundles or compiled binaries.
- Repeating the entire conversational history in every subagent delegation call.
- Allowing runaway tool error outputs to fill 80% of the context window before noticing.

## Verification checklist
- [ ] Large files are read via targeted line slicing rather than bulk dumps.
- [ ] Command outputs are truncated to relevant lines via pipes or flags.
- [ ] Completed sub-tasks are summarized into compact state checkpoints.
- [ ] Context headroom leaves ample room for complex model reasoning.

## Related skills
- agent-scratchpad-intermediate-reasoning-curation
- agent-task-decomposition-hierarchical-planning
- agent-memory-curation-episodic-pruning
- prompt-and-context-engineering
