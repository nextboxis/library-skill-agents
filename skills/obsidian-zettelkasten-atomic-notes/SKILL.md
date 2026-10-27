---
name: obsidian-zettelkasten-atomic-notes
description: Use this skill when creating atomic, densely interconnected concept notes following classic Niklas Luhmann Zettelkasten slip-box principles.
---
# Obsidian Zettelkasten: Atomic Concept Notes

## When to use
Use this skill when you need to creating atomic, densely interconnected concept notes following classic Niklas Luhmann Zettelkasten slip-box principles.

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
---
id: 202610262100
title: Single Responsibility Principle
type: permanent-note
tags:
  - concept/architecture
  - principles/solid
---
# Single Responsibility Principle (SRP)

A software module or class should have one, and only one, reason to change. 

## Context & Implications
When a module encompasses multiple disparate responsibilities, changes to one business domain risk introducing regressions into unrelated paths.

## Interconnections
- Complementary to [[Open-Closed Principle]]
- Directly informs [[Microservices Decomposition Strategies]]
- Contrasts with [[God Object Anti-Pattern]]
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
