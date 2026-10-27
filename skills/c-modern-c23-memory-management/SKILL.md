---
name: c-modern-c23-memory-management
description: Use this skill when authoring high-performance C23 systems code, managing manual memory, and preventing buffer overflows.
---
# C Modern C23 & Safe Memory Management

## When to use
Use this skill when you need to authoring high-performance C23 systems code, managing manual memory, and preventing buffer overflows.

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
```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    char *data;
    size_t length;
    size_t capacity;
} SafeBuffer;

SafeBuffer* buffer_create(size_t initial_cap) {
    SafeBuffer *buf = malloc(sizeof(SafeBuffer));
    if (!buf) return NULL;
    buf->data = malloc(initial_cap);
    if (!buf->data) {
        free(buf);
        return NULL;
    }
    buf->length = 0;
    buf->capacity = initial_cap;
    return buf;
}

void buffer_destroy(SafeBuffer *buf) {
    if (buf) {
        free(buf->data);
        free(buf);
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
