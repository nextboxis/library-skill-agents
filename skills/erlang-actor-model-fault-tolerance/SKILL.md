---
name: erlang-actor-model-fault-tolerance
description: Use this skill when designing distributed Erlang architectures adhering to the 'let it crash' philosophy and process supervision trees.
---
# Erlang Actor Model & Fault Tolerance

## When to use
Use this skill when you need to designing distributed Erlang architectures adhering to the 'let it crash' philosophy and process supervision trees.

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
```erlang
-module(echo_server).
-export([start/0, loop/0]).

start() ->
    spawn(fun loop/0).

loop() ->
    receive
        {From, {echo, Msg}} ->
            From ! {ok, Msg},
            loop();
        stop ->
            ok;
        _Other ->
            loop()
    end.
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
