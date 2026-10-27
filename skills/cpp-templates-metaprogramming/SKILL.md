---
name: cpp-templates-metaprogramming
description: Use this skill when implementing compile-time type calculations, constexpr evaluation, and SFINAE/type_traits in C++.
---
# C++ Templates & Compile-Time Metaprogramming

## When to use
Use this skill when you need to implementing compile-time type calculations, constexpr evaluation, and SFINAE/type_traits in C++.

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
```cpp
#include <type_traits>
#include <cstdint>

template <typename T>
constexpr bool is_fast_integer_v = std::is_integral_v<T> && sizeof(T) <= sizeof(uint64_t);

template <typename T>
constexpr auto process_element(T val) {
    if constexpr (is_fast_integer_v<T>) {
        return val * 2;
    } else {
        return val;
    }
}

static_assert(process_element(10) == 20);
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
