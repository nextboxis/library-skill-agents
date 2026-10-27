---
name: deserialization-defense-safe-parsers
description: Use this skill when prevent remote code execution by replacing unsafe language deserializers with strict JSON schemas.
---
# Deserialization Defense Safe Parsers

## When to use
Use this skill when prevent remote code execution by replacing unsafe language deserializers with strict JSON schemas. Apply this during authorized security assessments, threat hunting, defensive hardening, or incident response investigations.

## Core principles
- **Strict Rules of Engagement**: Conduct all activities strictly within authorized scope, legally executed non-disclosure agreements, and defined maintenance windows.
- **Minimal Footprint & Traceability**: Ensure all actions generate predictable telemetry, avoid service disruption, and maintain forensic chain of custody.
- **Root Cause Remediation**: Pair every identified vulnerability or threat vector with definitive, defense-in-depth architectural remediations.
- **Adversarial Empathy**: Understand attacker methodology (MITRE ATT&CK) to engineer robust detections and resilient system boundaries.

## Step-by-step workflow
1. **Define scope and authorization**: Verify written permission, target IP ranges, domain boundaries, and change-control approvals.
2. **Execute initial baseline evaluation**: Conduct non-destructive reconnaissance, telemetry verification, or environment auditing.
3. **Deploy specialized tooling**: Execute targeted commands, queries, or analysis scripts configured for minimal false positives.
4. **Analyze outputs and validate findings**: Cross-reference raw data against known baseline behaviors, signatures, or vulnerability records.
5. **Formulate remediation strategy**: Document exact reproduction steps, technical impact, CVSS score, and defensive patches.
6. **Conduct verification and post-mortem**: Re-test remediated endpoints to verify vulnerability closure and update detection playbooks.

## Specifics & examples
```bash
# Verification and execution workflow
# Target: deserialization-defense-safe-parsers
# Description: Prevent remote code execution by replacing unsafe language deserializers with strict JSON schemas.
```
- **Primary Focus Area**: Application & API security operations adhering strictly to standard industry frameworks (NIST, CIS, OWASP, MITRE ATT&CK).

## Common mistakes & pitfalls
- Executing uncalibrated scans or heavy scripts without verifying network bandwidth or target host resource limits.
- Relying solely on automated tool outputs without manual verification of false positives or edge cases.
- Failing to maintain clean logs and audit trails of all executed assessment actions.

## Verification checklist
[ ] Written authorization and scope boundaries are confirmed prior to execution.
[ ] Analysis commands use scoped parameters avoiding host disruption.
[ ] Documented findings contain verified reproduction steps and concrete remediation guidance.

## Related skills
- owasp-top-10-web-vulnerabilities-remediation
- parameterized-queries-sqli-prevention
- content-security-policy-csp-implementation
- secure-code-review-static-analysis-sast
