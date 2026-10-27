---
name: system-design-interview-high-level-architecture
description: Use this skill when architecting scalable distributed systems with load balancers, microservices, caches, and database partitions.
---
# System Design: High-Level Architecture & Component Design

## When to use
Use this skill in the core 20 minutes of a system design interview to map client requests through load balancers, application servers, caches, message queues, and databases.

## Core principles
- **End-to-End Request Flow**: Draw connections tracing a single read and write request from DNS/CDN to reverse proxy, application service, and persistent storage.
- **Separation of Concerns**: Decouple high-throughput write paths from heavy read paths (CQRS / Fan-out services).
- **Eliminating Single Points of Failure (SPOF)**: Every critical component (load balancer, database, message queue) must have multi-AZ redundancy and automatic failover.
- **Data Store Specialization**: Use relational databases (Postgres) for ACID consistency, NoSQL (Cassandra/DynamoDB) for horizontal key-value write scaling, and Redis for volatile high-speed caching.

## Step-by-step workflow
1. Draw Clients (Web/Mobile) reaching CDN (static assets) and DNS / Anycast IP.
2. Place redundant Load Balancers (HAProxy / ALB) terminating SSL.
3. Add stateless API Application Gateway routing traffic to microservices.
4. Introduce distributed Cache (Redis cluster) in front of read-heavy databases.
5. Design database tier: select SQL vs NoSQL, master-replica replication, and sharding keys.
6. Add asynchronous Message Queues (Kafka / RabbitMQ) for background write processing.
7. Deep dive into 1–2 bottleneck components (e.g., timeline fan-out on write vs fan-out on read).

## Specifics & examples
- **Fan-Out Architecture Decision Trade-off**:
  - *Fan-out on write (Push)*: When user posts, push tweet ID to all follower Redis timelines immediately. Fast reads (O(1)), but costly for celebrities with 50M followers.
  - *Fan-out on read (Pull)*: Generate timeline dynamically when user requests it. Low write latency, but slow and expensive reads.
  - *Hybrid Approach*: Use push model for normal users (<10k followers); dynamically merge celebrity posts on read.

## Common mistakes & pitfalls
- Creating stateful application servers that prevent horizontal auto-scaling.
- Failing to explain how cache invalidation works (Cache-Aside, Write-Through).
- Drawing 15 different obscure cloud services without understanding how data flows between them.

## Verification checklist
- [ ] High-level diagram shows complete path from client to database.
- [ ] Explains database sharding strategy and chosen partition key.
- [ ] Explicitly addresses failure modes and redundancy for every tier.

## Related skills
- system-design-interview-clarifying-requirements
- system-design-interview-capacity-estimation-qps
- coding-interview-communication-thinking-out-loud
- dsa-time-space-complexity-big-o-analysis
