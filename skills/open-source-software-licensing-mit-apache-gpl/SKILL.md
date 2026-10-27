---
name: open-source-software-licensing-mit-apache-gpl
description: Use this skill when auditing software dependencies, selecting open-source licenses, and navigating permissive vs. copyleft legal obligations.
---
# Open-Source Software Licensing: MIT, Apache, and GPL

## When to use
Use this skill when selecting a license for a new repository, auditing third-party npm/pip/cargo dependencies, preparing commercial releases, or avoiding viral copyleft contamination.

## Core principles
- **Permissive vs. Copyleft Licenses**:
  - *Permissive (MIT, BSD-2/3, Apache 2.0)*: Minimal restrictions. Allows proprietary commercial use, modification, and redistribution without requiring source code release.
  - *Strong Copyleft (GPLv2, GPLv3)*: Viral reciprocity. If you distribute software linking or containing GPL code, your entire derivative work must be licensed under the GPL and made open-source.
  - *Weak Copyleft (LGPL, MPL 2.0)*: Reciprocity applies only to the library itself; dynamic linking in commercial apps is permitted without open-sourcing application code.
- **The Apache 2.0 Patent Grant**: Unlike MIT, Apache 2.0 includes an explicit, irrevocable patent license protecting downstream users from contributor patent lawsuits.
- **SaaS and the Cloud Loophole**: Standard GPLv2/v3 triggers obligations upon *distribution* of binaries; running software over the network (SaaS) does not count as distribution under standard GPL.

## Step-by-step workflow
1. **Audit project dependencies**: Run automated license scanners (`license-checker`, `cargo-deny`, `pip-licenses`).
2. **Flag viral copyleft licenses**: Quarantine any GPLv2/GPLv3 packages in commercial closed-source products.
3. **Verify license compatibility**: Confirm that combining libraries does not create legal contradictions (e.g., GPLv2-only is incompatible with Apache 2.0).
4. **Fulfill attribution obligations**: Compile `THIRD_PARTY_NOTICES.txt` including full copyright notices and license texts for all bundled permissive libraries.
5. **Select appropriate project license**:
   - For maximum adoption & commercial use: MIT or Apache 2.0.
   - For protecting community ownership & preventing proprietary forks: GPLv3.

## Behavioral guidelines & dialogue examples
- **Automated CI License Audit Configuration**:
  ```bash
  # Check for unapproved copyleft licenses in Node.js dependencies
  npx license-checker --production --onlyAllow "MIT;Apache-2.0;BSD-2-Clause;BSD-3-Clause;ISC" --failOn "GPL;AGPL;LGPL"
  ```

## Common mistakes & pitfalls
- Linking a GPLv2/GPLv3 library statically into a proprietary commercial desktop or mobile app, legally obligating the release of proprietary source code.
- Stripping original copyright headers and author notices from MIT/Apache code before bundling.
- Assuming code on GitHub without a `LICENSE` file is "public domain" (no license means standard exclusive copyright applies; you have zero legal right to use it).

## Verification checklist
- [ ] Commercial proprietary codebases contain zero unauthorized strong copyleft (GPL) dependencies.
- [ ] Full attribution notices and licenses are compiled into a third-party credits file.
- [ ] License compatibility is audited across combined open-source libraries.
- [ ] Code without an explicit license is flagged as copyrighted and excluded.

## Related skills
- dual-licensing-bsl-agpl-open-core-models
- intellectual-property-copyright-code-fair-use
- consulting-qualified-legal-counsel-boundaries
- dev-workflow-git-and-tooling
