---
name: obsidian-search-operators-regex-filters
description: Use this skill when locating specific note content using line:, block:, tag:, file:, section:, and regex: search operators.
---
# Obsidian Search Operators & Regex Queries

## When to use
Use this skill when you need to locating specific note content using line:, block:, tag:, file:, section:, and regex: search operators.

## Prerequisites
- Obsidian installed (current stable version for desktop or mobile).
- Working knowledge of Markdown syntax and local file management.

## Step-by-step workflow
1. **Understand structural conventions**: Review vault conventions, frontmatter schemas, or community plugin prerequisites.
2. **Configure settings & templates**: Set up necessary folder paths, template variables, or plugin options.
3. **Draft content / script**: Write structured Markdown, Dataview queries, or plugin automation logic.
4. **Test interaction & rendering**: Preview note rendering in Reading View, test graph navigation, or trigger commands.
5. **Enforce vault security**: Audit links, verify attachment locations, and ensure no secrets or sensitive credentials are recorded.

## Commands / code examples
```markdown
# Advanced Search Queries in Obsidian

Find notes in a specific folder containing unchecked tasks:
path:01_Projects has:task -task-todo:""

Search for high-severity vulnerability findings in sections:
section:("## Remediation" /CVSS: [8-9]\.[0-9]/)

Find notes modified in the past 7 days:
file:(mtime: 2026-10-20..2026-10-27)

Search exact code blocks matching Python imports:
block:(/import asyncio/)
```

## Common mistakes & pitfalls
- Installing unvetted community plugins without reviewing source code and network permissions.
- Storing plaintext credentials, API keys, or sensitive passwords inside Markdown notes.
- Creating brittle links by hardcoding absolute OS paths instead of using Obsidian `[[wikilinks]]`.

## Verification checklist
- [ ] Notes utilize valid Obsidian Markdown syntax and standard properties.
- [ ] No passwords, API keys, or private secrets exist inside the note files.
- [ ] Community plugins are documented and audited for permission boundaries.
- [ ] Agent integrations are verified on a scratch or copy vault prior to production use.

## Related skills
- obsidian-vault-structure-para-method
- obsidian-markdown-syntax-wikilinks-embeds
- obsidian-vault-security-privacy-hardening
- mcp-server-obsidian
