---
name: javascript-es2024-deep-dive
description: Use this skill when utilizing modern ECMAScript features including Temporal API, Symbols, Proxies, and structuredClone for clean code.
---
# JavaScript ES2024 Deep Dive

## When to use
Use this skill when you need to utilizing modern ECMAScript features including Temporal API, Symbols, Proxies, and structuredClone for clean code.

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
```js
// Deep clone with structuredClone (handles cycles, Sets, Maps)
const complexState = {
  metadata: new Map([['version', '1.0']]),
  tags: new Set(['production', 'critical']),
  created: new Date(),
};
const cloned = structuredClone(complexState);

// Reactive Proxy Traps
export function createObservable(target, onChange) {
  return new Proxy(target, {
    set(obj, prop, value) {
      const oldVal = obj[prop];
      obj[prop] = value;
      onChange(prop, oldVal, value);
      return true;
    },
  });
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
