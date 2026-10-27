---
name: occams-razor-simplest-functional-solution
description: Use this skill when rejecting unnecessary complexity, cutting architectural bloat, and selecting the simplest sufficient design via Occam's Razor.
---
# Occam's Razor: Selecting the Simplest Functional Solution

## When to use
Use this skill when reviewing over-engineered pull requests, pushing back on unnecessary microservice proliferation, cutting resume-driven development, and simplifying bloated systems.

## Core principles
- **Occam's Razor (Lex Parcimoniae)**:
  *Entities should not be multiplied beyond necessity.* When evaluating competing technical designs that solve the problem equally well, choose the one with the fewest moving parts.
- **Complexity is Technical Debt at Inception**: Every added microservice, message broker, cache layer, or build plugin introduces network failure modes, serialization overhead, monitoring requirements, and on-call cognitive load.
- **YAGNI (You Aren't Gonna Need It)**: Designing for hypothetical 100x scale that you may never reach forces you to pay the operational tax of that complexity today.
- **The Ultimate Sophistication is Simplicity (Leonardo da Vinci)**: Making something complex is easy; distilling a system down to its simplest, most elegant, and robust core requires true engineering mastery.

## Step-by-step workflow
1. **Audit candidate architectural proposals**: Count the number of independent moving parts (servers, databases, network hops, external libraries).
2. **Identify the "Incidental Complexity"**: Distinguish between essential domain complexity and self-inflicted architectural bloat.
3. **Execute the Simplification Subtraction Test**: For each component, ask: *"If we remove this, what actually breaks for real users?"*
4. **Choose the minimal sufficient architecture**: Select the pattern with the lowest operational overhead that completely satisfies today's validated SLA.
5. **Document expansion triggers**: Define the concrete metric threshold (e.g., "When writes exceed 5,000/sec") that will justify adding future complexity.

## Behavioral guidelines & dialogue examples
- **Applying Occam's Razor to Background Jobs**:
  - *Over-Engineered Proposal*: "We need to run a task once an hour to email daily summaries. Let's deploy an Apache Kafka cluster, a distributed Celery worker pool on Kubernetes, and an AWS SQS dead-letter queue."
  - *Occam's Razor Solution (Mastery)*: "What is the actual requirement? Running one Python function once every 60 minutes.
  
  Deploying Kafka and Kubernetes creates 5 new failure modes and requires ongoing infrastructure maintenance. A simple Linux `systemd` timer or cron job calling our script on our existing application server solves the problem completely in 5 lines of configuration, has zero moving parts, and costs $0. Let's ship the cron job today."

## Common mistakes & pitfalls
- Confusing "simple" with "easy" (simple architectures require discipline and clean boundaries).
- Building massive distributed infrastructure for a startup with 50 active users to practice resume-driven development.
- Rejecting necessary complexity when real physical constraints (e.g., massive scale, legal compliance) genuinely demand it.

## Verification checklist
- [ ] Candidate designs are compared by the number of independent moving parts and failure modes.
- [ ] YAGNI principles are strictly enforced against speculative future scale.
- [ ] The simplest design that reliably satisfies validated SLA requirements is chosen.
- [ ] Future complexity additions are tied to explicit, empirical metric thresholds.

## Related skills
- first-principles-reasoning-system-breakdown
- trade-off-analysis-pros-cons-cost-benefit
- second-order-thinking-unintended-consequences
- software-architecture-and-system-design
