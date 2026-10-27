---
name: first-principles-reasoning-system-breakdown
description: Use this skill when deconstructing complex technical problems to fundamental truths, avoiding cargo-culting and building upward.
---
# First-Principles Reasoning in System Breakdown

## When to use
Use this skill when designing novel system architectures, evaluating expensive cloud infrastructure costs, optimizing critical bottlenecks, or overcoming dogmatic legacy conventions.

## Core principles
- **Reasoning by First Principles vs. Reasoning by Analogy**:
  - *Analogy (Cargo Culting)*: "Everyone uses microservices and Kafka, so we should too."
  - *First Principles (Truth-Driven)*: "What is the physical reality? We have 50 requests per second and 2 engineers. A simple SQLite database on a single VPS satisfies our latency and durability requirements at 1/50th the cost."
- **Deconstruct to Atomic Realities**: Strip away acronyms, marketing hype, and industry fads. What are the underlying physics? Compute cycles, memory bandwidth, network hops, disk I/O, and human cognitive load.
- **Challenge False Axioms**: Question the hidden assumptions everyone takes for granted ("We have to run Kubernetes", "We must use an ORM", "All data must be in the cloud").
- **Synthesize Upward**: Rebuild the solution from foundational physical truths, adding only the minimum necessary complexity.

## Step-by-step workflow
1. **Identify the core objective**: State the fundamental technical requirement without mentioning specific tools or vendors.
2. **List all existing assumptions & constraints**: Write down every assumption currently accepted as "obvious" or "mandatory".
3. **Interrogate each assumption to bedrock truth**: Ask: "Is this a law of physics, or just a convention inherited from another company with different scale?"
4. **Isolate the foundational primitives**: Identify the true required components (e.g., an append-only log, a key-value lookup, a hash table).
5. **Construct the minimal sufficient solution**: Build upward from bedrock primitives, validating each layer of added complexity.

## Behavioral guidelines & dialogue examples
- **First-Principles Breakdown (Cloud Cost Optimization)**:
  - *Conventional Thinking*: "Our AWS bill is $25,000/month for managed Elasticsearch. Let's hire consultants to optimize our shard indexing."
  - *First-Principles Breakdown*: "What is the physical reality? We have 2 million customer records (~4GB of text data). 4GB of text easily fits in 16GB of server RAM. Why are we paying $25,000/month to distribute 4GB across 10 cluster nodes?
  
  A single $80/month dedicated server running PostgreSQL with full-text search and `pg_trgm` can hold the entire dataset in RAM and return searches in < 15ms. We can eliminate $24,900/month of unnecessary distributed overhead by aligning our architecture with physical data scale."

## Common mistakes & pitfalls
- Re-inventing cryptographic primitives or basic data structures that are already solved by battle-tested libraries.
- Confusing "first principles" with cynicism, discarding battle-tested engineering standards without understanding why they exist.
- Over-engineering custom solutions when a commodity managed service is cheaper in human engineering hours.

## Verification checklist
- [ ] Core problem is articulated independently of specific tool or vendor brand names.
- [ ] Fundamental physical constraints (data volume, network latency, RPS) are verified with real numbers.
- [ ] Inherited industry assumptions are actively interrogated and tested.
- [ ] The proposed architecture builds upward strictly from verifiable operational needs.

## Related skills
- occams-razor-simplest-functional-solution
- trade-off-analysis-pros-cons-cost-benefit
- second-order-thinking-unintended-consequences
- software-architecture-and-system-design
