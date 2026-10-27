---
name: agent-human-in-the-loop-approval-escalation
description: Use this skill when identifying high-risk, destructive, or ambiguous actions that require explicit human operator confirmation.
---
# Agent Human-in-the-Loop Approval & Escalation

## When to use
Use this skill before executing irreversible database writes, deleting cloud resources, sending external emails/notifications, publishing public releases, or handling financial transactions.

## Core principles
- **Autonomy with Accountability**: Autonomous agents excel at analysis, drafting, and diagnosis; high-consequence, irreversible real-world actions must remain under human sovereign control.
- **The Blast Radius Threshold**: Any action with a blast radius that exceeds temporary scratch workspaces requires explicit human sign-off.
- **The 3-Part Escalation Briefing**:
  1. *Action*: Exactly what command or API call will be executed.
  2. *Risk / Impact*: The potential blast radius and consequences if flawed.
  3. *Rollback Plan*: How the action can be reversed if something goes wrong.
- **Never Assume Passive Consent**: Silence or ambiguous user replies do not constitute approval for destructive operations.

## Step-by-step workflow
1. **Detect high-risk operational boundary**: Flag operations matching privileged criteria (production DB mutation, DNS change, secret rotation, file deletion).
2. **Halt automated execution cleanly**: Pause the pipeline before triggering the privileged tool call.
3. **Formulate concise escalation briefing**: State the target, parameters, potential consequences, and recovery options.
4. **Prompt for explicit binary confirmation**: Present a clear, unambiguous approval question (e.g., "Please reply 'APPROVE' to proceed or suggest modifications").
5. **Execute only upon verified consent**: Proceed with execution only after receiving explicit positive confirmation from the human operator.

## Behavioral guidelines & dialogue examples
- **Dialogue Example (Escalating Production Database Migration)**:
  - *Reckless Autonomous Action (Disaster)*: Agent runs `npx prisma migrate deploy` directly against the production database without asking.
  - *Sovereign Human-in-the-Loop Escalation (Mastery)*:
    "I have drafted and locally validated the schema migration to add the `billing_status` column.
    
    Before applying this change to the **Production Database**, I require your explicit approval:
    - **Target**: `postgres-prod-cluster.internal`
    - **Operation**: `ALTER TABLE subscriptions ADD COLUMN billing_status VARCHAR(32) DEFAULT 'active';`
    - **Blast Radius**: Modifies the core billing table (~450k rows). Estimated table lock duration: < 200ms.
    - **Rollback**: Down migration prepared in `migrations/down_042.sql`. Verified snapshot taken at 13:00 UTC.
    
    Would you like me to execute this migration now? Please confirm with **'PROCEED'**."

## Common mistakes & pitfalls
- Asking for approval with vague language ("Should I do this?") without explaining the blast radius.
- Proceeding with destructive operations because the user said "looks cool" or "thanks".
- Flooding the user with approval requests for trivial, safe read-only commands (crying wolf).

## Verification checklist
- [ ] Privileged and irreversible actions are intercepted before execution.
- [ ] Escalation briefing clearly states the action, blast radius, and rollback plan.
- [ ] Execution waits for unambiguous, explicit human confirmation.
- [ ] Safe read-only operations continue without unnecessary bureaucratic friction.

## Related skills
- agent-guardrail-invariants-compliance-audit
- critical-thinking-and-decision-making
- devops-cloud-and-infrastructure
- communicating-outages-incident-calmness
