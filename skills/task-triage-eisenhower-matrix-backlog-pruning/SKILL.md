---
name: task-triage-eisenhower-matrix-backlog-pruning
description: Use this skill when triaging overwhelming engineering backlogs, using the Eisenhower Matrix to distinguish urgent demands from important strategic goals.
---
# Task Triage: The Eisenhower Matrix & Backlog Pruning

## When to use
Use this skill during sprint planning, personal task triage, on-call overload, or when faced with a 200-ticket backlog full of stale issues and competing stakeholder demands.

## Core principles
- **The Urgency-Importance Trap (Dwight D. Eisenhower)**:
  *What is important is seldom urgent, and what is urgent is seldom important.* Most engineers spend their entire careers reacting to loud, urgent emergencies while neglecting the silent, critically important architectural work that would prevent those emergencies.
- **The Four Quadrants**:
  - **Q1: Urgent & Important (Firefighting)**: Live outages, security breaches, broken builds. *Do immediately.*
  - **Q2: Not Urgent, but Important (Strategic Mastery)**: Refactoring technical debt, writing automated tests, building observability, learning, rest. *Schedule protected time.*
  - **Q3: Urgent, but Not Important (Noise & Distraction)**: Demanding Slack pings, status meetings, other people's minor emergencies. *Delegate, automate, or decline.*
  - **Q4: Not Urgent & Not Important (Escape & Waste)**: Mindless Jira scrolling, tweaking themes, endless formatting bikeshedding. *Eliminate ruthlessly.*
- **Backlog Pruning is Kindness**: A 500-ticket backlog is a lie. If a bug hasn't been touched in 6 months, close it with a polite explanation rather than pretending it will ever be built.

## Step-by-step workflow
1. **Audit active task backlog**: List all open tickets, pull requests, and personal engineering commitments.
2. **Classify each task into Q1, Q2, Q3, or Q4**:
   - Ask: "Does this prevent a production fire (Q1) or build strategic capability (Q2)?"
3. **Execute Q1 tasks with focused intensity**: Clear genuine operational blockers.
4. **Schedule non-negotiable blocks for Q2**: Protect dedicated calendar hours for architectural refactorings and proactive tooling.
5. **Prune the backlog aggressively**: Close tickets older than 90 days with a clear message: *"Closing due to inactivity; please reopen if still observed in the current release."*

## Behavioral guidelines & dialogue examples
- **Backlog Pruning Script**:
  - *Stale Ticket (18 months old)*: "Button color in admin settings is 2px off."
  - *Respectful Closure*: "Closing this ticket as part of quarterly backlog pruning. If this visual alignment is still critical for current workflows, please re-open and add updated screenshots. Thank you!"

## Common mistakes & pitfalls
- Living permanently in Q1 (crisis firefighting) without ever investing in the Q2 root-cause fixes that stop the fires.
- Confusing a colleague's frantic urgency (Q3) with true business importance.
- Letting backlogs grow into psychological monsters that create chronic dread and guilt.

## Verification checklist
- [ ] Tasks are categorized into Urgent/Important quadrants objectively.
- [ ] Protected calendar blocks are reserved for Q2 strategic architecture and refactoring.
- [ ] Stale, low-value backlog tickets are closed transparently.
- [ ] High-urgency distractions (Q3) are deflected with polite boundaries.

## Related skills
- time-blocking-focus-state-calendar-defense
- establishing-healthy-professional-boundaries
- developer-burnout-awareness-sustainable-work
- pareto-principle-80-20-effort-optimization
