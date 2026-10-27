---
name: wcag-22-guidelines-conformance-levels
description: Use this skill when auditing and remediating web interfaces to conform with WCAG 2.2 Level A, AA, and AAA accessibility standards.
---
# WCAG 2.2 Guidelines & Conformance Auditing

## When to use
Use this skill when you need to auditing and remediating web interfaces to conform with WCAG 2.2 Level A, AA, and AAA accessibility standards.

## Prerequisites
- Working knowledge of systems administration, site reliability engineering, or accessibility standards.
- Appropriate administrative tooling, terminal shell, or screen reader testing environment.

## Step-by-step workflow
1. **Analyze operational context**: Inspect host system telemetry, access controls, or UI accessibility trees.
2. **Formulate implementation plan**: Draft declarative configurations, automation scripts, or remediation markup.
3. **Apply changes**: Execute modifications following standard operating procedures and least-privilege principles.
4. **Audit and verify outcomes**: Run diagnostics, automated audits (axe, Lighthouse, sar), or command assertions.
5. **Establish ongoing telemetry**: Configure monitoring rules, periodic health checks, or CI regression gates.

## Commands / code examples
```bash
# Operational command and verification workflow for wcag-22-guidelines-conformance-levels
echo "Executing verification check for wcag-22-guidelines-conformance-levels"
```

## Common mistakes & pitfalls
- Disabling security controls or bypassing accessibility standards to achieve rapid fixes.
- Modifying production systems without automated verification checks or rollback scripts.
- Relying on manual testing instead of embedding automated assertions into CI/CD pipelines.

## Verification checklist
- [ ] Implementations satisfy security, accessibility, or observability standards.
- [ ] Automated checks pass with zero high-severity warnings or failures.
- [ ] Diagnostic logs and telemetry confirm expected operational state.
- [ ] Operational runbooks and documentation are updated.

## Related skills
- wcag-22-guidelines-conformance-levels
- linux-permissions-chmod-chown-acls
- distributed-tracing-opentelemetry-sdk
- site-reliability-engineering-slo-sla-error-budgets
