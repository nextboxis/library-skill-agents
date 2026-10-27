---
name: system-design-interview-clarifying-requirements
description: Use this skill when scoping ambiguous system design prompts by defining boundaries, features, and operational SLAs in the first 5 minutes.
---
# System Design: Clarifying Functional & Non-Functional Requirements

## When to use
Use this skill at the onset of any system design interview (e.g., 'Design Twitter', 'Design Uber', 'Design URL Shortener') to avoid building the wrong system.

## Core principles
- **Scope Containment**: No distributed system can be built completely in 45 minutes. Ruthlessly scope down to the top 2–3 core user workflows.
- **Functional vs Non-Functional Separation**: Functional defines *what* the system does (post tweet, view timeline); non-functional defines *how well* it performs (latency, availability, consistency, durability).
- **CAP Theorem Constraints**: Identify whether the business model favors high availability (eventual consistency, AP) or strict transactional accuracy (strong consistency, CP).
- **Collaborative Dialogue**: System design is a peer engineering consultation, not a student exam. Drive the conversation with confident proposals rather than waiting for instructions.

## Step-by-step workflow
1. Restate the problem in your own words to align mental models.
2. Propose 3 core functional features and ask: 'Should we prioritize these three for today's discussion?'
3. State what is explicitly out of scope (e.g., analytics dashboards, billing, multi-factor auth).
4. Establish non-functional requirements: read-to-write ratio, latency targets (e.g., P99 < 100ms), uptime SLA (e.g., 99.99%).
5. Determine consistency requirements (AP vs CP) based on data criticality.
6. Document requirements clearly on the shared whiteboard.

## Specifics & examples
- **Dialogue Opening Script**:
  *Candidate*: 'To ensure we focus on the highest-value components for Twitter within our 45 minutes, I'd propose we focus on three core user flows: 1) Posting a tweet, 2) Viewing the home timeline, and 3) Following other users. Search and video streaming can be considered out of scope for now. Does that sound like a solid plan?'
- **Non-Functional SLAs Matrix**:
  - Read vs Write ratio: 100:1 (heavily read-biased).
  - Latency: Timeline render < 200ms; tweet post < 500ms.
  - Availability: 99.99% availability prioritized over immediate timeline consistency.

## Common mistakes & pitfalls
- Jumping straight into database schemas or drawing microservice boxes before agreeing on requirements.
- Accepting vague requirements without defining numeric latency or throughput targets.
- Trying to design every ancillary feature of a billion-dollar platform in 40 minutes.

## Verification checklist
- [ ] Defined exactly 2–3 core functional requirements.
- [ ] Explicitly listed out-of-scope features.
- [ ] Established read-to-write ratio and latency/availability targets.

## Related skills
- system-design-interview-capacity-estimation-qps
- system-design-interview-high-level-architecture
- behavioral-interview-star-method-responses
- coding-interview-communication-thinking-out-loud
