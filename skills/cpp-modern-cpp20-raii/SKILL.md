---
name: cpp-modern-cpp20-raii
description: Use this skill when writing modern C++20 software using concepts, smart pointers, RAII idioms, and std::span for zero leaks.
---
# C++ Modern C++20 & RAII Resource Management

## When to use
Use this skill when you need to writing modern C++20 software using concepts, smart pointers, RAII idioms, and std::span for zero leaks.

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
#include <iostream>
#include <memory>
#include <span>
#include <concepts>

template <typename T>
concept Numeric = std::integral<T> || std::floating_point<T>;

template <Numeric T>
T calculate_sum(std::span<const T> values) {
    T total = 0;
    for (const auto& v : values) {
        total += v;
    }
    return total;
}

class ResourceManager {
    std::unique_ptr<int[]> buffer;
    size_t size;
public:
    explicit ResourceManager(size_t count)
        : buffer(std::make_unique<int[]>(count)), size(count) {}
};
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
