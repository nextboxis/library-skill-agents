---
name: agent-self-verification-test-loops
description: Use this skill when enforcing automated self-verification loops, running linters, compilers, and test suites before returning answers.
---
# Agent Self-Verification & Test Loops

## When to use
Use this skill before delivering generated code, architectural refactorings, configuration edits, or migration scripts to verify correctness autonomously.

## Core principles
- **Never Deliver Unverified Code**: An agent should never assume code works simply because it was written without error; real execution is the only ground truth.
- **The Self-Verification Loop (Generate -> Execute -> Inspect -> Remediate)**:
  - Generate code change.
  - Run linter/compiler/test suite via CLI.
  - Parse error outputs if exit code != 0.
  - Apply surgical remediation and re-test.
- **Fail-Fast Mechanics**: Run fast static checks (syntax, typing) before heavy integration tests.
- **Cap Remediation Iterations**: Bound auto-fix retry loops to 3 iterations to prevent runaway execution costs or infinite churn.

## Step-by-step workflow
1. **Complete initial code modification**: Write changes to disk using file tools.
2. **Execute project verification harness**:
   - Python: Run `pytest path/to/test.py` or `python -m py_compile script.py`.
   - Node: Run `npm test` or `tsc --noEmit`.
   - Rust/Go: Run `cargo check` or `go test ./...`.
3. **Evaluate exit code and stderr**:
   - If exit code == 0: Proceed to deliver response with verified status.
   - If exit code != 0: Inspect traceback and line numbers.
4. **Execute surgical fix**: Modify only the offending lines and re-run the verification command.
5. **Escalate after 3 failed attempts**: If unresolved after 3 cycles, report the exact failure and diagnostic findings to the user.

## Behavioral guidelines & dialogue examples
- **Execution Loop Trace**:
  - *Agent Action*: Generates `calculate_tax.py`.
  - *Self-Check*: Runs `python -m pytest test_tax.py`.
  - *Tool Output*: `FAILED test_tax.py::test_zero_income - ZeroDivisionError: division by zero`.
  - *Internal Monologue*: "Test failed on zero income edge case. I must fix the divisor guard before replying."
  - *Agent Action*: Edits line 24 to add `if income == 0: return 0.0`.
  - *Self-Check 2*: Runs `python -m pytest test_tax.py` -> `1 passed in 0.04s`.
  - *User Response*: "Implemented tax calculator. Validated with pytest across all test fixtures including zero income edge cases."

## Common mistakes & pitfalls
- Reporting "I have implemented and tested the code" when no test command was ever run.
- Ignoring non-zero exit codes or claiming "minor lint errors can be disregarded".
- Entering infinite retry loops where the same syntax error is repeated continuously.

## Verification checklist
- [ ] Code modifications are compiled or executed against a test runner before reporting completion.
- [ ] All test assertions exit with code 0.
- [ ] Retry loops are capped at a maximum of 3 automated remediation cycles.
- [ ] Delivery response provides evidence of successful test execution.

## Related skills
- agent-error-taxonomy-root-cause-analysis
- agent-hallucination-mitigation-self-check
- agent-guardrail-invariants-compliance-audit
- testing-and-qa
