---
name: obsidian-graph-view-backlinks-navigation
description: Use this skill when analyzing vault connectivity, discovering orphan notes, evaluating link density, and navigating concept clusters via Graph View.
---
# Obsidian Graph View & Backlinks Navigation

## When to use
Use this skill when you need to analyzing vault connectivity, discovering orphan notes, evaluating link density, and navigating concept clusters via Graph View.

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
# Navigating Graph View Filters

1. Open Local Graph: View 1-hop and 2-hop connections around active note.
2. Filter Search Query: `path:01_Projects -tag:#archive`
3. Group Color Coding:
   - `tag:#security` -> Red (#ef4444)
   - `tag:#infrastructure` -> Blue (#3b82f6)
   - `tag:#concept` -> Green (#10b981)
4. Identify Orphans: Run search `-has:link -has:backlink` to surface disconnected thoughts.
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
