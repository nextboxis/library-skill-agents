---
name: obsidian-local-rest-api-plugin-integration
description: Use this skill when connecting external automation scripts and AI agents to Obsidian securely via the Local REST API community plugin.
---
# Obsidian Local REST API Plugin Integration

## When to use
Use this skill when you need to connecting external automation scripts and AI agents to Obsidian securely via the Local REST API community plugin.

## Prerequisites
- Obsidian installed (current stable version for desktop or mobile).
- Working knowledge of Markdown syntax and local file management.
> [!CAUTION] Security & Safety Invariants for Agent Access
> - **Scratch Vault Testing**: Always test agent integrations against a disposable scratch vault or backup copy before granting access to your primary knowledge base.
> - **No Secrets in Notes**: Never store passwords, API keys, private keys, or sensitive credentials inside Markdown notes.
> - **Network Isolation**: Ensure local REST APIs bind exclusively to `127.0.0.1` and never expose ports across public or local LANs.
> - **Log Redaction**: Verify that agent logs and execution traces do not leak private personal notes into shared diagnostic records.


## Step-by-step workflow
1. **Understand structural conventions**: Review vault conventions, frontmatter schemas, or community plugin prerequisites.
2. **Configure settings & templates**: Set up necessary folder paths, template variables, or plugin options.
3. **Draft content / script**: Write structured Markdown, Dataview queries, or plugin automation logic.
4. **Test interaction & rendering**: Preview note rendering in Reading View, test graph navigation, or trigger commands.
5. **Enforce vault security**: Audit links, verify attachment locations, and ensure no secrets or sensitive credentials are recorded.

## Commands / code examples
```bash
# Query an Obsidian note via Local REST API (HTTPS localhost)
# WARNING: Test on a scratch or copy vault first. Never expose API key to public network.
curl -k -H "Authorization: Bearer <YOUR_LOCAL_API_KEY>"      -H "Accept: application/vnd.olra+json"      "https://127.0.0.1:27124/vault/01_Projects/Sprint-Log.md"
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
