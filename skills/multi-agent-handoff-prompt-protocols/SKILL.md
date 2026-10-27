---
name: multi-agent-handoff-prompt-protocols
description: Use this skill when design explicit context handoff and task completion contracts between specialized AI agents.
---
# Multi Agent Handoff Prompt Protocols

## When to use
Use this skill when design explicit context handoff and task completion contracts between specialized AI agents. This applies across software engineering lifecycles, team code reviews, production debugging, prompt design, and architectural documentation.

## Core principles
- **Clarity Over Cleverness**: Code, prompts, and technical documentation must prioritize clarity, predictability, and long-term maintainability over obscure shortcuts.
- **Evidence-Based Engineering**: Every decision, bug resolution, and architectural choice must be supported by empirical data, minimal reproductions, or benchmark traces.
- **Cognitive Load Minimization**: Design interfaces, APIs, and documents to minimize mental parsing overhead for future engineers and autonomous agents.
- **Continuous Feedback Loops**: Incorporate automated verification, peer reviews, and post-task retrospectives to drive iterative improvement.

## Step-by-step workflow
1. **Define the objective and constraints**: State the exact technical outcome, acceptance criteria, and operational boundaries.
2. **Gather baseline telemetry and context**: Inspect relevant codebases, stack traces, system architecture diagrams, or log files.
3. **Execute structured analysis or implementation**: Apply domain-specific techniques (e.g., minimal reproduction, refactoring transforms, prompt templates).
4. **Validate against automated test assertions**: Run unit tests, linters, or schema validation parsers to verify behavioral correctness.
5. **Document rationale and trade-offs**: Record the 'why' behind choices, documenting rejected alternatives and operational considerations.
6. **Conduct retrospective review**: Share findings with stakeholders or record lessons learned in the team knowledge base.

## Specifics & examples
```markdown
### System Prompt Template
Role: Senior Systems Architect evaluating microservice resilience.
Instructions:
1. Analyze the proposed architecture for Single Points of Failure (SPOF).
2. Think step-by-step: evaluate client failover, database replication lag, and cache stampedes.
3. Format response strictly as JSON conforming to the provided schema.
```
- **Primary Focus Area**: Prompt & context engineering principles designed to elevate engineering precision and team psychological safety.

## Common mistakes & pitfalls
- Jumping directly into speculative fixes or complex rewrites before isolating the root cause.
- Introducing premature abstractions that increase indirection and cognitive complexity.
- Failing to document context and architectural trade-offs for subsequent maintainers.

## Verification checklist
[ ] The technical deliverable or fix is validated with reproducible test assertions.
[ ] Changes preserve backwards compatibility and maintain existing contract invariants.
[ ] Documentation or commit logs clearly explain the rationale and trade-offs.

## Related skills
- system-prompt-architecture-persona-constraints
- few-shot-prompting-exemplar-selection-formatting
- chain-of-thought-reasoning-step-by-step-prompts
- structured-output-prompting-json-yaml-parsers
