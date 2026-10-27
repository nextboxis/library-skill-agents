---
name: bash-shell-scripting-advanced
description: Use this skill when writing robust POSIX Bash automation scripts with set -euo pipefail, parameter expansion, and trap handlers.
---
# Advanced Bash Scripting & Error Trapping

## When to use
Use this skill when you need to writing robust POSIX Bash automation scripts with set -euo pipefail, parameter expansion, and trap handlers.

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
```bash
#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

cleanup() {
  local exit_code=$?
  rm -f /tmp/lockfile.$$
  echo "[INFO] Cleaned up temporary resources with exit code ${exit_code}"
}
trap cleanup EXIT ERR

main() {
  local target_dir="${1:-/tmp}"
  echo "[INFO] Processing files in ${target_dir}"
}
main "$@"
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
