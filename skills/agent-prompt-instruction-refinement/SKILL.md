---
name: agent-prompt-instruction-refinement
description: Use this skill when tuning, updating, and optimizing agent system prompts, persona instructions, and tool descriptions based on execution friction.
---
# Agent Prompt & Instruction Refinement

## When to use
Use this skill when editing system prompts, updating tool docstrings, tuning subagent persona instructions, or improving few-shot examples to eliminate recurring agent misbehavior.

## Core principles
- **Instructions are Source Code for LLMs**: Treat system prompts with the same architectural rigor as production code: version control, regression testing, and modularity.
- **Negative Constraints are Weaker than Positive Invariants**: Telling an agent "Don't use sed" is less effective than "Use Python's `re.sub` for multiline file replacement".
- **Tool Docstrings Drive 80% of Autonomous Quality**: Ambiguous parameter descriptions in tool schemas cause more agent failures than LLM reasoning deficits.
- **The Brevity-Precision Trade-off**: Excessively verbose prompts cause context saturation and instruction drift; crisp, unambiguous directives prevail.

## Step-by-step workflow
1. **Analyze instruction failure logs**: Pinpoint the exact prompt line or tool schema docstring that permitted the undesirable behavior.
2. **Isolate ambiguity**: Identify words with multiple interpretations (e.g., "safe", "fast", "properly").
3. **Rewrite with positive behavioral contracts**: State the exact format, preconditions, and required verification step.
4. **Tune tool schemas**: Ensure parameter types, enums, defaults, and boundary conditions are explicitly defined in JSON schema.
5. **Run A/B regression evals**: Test the refined prompt against a benchmark of baseline and adversarial scenarios.

## Behavioral guidelines & dialogue examples
- **Refining a Vague Instruction into a Concrete Contract**:
  - *Before (Ambiguous)*: "Always write clean code and test your changes before finishing."
  - *After (Deterministic Contract)*: "After writing or editing code, execute the project test runner (`pytest` or `npm test`) via `run_command`. Never declare a task complete if test commands exit non-zero or are omitted."
- **Refining a Tool Description**:
  - *Before*: `target: "Path to file"`
  - *After*: `target: "Absolute filesystem path to the file to modify. Must begin with a drive letter on Windows (e.g. C:/) or forward slash on Unix. Relative paths are rejected."`

## Common mistakes & pitfalls
- Adding endless ad-hoc patch sentences to a prompt until it becomes an incoherent 4,000-word monolith.
- Using emotive language ("You must remember!", "This is critical!") instead of structured logical constraints.
- Changing system prompts without running automated regression tests to verify that other capabilities weren't broken.

## Verification checklist
- [ ] Ambiguous adjectives and vague instructions are replaced with verifiable criteria.
- [ ] Tool docstrings include explicit types, path requirements, and error conditions.
- [ ] Negative constraints are paired with clear positive alternative pathways.
- [ ] Prompt refinements pass automated regression evaluation benchmarks.

## Related skills
- agent-skill-gap-detection-proposal
- agent-error-taxonomy-root-cause-analysis
- agent-self-verification-test-loops
- prompt-and-context-engineering
