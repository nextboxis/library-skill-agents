---
name: csharp-linq-modern-dotnet
description: Use this skill when writing clean, expressive data transformations using C# LINQ query syntax, records, and pattern matching.
---
# C# Modern LINQ & .NET Records

## When to use
Use this skill when you need to writing clean, expressive data transformations using C# LINQ query syntax, records, and pattern matching.

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
```csharp
using System;
using System.Collections.Generic;
using System.Linq;

public record OrderItem(string Sku, decimal Price, int Quantity);
public record CustomerOrder(string Id, List<OrderItem> Items, bool IsVip);

public static class OrderProcessor {
    public static decimal CalculateNetRevenue(IEnumerable<CustomerOrder> orders) {
        return orders
            .Where(o => o.Items.Count > 0)
            .SelectMany(o => o.Items)
            .Sum(item => item.Price * item.Quantity);
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
