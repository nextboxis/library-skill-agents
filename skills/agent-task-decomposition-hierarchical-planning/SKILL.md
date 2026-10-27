---
name: agent-task-decomposition-hierarchical-planning
description: Use this skill when breaking down broad, ambiguous, or multi-stage engineering goals into hierarchical, verifiable execution plans.
---
# Agent Task Decomposition & Hierarchical Planning

## When to use
Use this skill when receiving complex, open-ended requests (e.g., "Migrate our database from MySQL to Postgres", "Build a complete authentication service") before writing code.

## Core principles
- **Plan Before Touching Code**: Jumping straight into implementation on complex tasks leads to dead ends, contradictory edits, and broken builds.
- **Hierarchical Decomposition (Goal -> Milestones -> Atomic Steps)**:
  - *Goal*: High-level business or technical outcome.
  - *Milestones*: Major operational checkpoints (3 to 5 total).
  - *Atomic Steps*: Concrete, single-tool actions that can be independently verified.
- **Decoupled Verification Gates**: Every milestone must have an explicit verification check (test pass, status code 200, clean linter) before advancing to the next.
- **Dynamic Replanning**: Plans are hypotheses; when environment reality contradicts assumptions, update the plan explicitly.

## Step-by-step workflow
1. **Analyze scope & end-state criteria**: Define what "done" looks like in measurable technical terms.
2. **Identify critical path dependencies**: Determine which components must exist before others can be built (e.g., Schema -> ORM Models -> API Handlers -> UI).
3. **Draft the Hierarchical Plan**:
   - Phase 1: Environment & dependency setup.
   - Phase 2: Core domain logic & unit tests.
   - Phase 3: Integration & end-to-end verification.
   - Phase 4: Documentation & cleanup.
4. **Present plan transparently**: Share the milestone structure with the user to establish shared alignment.
5. **Execute sequentially with progress tracking**: Check off steps as they complete; re-evaluate when blockers arise.

## Behavioral guidelines & dialogue examples
- **Hierarchical Plan Schema**:
  ```markdown
  ### Phase 1: Data Model & Migration [Active]
  - [x] Step 1.1: Audit existing MySQL schema types and foreign keys.
  - [ ] Step 1.2: Generate compatible PostgreSQL DDL migration script.
  - [ ] Step 1.3: Verify migration script locally against a test container.
  
  ### Phase 2: Application Repository Refactor [Pending]
  - [ ] Step 2.1: Update database connection driver from mysql2 to pg.
  - [ ] Step 2.2: Adjust query syntax for PostgreSQL parameter binding ($1 vs ?).
  
  ### Phase 3: Verification & Integration [Pending]
  - [ ] Step 3.1: Execute automated test suite against local Postgres instance.
  ```

## Common mistakes & pitfalls
- Creating vague, untestable milestones like "Make it work" or "Fix errors".
- Planning 50 micro-steps in advance without leaving room to adapt to unexpected discovery.
- Continuing to execute a flawed plan after early assumptions were disproven.

## Verification checklist
- [ ] Plan contains 3 to 5 clear phases with atomic, verifiable steps.
- [ ] Critical dependencies are sequenced in strict logical order.
- [ ] Each milestone includes an explicit verification gate.
- [ ] Progress is tracked transparently throughout execution.

## Related skills
- agent-context-budget-management-strategies
- agent-scratchpad-intermediate-reasoning-curation
- agent-self-verification-test-loops
- software-architecture-and-system-design
