---
name: communicating-outages-incident-calmness
description: Use this skill when drafting public status page updates, executive incident briefs, and customer notifications during major production outages.
---
# Communicating Production Outages with Incident Calmness

## When to use
Use this skill when drafting public Statuspage updates, customer email notifications, executive incident briefings, or Slack incident announcements during live outages.

## Core principles
- **Transparency Builds Trust; Secrecy Breeds Speculation**: Silence or vague "investigating issues" updates make customers fear data loss or security breaches. Clear, factual transparency builds enduring brand loyalty.
- **The Anatomy of an Incident Update**:
  1. *What is happening*: The observable user impact in plain terms.
  2. *Who is affected*: The specific region, tier, or API endpoints impacted.
  3. *What we are doing*: The active technical mitigation underway.
  4. *When to expect more*: The exact timestamp of the next update.
- **Never Speculate or Understate**: Don't say "A few users might experience slight slowdowns" when the entire US-East region is returning 503s.
- **Calm, Steady Professionalism**: Avoid emotional apologies, exclamation marks, or defensive technical excuses.

## Step-by-step workflow
1. **Identify the user-facing blast radius**: Define exactly what customers cannot do right now (e.g., "Users cannot log into the web dashboard").
2. **Draft initial public notification (within 10 minutes)**: Publish an immediate acknowledgment of the issue.
3. **Maintain a strict update cadence**: Post updates every 15–30 minutes, even if the status is "Engineering continues to roll back release v2.4".
4. **Draft the resolution notification**: Announce restoration only after telemetry confirms error rates have returned to baseline for at least 15 minutes.
5. **Publish post-incident timeline**: Provide a transparent, blameless summary and remediation commitments within 48 hours.

## Behavioral guidelines & dialogue examples
- **Status Page Evolution Throughout an Incident**:
  - *Initial Acknowledgment (10:14 AM)*:
    "Investigating: We are investigating reports of elevated error rates and timeouts when accessing the Payment API. Impact is currently isolated to the EU-West region. Our infrastructure team is actively triaging. Next update at 10:35 AM UTC."
  - *In-Progress Update (10:35 AM)*:
    "Identified: We have traced the payment timeouts to an unresponsive database replica following an automated network reconfiguration. We are failing over traffic to the primary standby instance. Next update at 10:55 AM UTC."
  - *Resolved (11:10 AM)*:
    "Resolved: The failover to the primary standby database completed successfully at 10:52 AM UTC. Payment API latency and error rates have returned to normal baseline levels (99.98% success rate). We are monitoring closely and will publish a full incident review within 48 hours."

## Common mistakes & pitfalls
- Marking an incident "Resolved" prematurely while error rates are still fluctuating, infuriating customers when it breaks again.
- Explaining internal architecture jargon instead of explaining customer impact.
- Disappearing for 2 hours during an outage because "there was nothing new to report".

## Verification checklist
- [ ] Public message clearly defines observable customer impact and geographic scope.
- [ ] Internal technical jargon is translated into transparent, accessible language.
- [ ] Update cadence is consistent and reliable (every 15–30 minutes).
- [ ] Incident is only declared resolved after verified telemetry stability.

## Related skills
- handling-angry-or-urgent-customer-tickets
- stress-response-recognition-patience
- de-escalation-of-frustrated-users-techniques
- psychological-safety-in-technical-dialogue
