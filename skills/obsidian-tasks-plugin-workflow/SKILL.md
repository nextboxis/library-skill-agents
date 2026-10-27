---
name: obsidian-tasks-plugin-workflow
description: Use this skill when tracking, filtering, scheduling, and querying actionable tasks with due dates and recurrence using the Tasks community plugin.
---
# Obsidian Tasks Plugin Workflow

## When to use
Use this skill when you need to tracking, filtering, scheduling, and querying actionable tasks with due dates and recurrence using the Tasks community plugin.

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
<!-- Community Plugin: Tasks -->
# Sprint Engineering Task Board

## Active Tasks
- [ ] Audit Linux firewall rules 📅 2026-10-28 ⏳ 2026-10-27 🔺
- [ ] Rotate AWS RDS administrative credentials 🔁 every 90 days 📅 2026-11-01
- [x] Publish internal postmortem for outage INC-20261024 ✅ 2026-10-26

## Filtered Query
```tasks
not done
due before in 3 days
sort by priority
```
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
