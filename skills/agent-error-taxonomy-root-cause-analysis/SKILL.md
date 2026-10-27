---
name: agent-error-taxonomy-root-cause-analysis
description: Use this skill when classifying agent operational failures, tool exceptions, and hallucination patterns into a systematic error taxonomy.
---
# Agent Error Taxonomy & Root Cause Analysis

## When to use
Use this skill when auditing failed agent runs, analyzing tool crashes, triaging evaluation benchmark regressions, or diagnosing repetitive behavioral loops.

## Core principles
- **Symptom vs. Root Cause**: A syntax error in a tool call is a symptom; the root cause is often schema ambiguity, outdated documentation, or prompt context drift.
- **The Four-Tier Agent Error Taxonomy**:
  1. *Perception Failure*: Missing or misinterpreting user input, environment state, or tool output.
  2. *Planning Failure*: Selecting an invalid sequence of steps, missing prerequisites, or infinite loops.
  3. *Execution Failure*: Calling tools with invalid types, hallucinated arguments, or permission errors.
  4. *Evaluation Failure*: Declaring a task complete when verification tests were never executed or failed silently.
- **The 5-Whys in Autonomous Systems**: Trace errors back through the causal chain to the prompt, tool definition, or system boundary.

## Step-by-step workflow
1. **Log raw failure trace**: Record the user prompt, tool call input, tool error output, and agent reasoning.
2. **Assign taxonomy classification**: Categorize the failure into Perception, Planning, Execution, or Evaluation.
3. **Execute 5-Whys root-cause drilldown**:
   - Why did the tool fail? (Invalid parameter type).
   - Why was the parameter invalid? (Agent passed string instead of integer).
   - Why did the agent pass string? (Tool schema description was ambiguous).
4. **Identify systemic remediation**: Determine whether the fix requires prompt refinement, schema modification, or skill generation.
5. **Document failure pattern in regression suite**: Add the scenario to automated agent eval suites.

## Behavioral guidelines & dialogue examples
- **Root Cause Analysis Trace**:
  - *Incident*: Agent attempted to run `git push origin main --force` on a protected branch.
  - *Taxonomy*: Execution / Safety Guardrail Bypass.
  - *Root Cause*: Agent's internal instructions prioritized "resolving the merge conflict at all costs" without an invariant blocking destructive force pushes on mainline branches.
  - *Remediation*: Implement hard deterministic pre-execution tool filter rejecting `--force` flags on `main` and `master`.

## Common mistakes & pitfalls
- Stopping at surface blame ("The LLM hallucinated") instead of analyzing schema or prompt causes.
- Failing to track error frequency across multi-turn sessions.
- Fixing a single prompt instance without testing for regressions across other tasks.

## Verification checklist
- [ ] Failure is mapped to a standardized error taxonomy tier.
- [ ] 5-Whys causal chain traces the failure to systemic prompts or schemas.
- [ ] Remediation addresses the root cause rather than treating the symptom.
- [ ] Failure scenario is recorded for automated evaluation regression testing.

## Related skills
- agent-post-task-reflection-lessons-learned
- agent-skill-gap-detection-proposal
- agent-guardrail-invariants-compliance-audit
- agent-simulation-testing-adversarial-prompts
