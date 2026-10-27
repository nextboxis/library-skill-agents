---
name: github-rust-mcp
description: Ultra-fast native Rust GitHub MCP server for managing repositories, commits, branches, issues, and pull requests with zero Node/Python dependencies.
---

# GitHub Rust Native MCP Server

High-performance, memory-safe Model Context Protocol (MCP) server written entirely in Rust. Direct integration with GitHub's REST v3 API via asynchronous HTTP streaming (`reqwest` + `tokio`).

## Key Capabilities
- **Repository Operations**: Create repositories, fork repositories, search repositories, create branches, and list commits.
- **File Management**: `get_file_contents` with automatic Base64 decoding, `create_or_update_file` with automatic blob SHA discovery, and `push_files` for multi-file batch operations.
- **Issue Tracking**: `list_issues`, `get_issue`, `create_issue`, `update_issue`, and `add_issue_comment`.
- **Pull Requests**: `list_pull_requests`, `get_pull_request`, `create_pull_request`, `merge_pull_request`, and `get_pull_request_files`.
- **Search Capabilities**: `search_code`, `search_issues`, `search_repositories`, and `search_users`.

## Binary Path & Configuration
Add to `mcp_config.json`:
```json
{
  "mcpServers": {
    "github-mcp-server": {
      "command": "github-rust-mcp",
      "args": [],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "<YOUR_TOKEN>"
      }
    }
  }
}
```

## Performance & Security
- **Sub-millisecond startup**: Native PE binary (`.exe`), zero Node.js VM startup delay.
- **Zero Python/Node dependency**: Completely compiled native binary with embedded TLS (`rustls`).
- **Memory safety**: Compiled under Rust 2024 edition with strict `-D warnings` clippy verification.
