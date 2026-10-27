---
name: gentle-redirection-unrealistic-expectations
description: Use this skill when tactfully realigning unrealistic timelines, impossible SLAs, or technically infeasible feature requests using objective data.
---
# Gentle Redirection of Unrealistic Expectations

## When to use
Use this skill when executive sponsors, clients, product managers, or founders demand impossible engineering feats: 100% uptime with zero redundancy, building a distributed search engine in 3 days, or adding 10 features without moving a release deadline.

## Core principles
- **The Iron Triangle of Engineering (Scope, Time, Cost/Quality)**: You can pick any two, but you cannot fix all three simultaneously. Physics and math govern software delivery.
- **Replace "No" with "Yes, If..."**: Flatly saying "That's impossible" triggers executive conflict and executive override. Realigning with "We can achieve that outcome if we adjust variable X" invites collaborative problem-solving.
- **De-personalize with Objective Data**: Frame constraints around empirical physics, latency benchmarks, and historical team velocity rather than personal unwillingness.
- **Preserve the Underlying Business Desire**: Address the strategic goal behind the impossible request rather than getting bogged down in the flawed technical mechanism.

## Step-by-step workflow
1. **Validate the strategic ambition**: Acknowledge why the desired outcome is valuable or exciting for the company.
2. **Present the mathematical or physical reality**: Share latency numbers, testing requirements, or historical velocity data objectively.
3. **Offer the Menu of Feasible Options**: Present 2 or 3 viable paths that respect the Iron Triangle:
   - Option A: Full scope delivered on an extended timeline.
   - Option B: Curated MVP delivered on the desired timeline.
   - Option C: Added staffing/resources with an onboarding ramp.
4. **Articulate the risk of forcing the impossible**: Explain the downstream cost (production outages, security vulnerabilities, team attrition).
5. **Guide the sponsor to choose their trade-off**: Allow the stakeholder to select which option aligns with business risk tolerance.

## Behavioral guidelines & dialogue examples
- **Dialogue Example (Realigning an Impossible Deadline)**:
  - *Founder / Executive*: "We just promised the board that our new AI fraud detection system will launch globally in two weeks with zero false positives. Make it happen."
  - *Combative Response (Triggers Conflict)*: "That's completely ridiculous and impossible. We haven't even trained the model. You're setting us up for disaster."
  - *Gentle Redirection Response (Mastery)*: "Launching automated fraud detection to satisfy the board's risk concerns is a critical milestone, and we share that ambition 100%.
  
  To ensure we protect legitimate customer transactions, our benchmarking shows that model tuning and validation against historical fraud data requires a minimum of 10 days of testing, plus 5 days of canary rollout to verify we don't block valid purchases.
  
  Here are two paths we can take:
  1. *Option A (Safe Launch)*: We launch in two weeks in 'Shadow Mode'—the AI scores every transaction in real-time and logs the alerts without blocking users. This gives the board live telemetry immediately with zero customer disruption.
  2. *Option B (Full Enforcement)*: We enforce live transaction blocking starting in four weeks, after the canary validation completes.
  
  Which approach best matches the board's risk tolerance?"

## Common mistakes & pitfalls
- Saying "Yes" to an impossible demand, hoping for a miracle, and then suffering a catastrophic failure on launch day.
- Responding with cynical sarcasm or laughing at the stakeholder's technical ignorance.
- Agreeing to cut testing and security reviews to meet an arbitrary date.

## Verification checklist
- [ ] The underlying business goal is validated and respected.
- [ ] Realistic constraints are demonstrated using objective empirical data.
- [ ] At least two feasible trade-off options are presented.
- [ ] The stakeholder retains agency in selecting the preferred trade-off path.

## Related skills
- establishing-healthy-professional-boundaries
- active-listening-paraphrasing-clarification
- communicating-outages-incident-calmness
- resolving-interpersonal-technical-disagreements
