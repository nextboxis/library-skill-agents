---
name: agent-tool-failure-recovery-fallback-loops
description: Use this skill when recovering from tool timeouts, API rate limits, schema rejections, and command failures using structured fallback paths.
---
# Agent Tool Failure Recovery & Fallback Loops

## When to use
Use this skill whenever a tool call fails, times out, returns an unexpected schema, runs out of memory, or encounters system permission errors.

## Core principles
- **Failure is Normal; Crashing is Optional**: Distributed tools and external APIs fail constantly. A resilient agent treats tool errors as informative state transitions, not terminal dead ends.
- **The Rule of Diverse Fallbacks**: Never retry the identical failing tool call with identical parameters without modification. If Approach A fails, adjust parameters or pivot to Approach B.
- **Exponential Backoff on Transient Errors**: For network timeouts and 429 rate limits, introduce exponential backoff pauses before retrying.
- **Preserve Partial Progress**: If 4 out of 5 files were processed successfully before a tool crashed, checkpoint the 4 completed files before recovering the 5th.

## Step-by-step workflow
1. **Capture and classify tool error**: Identify whether the error is Transient (network/rate-limit), Parameter-based (syntax/type mismatch), or Capability-based (missing binary/permission).
2. **Determine fallback strategy**:
   - For Rate Limits: Wait with exponential backoff and reduce batch size.
   - For Missing CLI Tools: Pivot to native Python scripts or alternative utilities.
   - For Timeout: Narrow search scope or add timeout flags.
3. **Execute alternative pathway**: Dispatch the fallback tool with adjusted arguments.
4. **Log failure and workaround**: Note the tool instability in session context to avoid re-triggering it.
5. **Escalate gracefully**: If all 3 fallback pathways fail, provide a clear diagnostic report with recommended human intervention.

## Behavioral guidelines & dialogue examples
- **Fallback Execution Trace**:
  - *Initial Attempt*: Runs `ripgrep` via shell command to search large codebase.
  - *Tool Error*: `FileNotFoundError: rg is not installed on this system`.
  - *Agent Fallback Reasoning*: "Ripgrep is not available in PATH. Pivoting to built-in Python `grep_search` tool to perform exact regex matching."
  - *Fallback Action*: Dispatches `grep_search(Query="handlePayment", SearchPath="./src")` -> Returns 3 matching files successfully.

## Common mistakes & pitfalls
- Repeating the exact same failing command 5 times in an infinite loop, wasting user time and API tokens.
- Halting execution entirely on a minor tool failure when simple alternative commands exist.
- Concealing tool failures from the user when critical data could not be retrieved.

## Verification checklist
- [ ] Tool failure is classified into transient, parameter, or capability category.
- [ ] Retries incorporate altered parameters, backoff pauses, or alternative tools.
- [ ] Infinite retry loops are bounded to at most 3 distinct attempts.
- [ ] Workarounds are documented in session context to prevent repeated failures.

## Related skills
- agent-error-taxonomy-root-cause-analysis
- agent-self-verification-test-loops
- debugging-and-troubleshooting
- agent-guardrail-invariants-compliance-audit
