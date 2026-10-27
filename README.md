# 🚀 Universal AI Agent Skills Library (980 Skills + Native Rust MCP Suite)

[![Total Skills](https://img.shields.io/badge/Total%20Skills-980%20Verified-blue.svg?style=for-the-badge)](#)
[![Compliance](https://img.shields.io/badge/Compliance-100%25%20Quality%20Passed-brightgreen.svg?style=for-the-badge)](#)
[![MCP Suite](https://img.shields.io/badge/MCP%20Suite-100%25%20Native%20Rust-orange.svg?style=for-the-badge)](#)
[![Assistants](https://img.shields.io/badge/Supports-Antigravity%20%7C%20Claude%20Code%20%7C%20Hermes%20%7C%20Cursor%20%7C%20Windsurf%20%7C%20Cline-purple.svg?style=for-the-badge)](#)
[![Platforms](https://img.shields.io/badge/Platform-Windows%20%7C%20Linux%20%7C%20macOS-blueviolet.svg?style=for-the-badge)](#)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)](LICENSE)

> The definitive, production-grade library of **980 operational Agent Skills** and **Native Rust MCP Servers** designed for **Google Antigravity**, **Claude Code**, **Hermes AI**, **Cursor**, **Windsurf**, and **Cline / Roo Code**. Every skill features standardized operational workflows, concrete code snippets, verified commands, pitfall mitigations, and checklists.

---

## 📑 Table of Contents
- [🌟 Overview](#-overview)
- [🦀 Native Rust MCP Suite](#-native-rust-mcp-suite-zero-pythonnode)
- [📦 Library Composition (980 Skills)](#-library-composition-980-skills)
- [⚡ Quick Start & Installation](#-quick-start--installation)
  - [Native Rust CLI (Recommended)](#1-native-rust-cli-recommended)
  - [Windows PowerShell](#2-windows-powershell)
  - [Linux & macOS Bash](#3-linux--macos-bash)
- [🤖 Assistant Configurations](#-assistant-configurations)
  - [Google Antigravity](#1-google-antigravity)
  - [Claude Code CLI](#2-claude-code-cli)
  - [Hermes AI & Hermes Souls](#3-hermes-ai--hermes-souls)
  - [Cursor & Windsurf](#4-cursor--windsurf)
  - [Cline & Roo Code](#5-cline--roo-code)
- [🔌 MCP Client Configuration](#-mcp-client-configuration)
- [🔍 Skill Search & Discovery](#-skill-search--discovery)
- [📄 License](#-license)

---

## 🌟 Overview

Modern LLMs perform 10x better when provided with structured, deterministic operational SOPs (Standard Operating Procedures) rather than vague instructions. This library provides **980 standardized markdown skills** (`SKILL.md`) structured into 7 immutable operational sections:
1. `## When to use` (Precise trigger scenarios)
2. `## Core principles` (Fundamental mental models & invariants)
3. `## Step-by-step workflow` (Numbered, reproducible sequence)
4. `## Specifics & examples` (Real commands, code blocks, or dialogue)
5. `## Common mistakes & pitfalls` (Edge cases to proactively avoid)
6. `## Verification checklist` (Definition of Done)
7. `## Related skills` (Cross-domain routing links)

---

## 🦀 Native Rust MCP Suite (Zero Python/Node)

All custom MCP servers in this ecosystem are compiled into standalone, blazing-fast native **Rust executables** (`.exe` on Windows, native ELF binary on Linux/macOS). Zero Python daemons, zero background sockets, and zero Node/npx cold-start overhead:

| Server | Binary Size | Tech Stack | Capabilities |
| :--- | :--- | :--- | :--- |
| **`blender-rust-mcp`** | **1.12 MB** | Headless CLI Streaming | Headless 3D scene inspection, primitive creation, BSDF materials, camera/light setup, frame rendering, and model export |
| **`obsidian-rust-mcp`** | **791 KB** | Parallel FS Walker | Indexes 5,000+ notes in <50ms. Full-text search, YAML frontmatter parsing, note creation/appending, and `#tag` analytics |
| **`github-rust-mcp`** | **4.35 MB** | `reqwest` + `rustls` | 21 GitHub tools: repository creation/forks, file CRUD with auto-SHA resolution, branch/commit history, issues, PRs, and searches |
| **`rust-mcp`** | **5.96 MB** | Tokio Process Pipeline | Complete Cargo developer lifecycle: `cargo check`, `clippy`, `test`, `build`, `add`, `tree`, `fmt`, `metadata`, and crates.io API |

---

## 📦 Library Composition (980 Skills)

```
========================================================================================
Category                       | Skills Count | Primary Focus Areas
========================================================================================
1. CORE TECH                   | 410 Skills   | Frontend, Backend, Systems, Cloud, AI/ML, DevOps
2. MCP (MODEL CONTEXT PROTOCOL)|  69 Skills   | Protocol Specs, Transports, 4 Native Rust MCPs, Reference Servers
3. OBSIDIAN & PKM              |  30 Skills   | PARA, Zettelkasten, Dataview/JS, Agent Ingestion
4. CYBERSECURITY               | 190 Skills   | Pentest, SOC/DFIR, AppSec (OWASP), Cloud, CTFs
5. ENGINEERING CRAFT           |  95 Skills   | Debugging (git-bisect), Refactoring, Prompt Eng
6. PEOPLE & AGENT              |  85 Skills   | Emotional Intelligence, Epistemic Humility, Ethics
7. CAREER                      |  50 Skills   | DSA Patterns, System Design, STAR, Resumes
8. PPTX PRESENTATION DESIGN    |  51 Skills   | Visual Hierarchy, Palettes, python-pptx, QA
========================================================================================
TOTAL VERIFIED SKILLS          | 980 Skills   | 100% Quality Audited & Operational
========================================================================================
```

---

## ⚡ Quick Start & Installation

### 1. Native Rust CLI (Recommended)

The library includes an ultra-fast, standalone **Native Rust CLI** with zero Python dependencies:

```bash
# Build the release binary
cargo build --release

# Install all skills for Antigravity, Claude Code, and Hermes automatically
cargo run --release -- install --target all

# Or install for a specific assistant:
cargo run --release -- install --target antigravity
cargo run --release -- install --target claude
cargo run --release -- install --target hermes
cargo run --release -- install --target cursor
cargo run --release -- install --target workspace

# Sync all skills into any custom directory
cargo run --release -- sync /path/to/my-agent-workspace/skills

# Audit and verify 100% integrity of all 980 skills
cargo run --release -- verify
```

### 2. Windows PowerShell

Open PowerShell and execute:

```powershell
# Install all skills globally
.\install.ps1 -Target all -Mode copy

# Or install for a specific assistant
.\install.ps1 -Target claude
.\install.ps1 -Target antigravity
.\install.ps1 -Target workspace
```

### 3. Linux & macOS Bash

```bash
chmod +x install.sh

# Install globally for all detected assistants
./install.sh all copy

# Or install for Claude Code only
./install.sh claude copy
```

---

## 🤖 Assistant Configurations

### 1. Google Antigravity
The repository is natively structured for Google Antigravity. To load all skills:
- Run `cargo run --release -- install --target antigravity` (or copy `skills/` into your active workspace at `.agent/skills/`).
- Antigravity automatically indexes all skill trigger descriptions.

### 2. Claude Code CLI
Claude Code reads root `CLAUDE.md`. When working with Claude Code:
- Run `cargo run --release -- install --target claude`.
- Copies `CLAUDE.md` to `~/.claude/CLAUDE.md` and links all skills to `~/.claude/skills/`.

### 3. Hermes AI & Hermes Souls
- Run `cargo run --release -- install --target hermes`.
- Reference skills inside Hermes agent prompts or copy `configs/hermes/hermes-agent.json` into your Hermes configuration.

### 4. Cursor & Windsurf
- Copy `.cursorrules` and `.windsurfrules` into your workspace root.
- The AI editor will automatically cite and execute matching skills.

### 5. Cline & Roo Code
- Copy `.clinerules` into your workspace root.

---

## 🔌 MCP Client Configuration

To register the **Native Rust MCP Suite** in your client configuration (`mcp_config.json`), use standard path resolution or place compiled binaries in your system `PATH`:

```json
{
  "mcpServers": {
    "github-mcp-server": {
      "command": "github-rust-mcp",
      "args": [],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "${GITHUB_PERSONAL_ACCESS_TOKEN}"
      }
    },
    "obsidian": {
      "command": "obsidian-rust-mcp",
      "args": [],
      "env": {
        "OBSIDIAN_VAULT_PATH": "${OBSIDIAN_VAULT_PATH}"
      }
    },
    "rust-mcp": {
      "command": "rust-mcp",
      "args": []
    },
    "blender-rust-mcp": {
      "command": "blender-rust-mcp",
      "args": []
    }
  }
}
```

> **Note**: If binaries are not in your system `PATH`, specify the full binary path (e.g. `C:\\Tools\\mcp\\github-rust-mcp.exe` on Windows or `/usr/local/bin/github-rust-mcp` on Linux).

---

## 🔍 Skill Search & Discovery

Search across all 980 skills with instant sub-millisecond ranking using the Rust CLI:

```bash
# Search by keyword or concept
cargo run --release -- search "sql injection"
cargo run --release -- search "two pointers"
cargo run --release -- search "blender automation"

# Filter by category
cargo run --release -- list -c "Cybersecurity"
cargo run --release -- list -c "Core Tech"

# Display full text and instructions for any skill
cargo run --release -- show dsa-arrays-hashing-two-pointers-sliding-window
cargo run --release -- show blender-3d-automation
cargo run --release -- show obsidian-rust-mcp
cargo run --release -- show github-rust-mcp
```

Full table of contents available in [INDEX.md](INDEX.md) and machine-readable metadata in [skills-manifest.json](skills-manifest.json).

---

## 📄 License

Distributed under the [MIT License](LICENSE).
