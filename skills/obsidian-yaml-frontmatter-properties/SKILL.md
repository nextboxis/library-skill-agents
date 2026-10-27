---
name: obsidian-yaml-frontmatter-properties
description: Use this skill when defining structured metadata, typed properties, tags, dates, and aliases in Obsidian note frontmatter.
---
# Obsidian YAML Frontmatter & Properties

## When to use
Use this skill when you need to defining structured metadata, typed properties, tags, dates, and aliases in Obsidian note frontmatter.

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
```yaml
---
title: "Distributed Tracing Architecture"
aliases:
  - "OpenTelemetry Tracing Guide"
  - "OTel Spans SOP"
type: technical-sop
status: published
created: 2026-10-26T20:30:00
tags:
  - devops/observability
  - standard/production
assigned_to: "Platform Reliability Team"
review_interval_days: 90
---
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
