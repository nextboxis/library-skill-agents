---
name: git-commit-hygiene-meaningful-commit-history
description: Use this skill when crafting atomic Git commits, conventional commit messages, and clean linear Git branch histories.
---
# Git Commit Hygiene & Meaningful Commit History

## When to use
Use this skill when preparing pull requests, collaborating on production codebases, or publishing public repositories to ensure maintainable change logs.

## Core principles
- **Atomic Commits**: Each commit should do exactly one thing well (one bug fix, one feature, or one refactor). Never combine format changes with functional logic.
- **Conventional Commits Specification**: Standard prefixes (`feat:`, `fix:`, `refactor:`, `docs:`, `test:`, `chore:`) make histories machine-readable and generate automatic changelogs.
- **Imperative Mood in Subject Lines**: Write 'fix: handle null pointer in auth' instead of 'fixed' or 'fixes'. It completes the sentence: 'If applied, this commit will...'
- **The 'Why' in Commit Bodies**: The code diff shows *what* changed; the commit body exists to explain *why* the change was necessary and what alternatives were rejected.

## Step-by-step workflow
1. Stage changes selectively using `git add -p` (patch mode) to split unrelated edits.
2. Verify staged diff using `git diff --cached` before writing the commit.
3. Structure message: `<type>(<scope>): <short summary under 50 chars>`.
4. Add blank line followed by body explaining context, ticket references, and edge cases.
5. Use interactive rebase (`git rebase -i HEAD~N`) to squash 'fix typo' or 'wip' commits before submitting PR.
6. Keep main branches linear with rebase workflows where team norms dictate.

## Specifics & examples
- **Conventional Commit Format**:
  ```text
  fix(auth): prevent session race condition on token refresh

  Under heavy concurrent requests, multiple threads could attempt to
  refresh an expiring JWT simultaneously, invalidating valid refresh tokens.
  This introduces a mutex lock around the refresh exchange workflow.

  Closes #412
  ```
- **Useful Git Aliases**:
  `git config --global alias.ci 'commit -v'` (shows diff while writing commit message).
  `git config --global alias.unstage 'reset HEAD --'`.

## Common mistakes & pitfalls
- Submitting commits with messages like 'changes', 'fix', or 'update'.
- Bundling 1,500 lines of unrelated changes into a single mega-commit.
- Rewriting public shared history (`push --force` on main) without team consensus.

## Verification checklist
- [ ] Subject line is under 50 characters and written in imperative mood.
- [ ] Commits are atomic and cleanly separate refactoring from feature logic.
- [ ] Ephemeral 'WIP' and 'typo' commits are squashed before public PR review.

## Related skills
- open-source-pull-request-authoring-standards
- github-profile-readme-optimization-showcase
- open-source-repo-maintenance-governance
- technical-project-case-study-showcase
