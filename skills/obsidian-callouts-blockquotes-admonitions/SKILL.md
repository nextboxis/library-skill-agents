---
name: obsidian-callouts-blockquotes-admonitions
description: Use this skill when styling notes with foldable Obsidian callout blocks (> [!NOTE], [!WARNING], [!TIP]) and custom titles.
---
# Obsidian Callouts & Visual Admonitions

## When to use
Use this skill when you need to styling notes with foldable Obsidian callout blocks (> [!NOTE], [!WARNING], [!TIP]) and custom titles.

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
> [!NOTE] Background Context
> This architecture decision record was approved following the Q3 platform reliability audit.

> [!WARNING] Production Constraint
> Never execute schema modifications during peak transaction windows without explicit DBA sign-off.

> [!TIP] Performance Optimization
> Use `EXPLAIN (ANALYZE, BUFFERS)` to reveal exact buffer hits and memory consumption.

> [!CAUTION]- Foldable High-Risk Warning (Collapsed by Default)
> Modifying iptables directly without a fallback timer can lock you out of remote SSH sessions.
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
