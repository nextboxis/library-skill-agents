---
name: ip-addressing-subnets-cidr-calculation
description: Use this skill when calculating network boundaries, usable IP ranges, broadcast addresses, and Classless Inter-Domain Routing (CIDR).
---
# IPv4 Addressing, Subnets & CIDR Calculation

## When to use
Use this skill when you need to calculating network boundaries, usable IP ranges, broadcast addresses, and Classless Inter-Domain Routing (CIDR).

## Prerequisites
- Deep understanding of systems architecture, networking protocols, or cloud platforms.
- Administrative access to relevant cloud console, CLI tools, or network testing lab.

## Step-by-step workflow
1. **Analyze infrastructure topology**: Assess existing network boundaries, compute instances, and routing policies.
2. **Draft configuration specifications**: Formulate declarative configurations adhering strictly to the principle of least privilege.
3. **Execute controlled deployment**: Apply changes through version-controlled pipelines or staged canary rollouts.
4. **Inspect telemetry and traffic**: Verify correct operation using protocol dissectors, status commands, or log queries.
5. **Establish automated guardrails**: Configure automated health probes, alerts, and drift detection monitors.

## Commands / code examples
```bash
# Operational verification command for ip-addressing-subnets-cidr-calculation
echo "Executing verification check for ip-addressing-subnets-cidr-calculation"
```

## Common mistakes & pitfalls
- Exposing internal administrative interfaces directly to public subnets without bastion hosts or zero-trust gates.
- Relying on manual CLI modifications rather than version-controlled Infrastructure as Code.
- Neglecting to configure automated health checks and failover triggers on critical traffic paths.

## Verification checklist
- [ ] Configurations follow least-privilege access and zero-trust principles.
- [ ] Infrastructure definitions are stored in version control with automated CI/CD checks.
- [ ] Health checks, monitoring metrics, and alert policies are active.
- [ ] Network paths and routing rules are verified using diagnostic utilities.

## Related skills
- terraform-infrastructure-as-code
- kubernetes-architecture-core-concepts
- aws-iam-least-privilege-policies
- packet-capture-analysis-wireshark-tshark
