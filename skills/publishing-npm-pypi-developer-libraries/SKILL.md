---
name: publishing-npm-pypi-developer-libraries
description: Use this skill when packaging, testing, versioning, and publishing open-source developer libraries to npm and PyPI registries.
---
# Publishing Developer Libraries to npm & PyPI

## When to use
Use this skill when releasing a reusable utility, SDK, or CLI tool to public package registries to establish developer credibility and tooling authority.

## Core principles
- **Semantic Versioning (SemVer 2.0.0)**: Strictly adhere to `MAJOR.MINOR.PATCH`. Increment MAJOR for breaking API changes, MINOR for backwards-compatible features, PATCH for bug fixes.
- **Dual Module Support & Type Definitions**: For npm libraries, supply both CommonJS (`cjs`) and ESM (`esm`) builds alongside bundled TypeScript declaration files (`.d.ts`).
- **Automated CI Release Pipeline**: Never publish packages manually from a local laptop. Use GitHub Actions with OIDC trusted publishing (PyPI Trusted Publishers / npm provenance) to guarantee supply chain integrity.
- **Zero-Surprise Documentation**: Provide a copy-pasteable installation snippet, a 5-line minimal working example, and complete API type references in the README.

## Step-by-step workflow
1. Configure build tool (e.g., `tsup` for TypeScript/npm, `hatch` or `flit` for Python/PyPI).
2. Define clean entry points in `package.json` (`exports`, `main`, `module`, `types`) or `pyproject.toml`.
3. Run automated tests, linters, and type checkers across supported runtime versions.
4. Configure OIDC Trusted Publishing on PyPI / npm token with 2FA.
5. Create a GitHub Release tag (e.g., `v1.2.0`) triggering the publication workflow.
6. Verify successful registry download and run a test consumer script in a clean virtual environment.

## Specifics & examples
- **Modern `package.json` Exports Map**:
  ```json
  {
    "name": "fast-crdt-sync",
    "version": "1.0.0",
    "type": "module",
    "exports": {
      ".": {
        "types": "./dist/index.d.ts",
        "import": "./dist/index.js",
        "require": "./dist/index.cjs"
      }
    }
  }
  ```

## Common mistakes & pitfalls
- Publishing API keys, `.env` files, or test fixtures due to a missing `.npmignore` or `.gitignore`.
- Breaking downstream users by releasing breaking changes under a PATCH or MINOR version.
- Manually publishing from dirty local Git working directories.

## Verification checklist
- [ ] Package contains valid TypeScript definitions (`.d.ts`) or Python type stubs.
- [ ] Automated CI workflow uses OIDC trusted publishing with provenance.
- [ ] README contains copy-pasteable installation and 5-line quickstart example.

## Related skills
- license-contributing-guide-code-of-conduct
- open-source-repo-maintenance-governance
- git-commit-hygiene-meaningful-commit-history
- technical-project-case-study-showcase
