---
name: docker-containerization-best-practices
description: Use this skill when containerizing applications with Docker, managing base images, non-root users, and minimal layer counts.
---
# Docker Containerization Best Practices

## When to use
Use this skill when you need to containerizing applications with Docker, managing base images, non-root users, and minimal layer counts.

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
```dockerfile
# syntax=docker/dockerfile:1.4
FROM node:20-alpine AS base
WORKDIR /app
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
ENV NODE_ENV=production

FROM base AS dependencies
COPY package*.json ./
RUN npm ci --only=production

FROM base AS runner
USER appuser
COPY --from=dependencies /app/node_modules ./node_modules
COPY --chown=appuser:appgroup . .
EXPOSE 3000
CMD ["node", "server.js"]
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
