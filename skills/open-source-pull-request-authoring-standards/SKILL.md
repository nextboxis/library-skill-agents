---
name: open-source-pull-request-authoring-standards
description: Use this skill when drafting clean, well-tested open-source pull requests that maintainers can easily review, test, and merge.
---
# Open Source Pull Request Authoring Standards

## When to use
Use this skill whenever opening a pull request across public open-source repos, enterprise codebases, or team repositories.

## Core principles
- **Self-Review Before Requesting Review**: Review your own PR diff on GitHub before requesting reviewer attention to catch stray debug prints and formatting errors.
- **Visual Evidence for UI & CLI Changes**: Include screenshots, before-and-after GIFs, or terminal asciinema recordings to prove functional correctness.
- **Linking Issues Automatically**: Use closing keywords (`Fixes #123`, `Closes #456`) in the PR description so GitHub automatically closes the issue upon merge.
- **Graceful Feedback Handling**: Treat code review feedback as collaborative refinement, not personal criticism. Acknowledge suggestions politely and resolve threads cleanly.

## Step-by-step workflow
1. Ensure diff is minimal and contains zero accidental whitespace or dependency noise.
2. Complete all sections of the repository's `.github/pull_request_template.md`.
3. Title PR clearly: `<type>(<scope>): <summary>` (e.g., `fix(parser): support unicode escaped characters`).
4. Provide detailed description: Problem, Solution, How This Was Tested, and Issue Links.
5. Attach screenshots or command terminal outputs demonstrating verification.
6. Respond promptly to reviewer comments, push requested changes, and re-request review.

## Specifics & examples
- **Exemplary PR Description Template**:
  ```markdown
  ### Summary of Changes
  Fixes a race condition in Redis client reconnection where pending requests were dropped.

  ### Root Cause
  Reconnection loop lacked an exponential backoff buffer, exhausting socket descriptors.

  ### How This Was Tested
  - Added unit test `TestClient_ReconnectWithBackoff` simulating network dropouts.
  - Ran integration benchmark under 5,000 req/sec with simulated packet loss.

  Closes #284
  ```

## Common mistakes & pitfalls
- Leaving the default PR title (e.g., 'Update file.go') and submitting an empty description.
- Force-pushing messy rebases while reviewers are actively reading the code diff.
- Arguing defensively with maintainers over project stylistic conventions.

## Verification checklist
- [ ] Self-reviewed entire diff on GitHub before notifying reviewers.
- [ ] Included 'Closes #XYZ' linking syntax to associate related issue.
- [ ] All automated CI checks (linters, unit tests, coverage) are passing green.

## Related skills
- contributing-to-major-open-source-projects
- open-source-issue-triage-good-first-issues
- git-commit-hygiene-meaningful-commit-history
- github-profile-readme-optimization-showcase
