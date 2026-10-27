---
name: rust-mcp-toolchain
description: Use this skill when compiling, checking, testing, linting, or managing Rust projects using the native rust-mcp server tools and Cargo toolchain.
---

# Rust MCP Toolchain & Compilation Driver

## When to use
Use this skill whenever working on Rust projects to:
- Check compiler diagnostics, syntax, and borrow checker errors (`cargo_check`).
- Enforce idiomatic Rust style, performance, and safety lints (`cargo_clippy`).
- Run and diagnose unit/integration tests (`cargo_test`).
- Build release or debug binaries and inspect output artifacts (`cargo_build`).
- Inspect crate dependencies and detect version conflicts or duplicates (`cargo_tree`).
- Search and query package details, documentation, and version histories on crates.io (`crates_search`, `crates_info`).
- Resolve rustc error codes (e.g. `E0382`, `E0502`, `E0597`) with official compiler reference guides (`rustc_explain`).
- Enforce rustfmt formatting standards across the workspace (`cargo_fmt`).

## Core Principles

1. **Verify Before Building (`cargo_check` first)**:
   - Always run `cargo_check` before `cargo_build`. `cargo check` bypasses code generation and LLVM optimization, delivering compile feedback 5x–10x faster.
2. **Treat Warnings as Future Bugs**:
   - Clippy warnings and compiler unused/dead-code warnings often precede runtime logic flaws or borrow checker dead-ends. Keep builds warning-free.
3. **Understand Borrow Checker Errors with `rustc_explain`**:
   - When encountering borrow conflicts, ownership transfers, or lifetime mismatches, invoke `rustc_explain` with the specific error code to understand the language guarantee before applying lifetime workarounds.
4. **Targeted Testing**:
   - For fast feedback during refactoring, pass `test_filter` to run only the relevant module or test case rather than the entire test suite.

## Tool Invocation Reference

### 1. Diagnostic Checks
```json
// tools/call: cargo_check
{
  "name": "cargo_check",
  "arguments": {
    "path": "C:/Projects/my-rust-app",
    "all_targets": true,
    "release": false
  }
}
```

### 2. Static Analysis & Linting
```json
// tools/call: cargo_clippy
{
  "name": "cargo_clippy",
  "arguments": {
    "path": "C:/Projects/my-rust-app",
    "fix": false
  }
}
```

### 3. Crate Search & Discovery
```json
// tools/call: crates_search
{
  "name": "crates_search",
  "arguments": {
    "query": "tokio",
    "limit": 5
  }
}
```

### 4. Compiler Error Deep-Dive
```json
// tools/call: rustc_explain
{
  "name": "rustc_explain",
  "arguments": {
    "error_code": "E0382"
  }
}
```

### 5. Dependency Addition
```json
// tools/call: cargo_add
{
  "name": "cargo_add",
  "arguments": {
    "path": "C:/Projects/my-rust-app",
    "crate_name": "serde",
    "features": ["derive"]
  }
}
```

## Step-by-Step Workflow

1. **Initialize / Inspect Workspace**:
   - Call `cargo_metadata` to identify workspace members, targets, and dependencies.
2. **Draft or Modify Rust Code**:
   - Apply edits ensuring proper ownership, trait bounds, and error handling with `Result<T, E>`.
3. **Run Immediate Compilation Check**:
   - Call `cargo_check`. If any error codes appear (`E0xxx`), call `rustc_explain` to review proper fixes.
4. **Execute Tests**:
   - Call `cargo_test` with `test_filter` to confirm functionality.
5. **Run Clippy & Formatter**:
   - Call `cargo_clippy` to catch unidiomatic patterns and `cargo_fmt` to format the code.
6. **Compile Release Binary**:
   - Call `cargo_build` with `release: true` to generate the final optimized executable.

## Review Checklist
- [ ] `cargo_check` returns 0 errors and 0 warnings.
- [ ] `cargo_clippy` reports "Clippy Clean".
- [ ] All unit and integration tests pass via `cargo_test`.
- [ ] Dependencies added via `cargo_add` specify necessary minimal feature flags.
- [ ] `cargo_fmt` has verified code formatting.

## Related Skills
- `rust-ownership-borrow-checker`
- `rust-axum-tokio`
- `rust-concurrency-lifetimes`
- `rust-macros-metaprogramming`
