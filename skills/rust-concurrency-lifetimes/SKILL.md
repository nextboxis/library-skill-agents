---
name: rust-concurrency-lifetimes
description: Use this skill when building multi-threaded Rust systems using Arc, Mutex, crossbeam channels, and Send/Sync invariants.
---
# Rust Concurrency & Thread Safety

## When to use
Use this skill when you need to building multi-threaded Rust systems using Arc, Mutex, crossbeam channels, and Send/Sync invariants.

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
```rust
use std::sync::{Arc, Mutex};
use std::thread;

pub fn parallel_accumulator(elements: Vec<i64>) -> i64 {
    let counter = Arc::new(Mutex::new(0i64));
    let mut handles = vec![];

    for chunk in elements.chunks(100) {
        let chunk_vec = chunk.to_vec();
        let counter_ref = Arc::clone(&counter);

        let handle = thread::spawn(move || {
            let partial_sum: i64 = chunk_vec.iter().sum();
            let mut guard = counter_ref.lock().unwrap();
            *guard += partial_sum;
        });
        handles.push(handle);
    }

    for h in handles {
        h.join().unwrap();
    }
    let res = *counter.lock().unwrap();
    res
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
