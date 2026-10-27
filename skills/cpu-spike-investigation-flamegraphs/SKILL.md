---
name: cpu-spike-investigation-flamegraphs
description: Use this skill when diagnose sudden CPU saturation and thread contention using on-CPU/off-CPU flame graphs.
---
# CPU Spike Investigation Flamegraphs

## When to use
Use this skill when diagnose sudden CPU saturation and thread contention using on-CPU/off-CPU flame graphs. This applies across software engineering lifecycles, team code reviews, production debugging, prompt design, and architectural documentation.

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
```bash
# Capture on-CPU profile and generate interactive SVG flame graph
py-spy record -o profile.svg --pid $(pgrep -f 'uvicorn app:main') --duration 30
perf record -F 99 -p <pid> -g -- sleep 30 && perf script | stackcollapse-perf.pl | flamegraph.pl > cpu.svg
```
- **Primary Focus Area**: Debugging & troubleshooting principles designed to elevate engineering precision and team psychological safety.

## Common mistakes & pitfalls
- Jumping directly into speculative fixes or complex rewrites before isolating the root cause.
- Introducing premature abstractions that increase indirection and cognitive complexity.
- Failing to document context and architectural trade-offs for subsequent maintainers.

## Verification checklist
[ ] The technical deliverable or fix is validated with reproducible test assertions.
[ ] Changes preserve backwards compatibility and maintain existing contract invariants.
[ ] Documentation or commit logs clearly explain the rationale and trade-offs.

## Related skills
- git-bisect-automated-bug-hunting
- stack-trace-analysis-symbolication-source-maps
- root-cause-analysis-5-whys-fishbone-diagram
- incident-postmortem-blameless-rca-authoring
