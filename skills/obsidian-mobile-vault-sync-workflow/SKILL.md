---
name: obsidian-mobile-vault-sync-workflow
description: Use this skill when configuring and optimizing Obsidian vaults on iOS and Android devices via Obsidian Sync, Working Copy, or Syncthing.
---
# Obsidian Mobile Vault Setup & Synchronization

## When to use
Use this skill when you need to configuring and optimizing Obsidian vaults on iOS and Android devices via Obsidian Sync, Working Copy, or Syncthing.

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
# Mobile Vault Optimization Guidelines

1. Community Plugin Audit:
   - Disable heavy desktop-only plugins on mobile to improve startup time.
2. Sync Options:
   - iOS: Utilize official Obsidian Sync or iCloud Drive.
   - Android: Utilize official Obsidian Sync or Syncthing with local storage.
3. Media Handling:
   - Configure image downscaling on mobile capture to preserve device storage.
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
