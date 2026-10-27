---
name: r-statistical-programming
description: Use this skill when manipulating tabular datasets, calculating statistical regressions, and visualizing distributions using R and tidyverse.
---
# R Statistical Analysis & Tidyverse

## When to use
Use this skill when you need to manipulating tabular datasets, calculating statistical regressions, and visualizing distributions using R and tidyverse.

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
```r
# Data transformation and hypothesis testing pipeline
suppressPackageStartupMessages(library(dplyr))

analyze_experiments <- function(df) {
  summary_metrics <- df %>%
    filter(!is.na(measurement)) %>%
    group_by(treatment_group) %>%
    summarise(
      mean_val = mean(measurement),
      sd_val = sd(measurement),
      sample_size = n()
    )
  return(summary_metrics)
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
