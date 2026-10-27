---
name: dual-licensing-bsl-agpl-open-core-models
description: Use this skill when evaluating modern commercial open-source licensing models including AGPL, Business Source License (BSL), and Open Core.
---
# Dual-Licensing, AGPL, BSL, and Open-Core Models

## When to use
Use this skill when designing commercial software monetization strategies, adopting database engines (MongoDB, Redis, HashiCorp tools), or evaluating cloud vendor hosting risks.

## Core principles
- **The AGPL (Affero GPL) Network Loophole Closer**: Unlike standard GPL, AGPLv3 triggers copyleft obligations upon *network interaction*. If you modify an AGPL database or server and expose it over an API, you must open-source your entire backend modification.
- **The Source-Available / BSL Paradigm (Business Source License)**: BSL and SSPL are *source-available*, not open-source (per OSI definition). They allow free non-production use and self-hosting, but legally prohibit running competing managed cloud services (the "anti-AWS clause").
- **Open-Core Architecture**: The foundational engine is permissively licensed (Apache 2.0/MIT); enterprise features (SSO/SAML, audit logs, RBAC, high-availability clustering) are closed-source proprietary commercial add-ons.
- **Change Date Mechanisms**: BSL licenses often include a sunset clause (e.g., converting to Apache 2.0 after 4 years), balancing short-term commercial protection with long-term open-source heritage.

## Step-by-step workflow
1. **Analyze business & cloud threat vectors**: Determine if hyperscalers hosting your service without contributing back is the primary commercial risk.
2. **Evaluate licensing archetypes**:
   - *AGPLv3*: Best for developer tools and apps where modifications should stay in the community.
   - *BSL / SSPL*: Best for databases and infrastructure products defending against cloud provider wrapping.
   - *Open Core*: Best for developer platforms with enterprise feature upsells.
3. **Audit internal corporate risk**: Ensure internal engineering teams do not accidentally link AGPL software into proprietary client products.
4. **Draft clear Commercial Licensing terms**: Provide transparent commercial license alternatives for enterprise customers who cannot accept copyleft terms.

## Behavioral guidelines & dialogue examples
- **Dialogue Example (Advising on Database Licensing Switch)**:
  - *Context*: A startup building an open database is worried AWS will host it and undercut them.
  - *Strategic Guidance*: "If your goal is to prevent hyperscalers from offering a managed cloud version of your database without paying you, a permissive license (MIT/Apache) leaves you vulnerable.
  
  Adopting BSL 1.1 or SSPL allows community developers to self-host and inspect code for free, while prohibiting cloud vendors from offering your engine as a managed commercial service. Furthermore, pairing this with a 3-year conversion to Apache 2.0 reassures the open-source community that code is never permanently locked away."

## Common mistakes & pitfalls
- Marketing a BSL or SSPL product as "Open Source" (OSI considers this deceptive and invalid).
- Linking an AGPL client driver into a proprietary mobile or web app without verifying whether the driver itself is dual-licensed.
- Changing an established open-source project's license retroactively without contributor agreement or copyright assignment agreements (CLA).

## Verification checklist
- [ ] Licensing model aligns with business strategy and cloud threat models.
- [ ] Source-available products are accurately described without misusing OSI "Open Source" trademarks.
- [ ] AGPL dependencies in internal tech stacks are audited to prevent viral network copyleft triggers.
- [ ] Commercial exception paths are documented for enterprise customers.

## Related skills
- open-source-software-licensing-mit-apache-gpl
- intellectual-property-copyright-code-fair-use
- consulting-qualified-legal-counsel-boundaries
- software-architecture-and-system-design
