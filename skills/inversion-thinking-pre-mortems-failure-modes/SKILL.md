---
name: inversion-thinking-pre-mortems-failure-modes
description: Use this skill when conducting project pre-mortems, inverting technical plans, and identifying catastrophic failure modes in advance.
---
# Inversion Thinking & Structured Pre-Mortems

## When to use
Use this skill before launching major architectural migrations, cutting over to new cloud infrastructure, releasing public security tools, or executing database shard rebalances.

## Core principles
- **"Invert, Always Invert" (Carl Jacobi / Charlie Munger)**: Instead of asking *"How do we make this launch successful?"*, ask: *"It is 6 months from now and this project has failed catastrophically. The CEO is furious and our data is lost. What caused this disaster?"*
- **The Psychology of the Pre-Mortem (Gary Klein)**: In traditional planning, engineers feel social pressure to be "team players" and suppress their fears; a pre-mortem legitimizes and rewards voicing worst-case scenarios.
- **Vulnerability Identification Without Cynicism**: Inversion is not doom-mongering; it is proactive resilience engineering. Imagining failure allows you to build defenses before writing code.
- **Failures Often Hide in Seams**: Systemic disasters rarely occur in the core logic; they occur in the handoffs (network partitions, timeouts, permission boundaries, human on-call fatigue).

## Step-by-step workflow
1. **Frame the Premise of Catastrophic Failure**: Gather the engineering team and announce: *"Imagine it is next Friday, our release caused an unrecoverable 8-hour outage, and customers are leaving. Write down exactly what went wrong."*
2. **Brainstorm independent failure modes**: Give everyone 5 minutes of silent writing to surface unvoiced fears.
3. **Consolidate and rank by risk severity**: Group failure modes into Probability and Impact tiers.
4. **Design preventive countermeasures**: For the top 3 highest-risk failure vectors, engineer specific mitigations (canary deployments, automated rollback scripts, feature flags).
5. **Establish abort triggers**: Agree in advance on the exact metrics (e.g., error rate > 0.5% for 3 minutes) that will trigger an immediate automated rollback.

## Behavioral guidelines & dialogue examples
- **Pre-Mortem Failure Discovery Trace**:
  - *Migration Plan*: Migrating 10 million user records to a new authentication provider on Saturday midnight.
  - *Standard Optimism*: "The migration script ran fine on 1,000 staging accounts. We are good to go."
  - *Pre-Mortem Inversion Question*: "Imagine the migration failed catastrophically. What happened?"
  - *Failure Mode Surfaced*: "Staging only has 1,000 accounts with single-byte characters. Production has 500,000 accounts with 4-byte UTF-8 emojis and accented characters in names. The migration script will crash on byte encoding halfway through, leaving 5 million users migrated and 5 million orphaned with broken passwords."
  - *Preventive Countermeasure*: Test the script against a sanitized 100k-record production snapshot with diverse character encodings; add dry-run validation with zero database writes.

## Common mistakes & pitfalls
- Allowing pre-mortems to devolve into toxic complaints without designing actionable engineering defenses.
- Ignoring surfaced failure modes because addressing them would delay an arbitrary marketing launch date.
- Failing to define concrete, automated rollback thresholds before launching.

## Verification checklist
- [ ] Pre-mortem session explicitly assumes project failure to uncover unvoiced risks.
- [ ] Surfaced failure modes are evaluated across high-impact and subtle edge-case scenarios.
- [ ] Concrete architectural mitigations (canaries, rate limits, feature flags) are added to the launch plan.
- [ ] Objective, unambiguous criteria for triggering rollbacks are established in writing.

## Related skills
- second-order-thinking-unintended-consequences
- trade-off-analysis-pros-cons-cost-benefit
- communicating-outages-incident-calmness
- software-architecture-and-system-design
