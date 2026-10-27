---
name: python-idiomatic-asyncio
description: Use this skill when writing non-blocking asynchronous Python services using asyncio event loops, tasks, semaphores, and TaskGroups.
---
# Python Idiomatic asyncio

## When to use
Use this skill when you need to writing non-blocking asynchronous Python services using asyncio event loops, tasks, semaphores, and TaskGroups.

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
```python
import asyncio
from typing import List

async def fetch_metrics(service_id: str, sem: asyncio.Semaphore) -> dict:
    async with sem:
        # Simulate network I/O
        await asyncio.sleep(0.05)
        return {"service": service_id, "status": "healthy"}

async def gather_all_telemetry(services: List[str]) -> List[dict]:
    sem = asyncio.Semaphore(5)  # Limit concurrent tasks
    async with asyncio.TaskGroup() as tg:
        tasks = [tg.create_task(fetch_metrics(s, sem)) for s in services]
    return [t.result() for t in tasks]

if __name__ == "__main__":
    results = asyncio.run(gather_all_telemetry(["auth", "billing", "search"]))
    print(results)
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
