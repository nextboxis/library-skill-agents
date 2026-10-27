---
name: technical-project-case-study-showcase
description: Use this skill when authoring in-depth technical case studies detailing architecture trade-offs, bottlenecks, and measurable impact.
---
# Technical Project Case Study Showcase

## When to use
Use this skill when presenting flagship projects on your portfolio, technical blog, or resume to prove senior-level engineering decision-making.

## Core principles
- **Context, Constraint, Choice, Consequence**: Structure case studies around real engineering constraints (e.g., budget, latency, hardware limits) and the deliberate choices made.
- **Architectural Honest Failure**: Mentioning a technology that was evaluated and discarded (e.g., 'We initially benchmarked MongoDB but switched to Postgres due to foreign key integrity') proves real experience.
- **Visual Architecture Diagrams**: A clear flowchart showing data flow between client, API gateway, cache, worker, and database makes complex projects instantly understandable.
- **Quantified Performance Metrics**: Back claims with concrete benchmarks: 'Reduced P99 latency by 64% from 480ms to 170ms under 10k req/sec load'.

## Step-by-step workflow
1. Title case study around the core engineering achievement (not just product name).
2. State project objective, scale, and constraints (timeline, compute budget, SLAs).
3. Embed a clean system architecture diagram illustrating data flow.
4. Detail the #1 hardest technical challenge encountered (e.g., race conditions, memory leaks, cache stampede).
5. Explain the technical trade-offs evaluated and the rationale for the final solution.
6. Conclude with verifiable metrics, production deployment notes, and code repository links.

## Specifics & examples
- **Case Study Outline Template**:
  ```markdown
  ## Real-Time Collaborative Canvas: Scaling WebSocket Sync to 5,000 Concurrent Editors
  - **Role**: Sole Backend Architect
  - **Tech Stack**: Rust, Tokio, WebSockets, Redis Pub/Sub, CRDTs (Yrs)
  - **The Constraint**: Operational Transformation (OT) required centralized locking that choked past 200 users.
  - **The Solution**: Migrated to state-based Conflict-Free Replicated Data Types (CRDTs), enabling peer-to-peer optimistic updates with asynchronous convergence.
  - **The Impact**: P99 sync latency decreased from 340ms to 28ms; server memory usage dropped 4x.
  ```

## Common mistakes & pitfalls
- Writing a product user guide instead of an engineering architecture case study.
- Failing to explain *why* specific technologies were chosen over alternatives.
- Making unsubstantiated claims ('extremely fast', 'highly scalable') without benchmark numbers.

## Verification checklist
- [ ] Explains the specific architectural constraint and trade-off evaluated.
- [ ] Includes an architecture diagram illustrating system component interaction.
- [ ] Quantifies engineering results with before-and-after metrics.

## Related skills
- personal-developer-portfolio-website-design
- live-demo-deployment-hosting-portfolio
- quantifying-engineering-impact-action-metrics
- talks-meetups-technical-speaking-slides
