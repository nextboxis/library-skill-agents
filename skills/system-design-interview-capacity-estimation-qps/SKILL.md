---
name: system-design-interview-capacity-estimation-qps
description: Use this skill when conducting back-of-the-envelope calculations for queries per second, network bandwidth, and multi-year storage sizing.
---
# System Design: Capacity Estimation, QPS & Storage Sizing

## When to use
Use this skill during system design interviews to justify architecture choices, such as whether a single database suffices, how much Redis cache is needed, and network egress bandwidth.

## Core principles
- **Powers of Ten & Estimation Constants**: Rounding numbers (e.g., 86,400 seconds in a day ≈ 100,000 or 10^5) keeps math mental and avoids interview stalling.
- **Architecture-Driving Numbers**: Never calculate numbers for show; use results to justify architectural decisions (e.g., 10,000 QPS requires a distributed cache layer).
- **The 80/20 Caching Rule (Pareto Principle)**: 20% of content generates 80% of read traffic. Size Redis caches to hold 20% of daily active reads.
- **Multi-Year Storage Sizing**: Always project storage requirements across 3 to 5 years, accounting for replication factors (typically 3x).

## Step-by-step workflow
1. Clarify Daily Active Users (DAU) (e.g., 100 million DAU).
2. Estimate write QPS: `(DAU * writes_per_user) / 100,000 seconds`.
3. Calculate peak QPS: `Average QPS * 2` or `* 3`.
4. Estimate read QPS based on the read-to-write ratio (e.g., 100:1).
5. Calculate daily storage: `Daily writes * payload size in bytes`.
6. Multiply daily storage by 365 * years (and replication factor) to determine disk footprint.
7. Calculate cache RAM sizing using the 80/20 rule.

## Specifics & examples
- **Back-of-the-Envelope Reference Constants**:
  - 1 day = 86,400 seconds ≈ 10^5 seconds.
  - 1 million requests/day ≈ 12 QPS.
  - 100 million requests/day ≈ 1,200 QPS (Peak ≈ 2,500–3,500 QPS).
  - 1 KB * 1 million = 1 GB; 1 KB * 1 billion = 1 TB.
- **Example Sizing (Twitter Feed)**:
  - 100M DAU, 2 tweets/user/day = 200M tweets/day.
  - Write QPS = 200M / 100,000 = 2,000 QPS (Peak 4,000 QPS).
  - Read QPS (100:1 ratio) = 200,000 QPS.
  - Storage/tweet = 500 bytes metadata -> 200M * 500B = 100 GB/day.
  - 5-Year Storage = 100 GB * 365 * 5 ≈ 182.5 TB (x3 replication ≈ 550 TB).

## Common mistakes & pitfalls
- Getting bogged down in long division instead of using powers of 10 and round numbers.
- Calculating QPS and storage without connecting the result to any architectural decision.
- Forgetting to multiply storage by replication factor or media metadata overhead.

## Verification checklist
- [ ] Write and read QPS computed clearly using 10^5 seconds/day approximation.
- [ ] Storage calculated for 3 to 5 years with replication accounted for.
- [ ] Redis cache sized using the 20% daily read volume guideline.

## Related skills
- system-design-interview-clarifying-requirements
- system-design-interview-high-level-architecture
- dsa-time-space-complexity-big-o-analysis
- coding-interview-communication-thinking-out-loud
