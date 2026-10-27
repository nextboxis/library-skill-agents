---
name: license-contributing-guide-code-of-conduct
description: Use this skill when choosing open-source software licenses and authoring CONTRIBUTING.md and Code of Conduct documents.
---
# Open Source: Licenses, CONTRIBUTING.md & Code of Conduct

## When to use
Use this skill when launching any public software repository to clarify legal usage rights, community standards, and contribution workflows.

## Core principles
- **Permissive vs Copyleft Licensing**: Permissive licenses (MIT, Apache-2.0) maximize commercial adoption and derivative use; Copyleft (GPLv3, AGPLv3) mandates that derivatives remain open source.
- **Patent Grant Protection (Apache-2.0)**: Apache-2.0 includes an explicit contributor patent grant and termination clause, making it superior to MIT for complex or enterprise tools.
- **Clear Local Setup in CONTRIBUTING.md**: A great guide lets a newcomer clone, install dependencies, and pass all tests in under 5 minutes with zero tribal knowledge.
- **Enforceable Code of Conduct (Contributor Covenant)**: Adopting the standard Contributor Covenant v2.1 with a dedicated reporting email establishes a safe, professional community.

## Step-by-step workflow
1. Select license: MIT for lightweight libraries, Apache-2.0 for tools/enterprise, AGPLv3 to prevent closed cloud exploitation.
2. Create root `LICENSE` file containing the exact official license text with current year and copyright holder.
3. Author `CONTRIBUTING.md`: Prerequisites, Local Setup, Branch Naming, Code Standards, Running Tests, Submitting PRs.
4. Add `CODE_OF_CONDUCT.md` using the Contributor Covenant template with a specific contact email.
5. Link both files in the main `README.md`.
6. Verify repository displays license badge automatically on GitHub.

## Specifics & examples
- **License Decision Matrix**:
  - *MIT*: Maximum simplicity, high corporate adoption, no patent grant.
  - *Apache-2.0*: Permissive, includes explicit patent license protection.
  - *AGPLv3*: Strong copyleft, forces network SaaS operators to release source code.
- **CONTRIBUTING.md Fast-Path Snippet**:
  ```markdown
  ### Quick Start for Contributors
  1. `git clone https://github.com/org/repo.git && cd repo`
  2. `npm install`
  3. `npm test` (Must pass 100% before opening PR)
  ```

## Common mistakes & pitfalls
- Leaving a repository with no license (defaults to 'All Rights Reserved', preventing anyone from using or contributing).
- Writing a custom home-made license that has never been tested in legal courts.
- Adopting a Code of Conduct without listing an active, monitored email address for reports.

## Verification checklist
- [ ] Repository includes standard OSI-approved `LICENSE` file.
- [ ] `CONTRIBUTING.md` lists exact commands to build and run test suites locally.
- [ ] `CODE_OF_CONDUCT.md` provides an active enforcement contact email.

## Related skills
- open-source-repo-maintenance-governance
- contributing-to-major-open-source-projects
- open-source-pull-request-authoring-standards
- github-profile-readme-optimization-showcase
