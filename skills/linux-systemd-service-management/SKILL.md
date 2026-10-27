---
name: linux-systemd-service-management
description: Use this skill when authoring, sandboxing, and administering background daemon services using systemd unit files.
---
# Linux systemd Service Management

## When to use
Use this skill when you need to authoring, sandboxing, and administering background daemon services using systemd unit files.

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
```ini
[Unit]
Description=Backend API Service
After=network.target

[Service]
Type=simple
User=appuser
WorkingDirectory=/opt/api
ExecStart=/opt/api/bin/server
Restart=always
RestartSec=5
NoNewPrivileges=true
ProtectSystem=strict

[Install]
WantedBy=multi-user.target
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
