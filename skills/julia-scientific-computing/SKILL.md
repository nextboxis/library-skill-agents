---
name: julia-scientific-computing
description: Use this skill when developing high-performance numerical simulations and mathematical computations utilizing Julia multiple dispatch.
---
# Julia Scientific Computing & Multiple Dispatch

## When to use
Use this skill when you need to developing high-performance numerical simulations and mathematical computations utilizing Julia multiple dispatch.

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
```julia
struct Vector3D{T <: Real}
    x::T
    y::T
    z::T
end

# Multiple dispatch method for vector dot product
function dot_product(a::Vector3D{T}, b::Vector3D{T}) where T
    return a.x * b.x + a.y * b.y + a.z * b.z
end

v1 = Vector3D(1.0, 2.0, 3.0)
v2 = Vector3D(4.0, 5.0, 6.0)
println("Dot product: ", dot_product(v1, v2))
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
