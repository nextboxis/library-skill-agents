---
name: pulumi-code-based-iac
description: Use this skill when managing cloud infrastructure using general-purpose programming languages (TypeScript, Python, Go) via Pulumi.
---
# Pulumi Code-Based Infrastructure as Code

## When to use
Use this skill when you need to managing cloud infrastructure using general-purpose programming languages (TypeScript, Python, Go) via Pulumi.

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
```ts
import * as pulumi from "@pulumi/pulumi";
import * as aws from "@pulumi/aws";

const bucket = new aws.s3.Bucket("audit-logs", {
  acl: "private",
  versioning: { enabled: true },
});

export const bucketName = bucket.id;
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
