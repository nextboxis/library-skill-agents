---
name: scala-functional-object-programming
description: Use this skill when authoring robust Scala 3 applications using case classes, pattern matching, type classes, and pure functions.
---
# Scala Functional & Object-Oriented Programming

## When to use
Use this skill when you need to authoring robust Scala 3 applications using case classes, pattern matching, type classes, and pure functions.

## Prerequisites
- Working knowledge of relevant programming language or database fundamentals.
- Access to testing environment or local runtime instance.

## Step-by-step workflow
1. **Analyze operational requirements**: Review performance boundaries, data integrity constraints, and query patterns.
2. **Design schema / interface**: Define explicit data contracts, types, or indexes supporting planned operations.
3. **Implement core routines**: Construct declarative, type-safe, or parameterized queries and functions.
4. **Validate performance**: Verify execution metrics using profilers, EXPLAIN plans, or benchmark test suites.
5. **Implement defensive controls**: Enforce timeout boundaries, connection pooling limits, and transaction safety.

## Commands / code examples
```scala
sealed trait PipelineEvent
case class Ingested(id: String, payload: String) extends PipelineEvent
case class Processed(id: String, bytesCount: Int) extends PipelineEvent
case class Failed(id: String, reason: String) extends PipelineEvent

object EventAuditor:
  def audit(event: PipelineEvent): String = event match
    case Ingested(id, _) => s"Event $id successfully ingested into raw stream"
    case Processed(id, count) => s"Event $id processed: $count bytes transformed"
    case Failed(id, reason) => s"ALERT: Event $id failed due to $reason"
```

## Common mistakes & pitfalls
- Overlooking indexing strategies on foreign keys and frequently queried filter columns.
- Running unparameterized dynamic queries, creating severe SQL injection vulnerabilities.
- Holding open long-running database transactions during slow external network calls.

## Verification checklist
- [ ] Schema contracts and type signatures are strictly enforced.
- [ ] Queries are fully parameterized against injection vulnerabilities.
- [ ] Profiling or execution plans show optimal resource consumption.
- [ ] Error handling safely releases locks and rolls back aborted transactions.

## Related skills
- postgresql-query-optimization-explain
- sql-anti-patterns-remediation
- acid-transactions-isolation-levels
- secure-code-review-static-analysis-sast
