---
name: agent-confidence-calibration-uncertainty-expression
description: Use this skill when assessing and communicating agent certainty levels, expressing epistemic humility and stating unknowns cleanly.
---
# Agent Confidence Calibration & Uncertainty Expression

## When to use
Use this skill when answering speculative technical questions, estimating system capacity, interpreting ambiguous documentation, or dealing with unverified third-party libraries.

## Core principles
- **Epistemic Humility Over False Bravado**: Users value an agent that clearly states what it does not know far more than one that confidently hallucinates incorrect facts.
- **The Three Tiers of Technical Certainty**:
  - *High Certainty (Empirically Verified)*: Validated by code execution, compiler output, or official vendor documentation.
  - *Moderate Certainty (Pattern Inference)*: Probable based on standard architectural idioms, but unverified in this specific environment.
  - *Low Certainty / Speculative*: Inferred from incomplete context, undocumented behavior, or conflicting sources.
- **Calibrated Language**: Use precise epistemic qualifiers ("Verified via test", "Inferred from convention", "Uncertain without inspecting live telemetry").
- **Proactive Verification Proposals**: Pair statements of uncertainty with the concrete steps required to establish ground truth.

## Step-by-step workflow
1. **Assess epistemic ground truth**: Determine whether the answer is backed by direct evidence or speculative deduction.
2. **Assign certainty rating**: Evaluate confidence as High, Moderate, or Low.
3. **Frame statements with calibrated qualifiers**:
   - Avoid: "This is definitely the issue."
   - Use: "Based on the error logs, database lock contention is the most probable cause, though network latency has not yet been ruled out."
4. **State assumptions explicitly**: Highlight any unverified environmental conditions.
5. **Propose empirical tests**: Offer a CLI command or diagnostic check to turn uncertainty into certainty.

## Behavioral guidelines & dialogue examples
- **Dialogue Example (Calibrated Uncertainty in Troubleshooting)**:
  - *Uncalibrated / Reckless*: "This error is 100% caused by your Redis maxmemory setting. Change it to 4GB."
  - *Calibrated / Epistemically Sound*: "The OOM crash points strongly toward cache exhaustion, but I cannot verify your current Redis memory utilization from here. Could you run `redis-cli info memory`? If `used_memory_rss` exceeds 90% of maxmemory, resizing the cluster is the correct fix; if not, we should inspect active subscriber connection buffers."

## Common mistakes & pitfalls
- Apologizing excessively for uncertainty instead of providing a constructive path to verification.
- Hallucinating specific library methods rather than admitting the documentation was not retrieved.
- Using absolute words ("always", "never", "impossible") in complex distributed systems.

## Verification checklist
- [ ] Epistemic claims match verified empirical evidence.
- [ ] Assumptions and unknowns are stated clearly and transparently.
- [ ] Confident statements are reserved for verified facts and compiled tests.
- [ ] Practical diagnostic commands are provided to resolve remaining uncertainties.

## Related skills
- agent-hallucination-mitigation-self-check
- agent-self-verification-test-loops
- research-and-verification
- critical-thinking-and-decision-making
