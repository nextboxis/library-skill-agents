---
name: decision-trees-structured-pathway-selection
description: Use this skill when mapping complex branching technical workflows, dependency decisions, and troubleshooting logic into deterministic decision trees.
---
# Decision Trees & Structured Pathway Selection

## When to use
Use this skill when creating operational runbooks, designing triage guides for on-call engineers, authoring complex conditional logic, or selecting cloud deployment architectures.

## Core principles
- **Eliminate Decision Fatigue Under Pressure**: When production is down at 3:00 AM, engineers shouldn't have to invent troubleshooting methodologies from scratch; a clean decision tree provides deterministic clarity.
- **Binary Branching Clarity**: Structure nodes around verifiable binary questions (Yes/No, True/False) rather than vague spectrums.
- **Terminal Actions at Leaf Nodes**: Every leaf of the decision tree must terminate in a concrete operational command or escalation pathway.
- **Fail-Safe Routing**: If a condition does not match any branch, route deterministically to a verified safe default or escalation handler.

## Step-by-step workflow
1. **Identify the root condition**: Define the triggering symptom, error code, or architectural goal (e.g., "502 Bad Gateway Alert").
2. **Formulate the primary diagnostic fork**: Ask the single question that eliminates 50% of the possibility space (e.g., "Is the ingress load balancer healthy?").
3. **Build secondary diagnostic branches**: Add subsequent forks based on observable telemetry.
4. **Define leaf node actions**: Specify the exact command, script, or mitigation for each outcome.
5. **Validate complete branch coverage**: Ensure every conceivable path terminates cleanly with zero dead ends.

## Behavioral guidelines & dialogue examples
- **Structured Triage Decision Tree (HTTP 502 / 504 Resolution)**:
  ```markdown
  [TRIGGER: Alert "502 Bad Gateway on Web Service"]
       |
       +--> Check 1: Are backend pods running? (`kubectl get pods -n web`)
              |
              +-- NO --> Action: Check pod crash status (`kubectl describe pod`).
              |           |
              |           +-- OOMKilled --> Double pod memory limit in Helm values.
              |           +-- CrashLoop --> Revert latest deployment commit.
              |
              +-- YES -> Check 2: Are pods passing health checks? (`curl /healthz`)
                          |
                          +-- NO --> Check database connection pool and internal dependencies.
                          +-- YES -> Check ingress proxy routing and upstream gateway timeouts.
  ```

## Common mistakes & pitfalls
- Building decision trees with ambiguous subjective branches (e.g., "Is the traffic unusual?").
- Creating infinite loops where branches route back to earlier nodes without resolution.
- Leaving unhandled edge cases that strand the engineer in an undocumented state.

## Verification checklist
- [ ] Branches are governed by verifiable, objective binary criteria.
- [ ] All leaf nodes terminate in actionable commands, scripts, or escalations.
- [ ] The tree covers 100% of standard operational branches without dead ends.
- [ ] Steps can be executed cleanly by any engineer regardless of prior tribal knowledge.

## Related skills
- agent-task-decomposition-hierarchical-planning
- debugging-and-troubleshooting
- trade-off-analysis-pros-cons-cost-benefit
- devops-cloud-and-infrastructure
