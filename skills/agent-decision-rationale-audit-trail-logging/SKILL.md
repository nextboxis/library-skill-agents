---
name: agent-decision-rationale-audit-trail-logging
description: Use this skill when recording clear, step-by-step decision rationales and evidence trails for transparency, auditability, and debugging.
---
# Agent Decision Rationale & Audit Trail Logging

## When to use
Use this skill when making high-impact architectural choices, selecting one third-party vendor over another, modifying security permissions, or changing deployment configurations.

## Core principles
- **Explain the "Why", Not Just the "What"**: Code shows *what* changed; the audit trail explains *why* this choice was selected over alternatives and what constraints forced the decision.
- **The Architecture Decision Record (ADR) Standard**:
  - *Title & Context*: The business or technical challenge.
  - *Decision*: The specific pattern, library, or configuration selected.
  - *Status*: Proposed, Accepted, Superceded.
  - *Consequences*: Positive benefits and negative trade-offs/technical debt accepted.
- **Defensibility for Future Engineers**: Write rationales so that an engineer reading the log 2 years from now understands the original context and doesn't reverse the choice prematurely.
- **Structured, Searchable Metadata**: Include dates, author IDs, and relevant issue/PR tickets.

## Step-by-step workflow
1. **Identify decision threshold**: Trigger logging when a technical choice involves competing trade-offs or non-obvious constraints.
2. **Formulate the ADR structure**: Populate Context, Decision, and Consequences sections.
3. **List evaluated alternatives**: Document at least two alternative patterns that were considered and rejected, stating the specific reason for rejection.
4. **Articulate accepted trade-offs**: Be honest about downside risks (e.g., higher memory usage, eventual migration cost).
5. **Persist to repository ADR directory**: Save as `docs/adr/NNNN-decision-title.md` and link in the pull request.

## Behavioral guidelines & dialogue examples
- **ADR Structure Example**:
  ```markdown
  # ADR 004: Adoption of PostgreSQL Row-Level Security (RLS) for Multi-Tenancy
  
  ## Context
  Our B2B platform requires strict tenant data isolation. We evaluated separate database instances per tenant versus shared database with application-level filtering versus database Row-Level Security (RLS).
  
  ## Decision
  We will implement PostgreSQL Row-Level Security (RLS) on all tenant-scoped tables using session variables set upon connection checkout.
  
  ## Alternatives Considered
  - *Separate DB per Tenant*: Rejected due to high infrastructure cost and migration complexity across 500+ small accounts.
  - *Application-level `WHERE tenant_id = ?`*: Rejected due to risk of catastrophic data leakage from a single developer omission in raw SQL queries.
  
  ## Consequences
  - *Positive*: Data isolation is enforced at the database engine layer; zero risk of cross-tenant leakage from buggy ORM queries.
  - *Negative*: Complex connection pooling configuration; slight query latency overhead (~3ms) on multi-table joins.
  ```

## Common mistakes & pitfalls
- Writing circular rationales ("We chose Docker because Docker is better").
- Failing to document the negative consequences and trade-offs of the chosen approach.
- Storing decisions in ephemeral Slack threads instead of version-controlled markdown repositories.

## Verification checklist
- [ ] Context clearly describes the technical problem and business constraints.
- [ ] Rejected alternatives are documented with specific technical rationales.
- [ ] Positive and negative consequences are articulated transparently.
- [ ] The record is committed to version control in a standardized ADR path.

## Related skills
- trade-off-analysis-pros-cons-cost-benefit
- second-order-thinking-unintended-consequences
- software-architecture-and-system-design
- documentation-communication-and-career-basics
