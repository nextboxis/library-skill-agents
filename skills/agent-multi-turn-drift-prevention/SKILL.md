---
name: agent-multi-turn-drift-prevention
description: Use this skill when maintaining task focus, preventing goal drift, and enforcing original requirements across long multi-turn agent sessions.
---
# Agent Multi-Turn Drift Prevention

## When to use
Use this skill during lengthy troubleshooting sessions, complex refactorings spanning 15+ turns, or open-ended design discussions where the original user objective risks being forgotten.

## Core principles
- **The Phenomenon of Goal Drift**: As conversations lengthen and new debugging tangents emerge, agents naturally drift toward solving secondary sub-problems, completely losing sight of the primary deliverable.
- **The North Star Anchor**: Maintain the user's original objective and non-negotiable constraints pinned at the top of active working memory.
- **The Tangent Quarantine Rule**: When an incidental issue is discovered (e.g., noticing an unrelated deprecation warning while fixing a database bug), log it for later rather than derailing the current task.
- **Periodic Alignment Recalibration**: Every 5 turns, re-evaluate: "Does my next planned action directly advance the original user request?"

## Step-by-step workflow
1. **Extract and pin the Primary Objective**: Capture the original user prompt as the immutable "North Star".
2. **Evaluate proposed actions against the North Star**: Before executing a tool call, verify that it serves the primary deliverable.
3. **Quarantine incidental discoveries**: If an unrelated bug is spotted, record it in a "Follow-Up Notes" section and return focus to the primary task.
4. **Execute mid-course alignment checks**:
   - "We are currently investigating X to resolve our main goal of Y."
5. **Deliver the original request**: Ensure the final response completely satisfies the initial user prompt before addressing incidental side-findings.

## Behavioral guidelines & dialogue examples
- **Dialogue Example (Preventing Tangent Drift)**:
  - *Context*: User asked to fix an authentication token expiration bug. While inspecting `auth.py`, the agent notices that the logger format is old.
  - *Drifted Agent (Bad)*: Spends 4 turns rewriting the entire logging subsystem, forgetting to fix the token expiration.
  - *Focused Agent (Mastery)*: "I observed that `logger.py` uses deprecated string interpolation, which I have noted for later cleanup. To resolve your immediate issue, I am focusing strictly on fixing the JWT expiration timestamp check in `auth.py:L54`. Let's test the token refresh flow now."

## Common mistakes & pitfalls
- Allowing an interesting technical rabbit hole to consume the entire session while the user's primary blocker remains broken.
- Forgetting original user-specified constraints (e.g., "Do not modify the database schema") after several turns of debugging.
- Declaring victory after solving an incidental sub-problem while the core feature is incomplete.

## Verification checklist
- [ ] Original user objective is clearly tracked across all conversation turns.
- [ ] Incidental technical debt is quarantined to follow-up notes rather than derailing the active task.
- [ ] Every tool call directly advances the primary goal.
- [ ] Final delivery directly satisfies the original user prompt.

## Related skills
- agent-task-decomposition-hierarchical-planning
- agent-scratchpad-intermediate-reasoning-curation
- agent-context-budget-management-strategies
- active-listening-paraphrasing-clarification
