---
name: contributing-to-major-open-source-projects
description: Use this skill when navigating developer contribution guidelines, signed CLAs/DCOs, and governance in large open-source projects.
---
# Contributing to Major Open-Source Projects & Foundations

## When to use
Use this skill when submitting contributions to high-profile open-source codebases (e.g., Kubernetes, React, Django, Linux Foundation, Apache Software Foundation).

## Core principles
- **Adherence to CONTRIBUTING.md**: Major projects have strict rules regarding branch naming, commit format, linter configurations, and issue linking. Violating them causes immediate automated CI failure.
- **Contributor License Agreements (CLA) & DCO**: Legal compliance requires signing a CLA or signing off commits with `git commit -s` (Developer Certificate of Origin) to confirm copyright eligibility.
- **Consensus Before Code**: For large features or breaking changes, open an RFC (Request for Comments) or architectural proposal issue before writing code.
- **Maintainer Empathy**: Senior maintainers review code in their spare time or alongside heavy workloads. Make your PR effortless to review with exhaustive tests and clear diffs.

## Step-by-step workflow
1. Read `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, and development setup guides thoroughly.
2. Complete CLA signing or configure Git user identity for DCO sign-offs.
3. Fork the repository and create a feature branch off `upstream/main`.
4. Run pre-commit hooks (`pre-commit install`) and local linters before writing changes.
5. Write unit and integration tests covering both happy paths and edge cases.
6. Rebase on latest upstream main: `git fetch upstream && git rebase upstream/main`.
7. Submit pull request matching the repository's PR template.

## Specifics & examples
- **Git DCO Sign-off Command**: `git commit -s -m "feat(core): add retry backoff strategy"`.
- **Configuring Upstream Remote**:
  ```bash
  git remote add upstream https://github.com/original-org/repo.git
  git fetch upstream
  git checkout -b fix-auth-timeout upstream/main
  ```

## Common mistakes & pitfalls
- Failing to sign off commits on repositories requiring DCO, causing bot CI check blocks.
- Submitting PRs directly from your fork's `main` branch instead of a dedicated feature branch.
- Opening massive 2,000-line PRs without prior maintainer discussion or approval.

## Verification checklist
- [ ] Followed all instructions in project's `CONTRIBUTING.md`.
- [ ] Signed CLA or included `-s` sign-off on all commit messages.
- [ ] Verified all automated CI lint and test suites pass locally prior to pushing.

## Related skills
- open-source-pull-request-authoring-standards
- open-source-issue-triage-good-first-issues
- git-commit-hygiene-meaningful-commit-history
- license-contributing-guide-code-of-conduct
