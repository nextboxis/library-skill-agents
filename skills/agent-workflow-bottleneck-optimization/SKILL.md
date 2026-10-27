---
name: agent-workflow-bottleneck-optimization
description: Use this skill when analyzing agent execution timelines, tool latency, and token overhead to streamline and accelerate workflows.
---
# Agent Workflow Bottleneck Optimization

## When to use
Use this skill when multi-step agent workflows are sluggish, CI pipeline triage takes excessive time, token budgets are consistently exceeded, or tool calls experience high latency.

## Core principles
- **Amdahl's Law in Agent Workflows**: Optimizing a fast step yields negligible gains; real speedups come from eliminating the single slowest serial bottleneck (e.g., redundant shell spins, huge file reads).
- **Parallelism vs. Sequential Chains**: Independent verification checks, static analyses, and search queries should execute concurrently rather than sequentially.
- **Caching Immutable Context**: Re-reading identical configuration files or documentation pages across multiple turns is pure waste; cache once in working memory.
- **Surgical Tool Selection**: Using a heavyweight browser automation tool when a lightweight `fetch` or `curl` call suffices introduces 10x latency and memory overhead.

## Step-by-step workflow
1. **Instrument workflow timing**: Measure elapsed duration and token consumption for each step in the pipeline.
2. **Identify the critical path bottleneck**: Find the step accounting for > 50% of total execution time or context usage.
3. **Analyze root cause of delay**: Determine if the bottleneck stems from network latency, serial execution, oversized payloads, or redundant tool calls.
4. **Apply optimization pattern**:
   - Batch independent tool calls.
   - Replace bulk file reads with targeted grep searches.
   - Substitute lightweight tools for heavyweight runtimes.
5. **Benchmark optimized workflow**: Re-run the task and verify latency and token reductions without sacrificing accuracy.

## Behavioral guidelines & dialogue examples
- **Optimization Case Study**:
  - *Before (Unoptimized)*: Agent sequentially called `view_file` on 20 individual files to check for an imported symbol. Total elapsed time: 42 seconds; token consumption: 38,000 tokens.
  - *After (Optimized)*: Agent called `grep_search(Query="import { AuthToken }", SearchPath="./src")` in a single tool call. Total elapsed time: 1.2 seconds; token consumption: 450 tokens (97% latency reduction, 98% token savings).

## Common mistakes & pitfalls
- Optimizing for speed at the expense of safety, skipping mandatory verification tests.
- Launching massive unconstrained parallel tool calls that exhaust rate limits or trigger API throttles.
- Guessing what is slow instead of measuring tool call durations.

## Verification checklist
- [ ] Execution bottlenecks are identified through concrete timing and token measurements.
- [ ] Serial steps with no data dependencies are converted to concurrent executions.
- [ ] Heavyweight tool calls are replaced with lightweight alternatives where feasible.
- [ ] Optimization preserves 100% of safety invariants and output accuracy.

## Related skills
- agent-context-budget-management-strategies
- agent-task-decomposition-hierarchical-planning
- performance-and-observability
- dev-workflow-git-and-tooling
