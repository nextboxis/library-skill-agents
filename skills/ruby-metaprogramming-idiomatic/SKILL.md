---
name: ruby-metaprogramming-idiomatic
description: Use this skill when authoring dynamic Domain-Specific Languages (DSLs), method_missing hooks, and class macros in Ruby.
---
# Ruby Metaprogramming & DSL Authoring

## When to use
Use this skill when you need to authoring dynamic Domain-Specific Languages (DSLs), method_missing hooks, and class macros in Ruby.

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
```ruby
module Validatable
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def validate_presence_of(*fields)
      fields.each do |field|
        define_method("validate_#{field}!") do
          val = send(field)
          raise ArgumentError, "#{field} is missing" if val.nil? || val.to_s.strip.empty?
        end
      end
    end
  end
end

class User
  include Validatable
  attr_accessor :email
  validate_presence_of :email
end
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
