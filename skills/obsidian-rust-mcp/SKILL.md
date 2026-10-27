---
name: obsidian-rust-mcp
description: Blazing-fast native Rust Obsidian vault MCP server for sub-millisecond search, note reading, note creation, tags, and stats across large vaults.
---

# Obsidian Rust Native MCP Server

Ultra-fast, native compiled Rust Model Context Protocol (MCP) server for Obsidian vaults. Designed for instant indexing and zero-latency interaction with local markdown vaults of 5,000+ notes.

## Key Capabilities
- **`obsidian_search_notes`**: High-speed full-text and title keyword search across all vault markdown files.
- **`obsidian_read_note`**: Reads complete markdown content and parses YAML frontmatter properties.
- **`obsidian_create_note`**: Creates new notes with frontmatter and auto-creates subfolder hierarchies.
- **`obsidian_append_note`**: Appends thoughts, bookmarks, or daily reflections to existing notes.
- **`obsidian_list_notes`**: Lists notes with optional subfolder filtering.
- **`obsidian_list_tags`**: Scans and aggregates all hashtags across the vault with frequency ranking.
- **`obsidian_get_vault_stats`**: Retrieves vault analytics (note counts, attachments, directory sizes).

## Binary Configuration
Add to `mcp_config.json`:
```json
{
  "mcpServers": {
    "obsidian": {
      "command": "obsidian-rust-mcp",
      "args": [],
      "env": {
        "OBSIDIAN_VAULT_PATH": "<PATH_TO_YOUR_OBSIDIAN_VAULT>"
      }
    }
  }
}
```

## Performance Benchmark
- **Startup time**: < 5ms.
- **Full vault scan (5,330+ markdown notes)**: Under 50ms.
- **Memory footprint**: < 15 MB RSS.
- **Runtime**: Native PE `.exe`, zero Node.js / Python overhead.
