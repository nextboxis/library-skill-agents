---
name: open-source-repo-maintenance-governance
description: Use this skill when establishing issue templates, automated CI workflows, triage bots, and community governance for open-source repos.
---
# Open Source: Repo Maintenance, Triage & Project Governance

## When to use
Use this skill when managing a public open-source project that is attracting outside contributors, feature requests, and bug reports.

## Core principles
- **Defending Maintainer Mental Health**: Maintainer burnout is the #1 killer of open-source projects. Automation, strict issue templates, and clear boundaries protect maintainer energy.
- **Structured Issue & PR Templates**: Requiring minimal reproducible examples, environment details, and checkboxes filters out low-effort or unactionable bug reports.
- **Automated Governance**: Use GitHub Actions for stale issue tagging, automated dependency updates (Dependabot/Renovate), and semantic release tagging.
- **Clear Delegation & Ownership**: Document CODEOWNERS for specific directories so reviews route automatically to responsible domain maintainers.

## Step-by-step workflow
1. Configure `.github/ISSUE_TEMPLATE/` with YAML forms for bug reports and feature proposals.
2. Create `.github/PULL_REQUEST_TEMPLATE.md` enforcing test coverage, changelog entries, and issue linking.
3. Establish a `CODEOWNERS` file mapping critical modules to specific maintainers.
4. Add automated CI checks: linters, unit tests, code formatting, and secret scanning.
5. Configure Dependabot/Renovate with weekly batching to avoid alert fatigue.
6. Document release governance and security disclosure policy (`SECURITY.md`).

## Specifics & examples
- **Sample YAML Bug Report Template (`.github/ISSUE_TEMPLATE/bug_report.yml`)**:
  ```yaml
  name: Bug Report
  description: File a reproducible bug report
  body:
    - type: textarea
      id: reproduction
      attributes:
        label: Minimal Reproducible Example
        description: Provide a minimal script or GitHub repo reproducing the bug.
      validations:
        required: true
  ```

## Common mistakes & pitfalls
- Allowing unformatted free-text issue submissions that lack version numbers and logs.
- Feeling personally obligated to implement every feature requested by anonymous users.
- Ignoring PRs for months instead of politely closing non-viable proposals early.

## Verification checklist
- [ ] Structured issue templates require minimal reproducible examples.
- [ ] Security disclosure instructions defined in `SECURITY.md`.
- [ ] CI automated tests and lint checks run on all pull requests.

## Related skills
- license-contributing-guide-code-of-conduct
- open-source-pull-request-authoring-standards
- git-commit-hygiene-meaningful-commit-history
- github-profile-readme-optimization-showcase
