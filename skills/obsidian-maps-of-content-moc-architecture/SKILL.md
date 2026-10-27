---
name: obsidian-maps-of-content-moc-architecture
description: Use this skill when building thematic Maps of Content (MOCs) to curate hub notes, navigate vaults, and prevent link rot.
---
# Obsidian Maps of Content (MOC) Architecture

## When to use
Use this skill when you need to building thematic Maps of Content (MOCs) to curate hub notes, navigate vaults, and prevent link rot.

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
type: moc
topic: distributed-systems
tags:
  - hub/systems
---
# Distributed Systems Map of Content (MOC)

> Curated navigation hub for distributed systems architecture, consensus, and fault tolerance.

## Core Fundamentals
- [[CAP and PACELC Theorems]] — Fundamental consistency vs availability trade-offs
- [[Consistency Models: Eventual to Linearizable]] — Classification of guarantees

## Consensus & Coordination
- [[Raft Distributed Consensus]] — Leader election and log replication
- [[Paxos Consensus Protocol]] — Classical distributed agreement

## Architectural Patterns
- [[Saga Pattern for Distributed Transactions]] — Eventual consistency orchestration
- [[Event-Driven Architecture with Kafka]] — Streaming event log backbones
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
