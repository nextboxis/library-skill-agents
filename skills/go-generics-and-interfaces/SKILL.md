---
name: go-generics-and-interfaces
description: Use this skill when authoring type-parameterized collections, functional utilities, and decoupled interfaces in Go 1.18+.
---
# Go Generics & Interface Design

## When to use
Use this skill when you need to authoring type-parameterized collections, functional utilities, and decoupled interfaces in Go 1.18+.

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
```go
package main

type Number interface {
	~int | ~int64 | ~float64
}

// Generic Slice Mapper
func MapSlice[T any, R any](items []T, transform func(T) R) []R {
	out := make([]R, len(items))
	for i, val := range items {
		out[i] = transform(val)
	}
	return out
}

func Sum[T Number](vals []T) T {
	var total T
	for _, v := range vals {
		total += v
	}
	return total
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
