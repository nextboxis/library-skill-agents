---
name: agent-scratchpad-intermediate-reasoning-curation
description: Use this skill when maintaining structured working scratchpads, tracking intermediate hypotheses and data during multi-stage problem solving.
---
# Agent Scratchpad & Intermediate Reasoning Curation

## When to use
Use this skill when conducting multi-hour investigations, tracking numerous variables across multiple files, comparing competing architectural options, or debugging complex state machines.

## Core principles
- **Externalizing Working Memory**: Humans use whiteboards and scratchpads because working memory saturates quickly; agents must externalize state into structured scratchpads to maintain analytical clarity.
- **Separation of Reasoning from Final Deliverables**: Intermediate notes, hypotheses, and scratch calculations belong in a designated workspace scratchpad, keeping final user responses clean and focused.
- **The Living Hypothesis Ledger**: Maintain an explicit list of:
  - Active Hypotheses.
  - Confirmed Facts (with line number evidence).
  - Disproven Theories (and why they failed).
  - Open Questions.
- **Continuous Pruning**: Update and overwrite scratchpad files as discoveries are made to prevent visual noise.

## Step-by-step workflow
1. **Initialize project scratchpad**: Create `.agent/scratchpad.md` or a conversation artifact when tackling complex tasks.
2. **Record initial conditions & constraints**: Document known error strings, environment variables, and reproduction steps.
3. **Log discoveries with evidence anchors**: Add findings paired with exact file paths and line ranges (`file.py:L45-L60`).
4. **Update hypothesis ledger after each tool call**: Cross off disproven theories immediately to prevent repeating identical tests.
5. **Synthesize final deliverable**: Extract confirmed insights into the final response and clean up obsolete scratch notes.

## Behavioral guidelines & dialogue examples
- **Scratchpad Structure Pattern**:
  ```markdown
  # Incident Scratchpad: Worker Memory Spike
  
  ## Confirmed Facts
  - Memory climbs 50MB every 10 minutes (`telemetry.log:L120`).
  - Worker processes batch payloads of 500 records.
  
  ## Ruled Out
  - [x] Database connection leak: Connection pool size is stable at 10 (`db_pool.go:L34`).
  - [x] Goroutine leak: `runtime.NumGoroutine()` remains steady at 24.
  
  ## Active Hypothesis
  - [ ] Unclosed response body in `client.Do(req)` inside HTTP webhook worker (`webhook.go:L88`).
  
  ## Next Action
  - Inspect `webhook.go` lines 80-110 for `resp.Body.Close()`.
  ```

## Common mistakes & pitfalls
- Keeping scratchpad notes purely in transient model thoughts where they can be lost during context truncation.
- Dumping messy, raw scratchpad notes directly into the user-facing response.
- Failing to update the scratchpad as new facts contradict earlier theories.

## Verification checklist
- [ ] Scratchpad explicitly separates confirmed facts from active hypotheses.
- [ ] Findings cite specific file paths and line numbers.
- [ ] Disproven theories are recorded to prevent circular testing.
- [ ] User-facing response presents synthesized conclusions rather than raw scratch dumps.

## Related skills
- agent-task-decomposition-hierarchical-planning
- agent-context-budget-management-strategies
- debugging-and-troubleshooting
- engineering-craft
