---
name: collaborative-problem-solving-under-pressure
description: Use this skill when coordinating multi-disciplinary technical teams during high-stakes outages, security breaches, and rapid production cutovers.
---
# Collaborative Problem Solving Under Pressure

## When to use
Use this skill during critical incident war rooms, zero-day security remediation sprints, high-stakes infrastructure migrations, or unexpected production failures.

## Core principles
- **Shared Mental Models**: In a crisis, disaster occurs when five engineers hold five contradictory assumptions about what is broken. Alignment beats individual speed.
- **Cognitive Divestment**: Under pressure, engineers cling stubbornly to their initial pet theory. Forcing hypothesis rotation prevents the team from digging deeper into dead ends.
- **Clear Incident Command Roles**:
  - *Incident Commander (IC)*: Keeps time, coordinates roles, makes final calls, never touches code.
  - *Tech Lead / Scribe*: Documents the timeline, tests hypotheses, and records actions.
  - *Comms Lead*: Shields the war room from executive and client interruptions.
- **Short Timeboxes**: Assign investigation tasks in 10-to-15-minute timeboxes with mandatory sync-backs.

## Step-by-step workflow
1. **Establish the war room protocol**: Open a single dedicated channel/room and designate the Incident Commander.
2. **Synthesize the current blast radius**: State clearly what is broken, what is working, and the customer impact.
3. **Formulate competitive hypotheses**: Brainstorm 2–3 plausible causes without premature dismissal.
4. **Assign parallel, time-boxed investigation tasks**:
   - "Engineer A: Spend 10 minutes checking network egress drops."
   - "Engineer B: Spend 10 minutes diffing commits between releases v2.3 and v2.4."
5. **Reconvene and pivot**: Evaluate findings at the 10-minute mark; discard disproven theories and converge on verified root causes.

## Behavioral guidelines & dialogue examples
- **Dialogue Example (Running an Effective Crisis War Room)**:
  - *Incident Commander*: "Alright team, welcome to the Sev-1 response channel. I am acting as Incident Commander; Maya is Scribe; David is handling stakeholder comms. Please keep this voice channel strictly operational.
  
  Current state: 40% of payment webhooks are timing out since 11:30 AM.
  Hypothesis 1: Redis connection pool exhaustion.
  Hypothesis 2: Upstream gateway certificate expiry.
  
  Carlos, please inspect Redis connection pool metrics. Priya, please verify the gateway certificate expiration timestamp. We will regroup in this channel in exactly 8 minutes at 11:45 AM. Go."

## Common mistakes & pitfalls
- Having 10 engineers all typing commands into production simultaneously with zero coordination.
- Letting executives join the war room and derail troubleshooting with panic-driven questions.
- Forgetting to log commands and actions taken, making post-incident analysis impossible.

## Verification checklist
- [ ] Incident Commander is clearly established and coordinating roles.
- [ ] Responding engineers have focused, non-overlapping investigation tasks.
- [ ] Investigation tasks are strictly time-boxed with synchronized check-ins.
- [ ] Every operational action and configuration change is logged in real time.

## Related skills
- stress-response-recognition-patience
- communicating-outages-incident-calmness
- de-escalation-of-frustrated-users-techniques
- resolving-interpersonal-technical-disagreements
