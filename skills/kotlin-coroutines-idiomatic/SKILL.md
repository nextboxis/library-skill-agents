---
name: kotlin-coroutines-idiomatic
description: Use this skill when developing asynchronous Kotlin applications using structured concurrency, CoroutineScope, and reactive Flows.
---
# Kotlin Coroutines & Flow Reactive Streams

## When to use
Use this skill when you need to developing asynchronous Kotlin applications using structured concurrency, CoroutineScope, and reactive Flows.

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
```kotlin
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*

class TelemetryCollector(private val scope: CoroutineScope) {
    fun streamMetrics(): Flow<Double> = flow {
        var metric = 10.0
        while (currentCoroutineContext().isActive) {
            emit(metric)
            delay(1000)
            metric += 0.5
        }
    }.flowOn(Dispatchers.Default)

    fun startProcessing() = scope.launch {
        streamMetrics().collect { value ->
            println("Received metric: $value")
        }
    }
}
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
