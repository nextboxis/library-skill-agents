---
name: open-source-issue-triage-good-first-issues
description: Use this skill when discovering, qualifying, and claiming beginner-friendly open-source issues to contribute effectively.
---
# Open Source: Issue Triage & 'Good First Issue' Contributions

## When to use
Use this skill when looking to build real-world engineering credibility, contribute to prominent developer tools, or onboard into unfamiliar open-source projects.

## Core principles
- **Look for Active Maintainership**: Only contribute to repositories with recent commits, merged PRs within the last month, and responsive maintainers.
- **Label Taxonomy**: Look for tags like `good first issue`, `help wanted`, `documentation`, or `beginner-friendly`.
- **Reproduce Before Claiming**: Always clone the repository, build the project locally, run the existing test suite, and reproduce the reported bug before asking to be assigned.
- **Respect Maintainer Bandwidth**: Do not post 'Can I work on this?' on 10 issues at once. Propose a concrete solution outline when requesting assignment.

## Step-by-step workflow
1. Search GitHub using filters: `is:issue is:open label:"good first issue" archived:false`.
2. Inspect repository health: check commit frequency and PR merge turnaround time.
3. Fork and clone repository; run build and verify tests pass cleanly.
4. Reproduce the issue locally and identify root cause in the source code.
5. Comment on the issue: summarize root cause and propose your planned fix approach.
6. Wait for maintainer confirmation or proceed with an atomic PR referencing the issue.

## Specifics & examples
- **Issue Comment Script**:
  *Comment*: 'Hi maintainers! I investigated this issue locally and reproduced the parsing failure on Windows file paths. The issue occurs in `pkg/parser/path.go` where forward slashes are hardcoded. I would like to fix this by using `filepath.ToSlash` and adding a regression test suite covering cross-platform path separators. May I take this issue?'
- **Search Query Operators**:
  `language:typescript label:"good first issue" state:open no:assignee`

## Common mistakes & pitfalls
- Commenting 'Assign this to me' without reading the discussion or attempting local reproduction.
- Ghosting an issue after being assigned, blocking other contributors.
- Attempting to refactor the entire architecture as your first contribution to an established repo.

## Verification checklist
- [ ] Verified repository has had active commits and merged PRs within the past 30 days.
- [ ] Successfully reproduced issue and executed test suite in a local development environment.
- [ ] Proposed fix outline respectfully in the issue thread before writing massive code changes.

## Related skills
- contributing-to-major-open-source-projects
- open-source-pull-request-authoring-standards
- git-commit-hygiene-meaningful-commit-history
- license-contributing-guide-code-of-conduct
