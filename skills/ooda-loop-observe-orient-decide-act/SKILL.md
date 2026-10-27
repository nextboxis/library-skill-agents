---
name: ooda-loop-observe-orient-decide-act
description: Use this skill when making fast, adaptable technical decisions during dynamic production incidents and rapidly evolving environments using the OODA loop.
---
# The OODA Loop in Dynamic Technical Environments

## When to use
Use this skill during live security incident response (SOC triage), rapid competitive tech pivots, fast-moving system outages, or dynamic negotiation scenarios.

## Core principles
- **The OODA Framework (Col. John Boyd)**:
  - **Observe**: Gather raw, unfiltered telemetry and data from the environment.
  - **Orient**: Filter observations through mental models, prior incident experience, and architectural knowledge. This is the most critical step.
  - **Decide**: Formulate an immediate hypothesis and commit to a specific action.
  - **Act**: Execute the action rapidly and immediately loop back to Observe the new system state.
- **Speed of Iteration Beats Raw Intellect**: The team or agent that cycles through the OODA loop faster and with higher fidelity adapts to reality while competitors are still writing memos.
- **Implicit Guidance and Control**: Build shared team mental models so members can orient and act autonomously without waiting for bureaucratic committee approvals.

## Step-by-step workflow
1. **Observe (Gather Telemetry)**: Check APM traces, server CPU, error codes, and network traffic. Discard assumptions and observe real metrics.
2. **Orient (Synthesize Context)**:
   - What changed recently? (Recent deploys, config changes, cloud provider outages).
   - What architectural component maps to this pattern?
3. **Decide (Select Intervention)**: Pick the fastest, lowest-risk mitigation (e.g., failover, rollback, rate-limit clamp).
4. **Act (Execute & Verify)**: Run the chosen mitigation command via verified CLI tooling.
5. **Loop Immediately**: Observe the system's reaction: Did error rates drop? If yes, reinforce; if no, re-orient immediately.

## Behavioral guidelines & dialogue examples
- **OODA Loop in Active DDoS Defense**:
  - *Observe (Turn 1)*: Ingress traffic spiked 400%; API gateway returning 504 Gateway Timeout.
  - *Orient (Turn 1)*: High volume of requests targeting `/api/search` with randomized query strings. Origin IPs are distributed across consumer ISPs (botnet).
  - *Decide (Turn 1)*: Block endpoint `/api/search` for unauthenticated sessions via Cloudflare WAF rule.
  - *Act (Turn 1)*: Deploy WAF rule via CLI.
  - *Observe (Turn 2)*: Gateway error rate dropped from 45% to 2%; authenticated checkout traffic restored.
  - *Orient (Turn 2)*: Botnet is shifting to `/api/login`. Prepare rate limiting on authentication endpoint.

## Common mistakes & pitfalls
- Skipping the "Orient" phase, reacting blindly to raw data without understanding system architecture.
- Analysis Paralysis: Stalling in the "Decide" phase for hours while the system burns, afraid of making a mistake.
- Treating OODA as a linear one-time checklist instead of a continuous, high-speed feedback loop.

## Verification checklist
- [ ] Decisions are grounded in raw, observable telemetry rather than speculation.
- [ ] Orientation factors in recent deployment changes and architectural dependencies.
- [ ] Actions are small, rapid, and verifiable.
- [ ] Post-action telemetry is immediately observed to drive the next loop cycle.

## Related skills
- stress-response-recognition-patience
- collaborative-problem-solving-under-pressure
- defensive-security-soc-dfir
- debugging-and-troubleshooting
