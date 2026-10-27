---
name: regex-mastery-engine-internals
description: Use this skill when crafting performant regexes with lookarounds, atomic grouping, and preventing catastrophic backtracking (ReDoS).
---
# Regular Expressions Mastery & Engine Internals

## When to use
Use this skill when you need to crafting performant regexes with lookarounds, atomic grouping, and preventing catastrophic backtracking (ReDoS).

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
```javascript
// Safe, ReDoS-resistant pattern validating ISO 8601 timestamps
const ISO_TIMESTAMP_REGEX = /^\d{4}-(?:0[1-9]|1[0-2])-(?:0[1-9]|[12]\d|3[01])T(?:[01]\d|2[0-3]):[0-5]\d:[0-5]\d(?:\.\d+)?(?:Z|[+-][01]\d:[0-5]\d)$/;

// Non-backtracking token extraction with negative lookahead
const SANITIZE_QUERY_REGEX = /^(?!.*(?:--|;))[a-zA-Z0-9_]{3,32}$/;

export function isValidQuery(q) {
  return SANITIZE_QUERY_REGEX.test(q);
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
