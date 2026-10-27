---
name: obsidian-dataviewjs-advanced-dashboards
description: Use this skill when rendering complex analytical dashboards, charts, and custom interactive metrics tables in Obsidian via DataviewJS.
---
# Obsidian DataviewJS Advanced Dashboards

## When to use
Use this skill when you need to rendering complex analytical dashboards, charts, and custom interactive metrics tables in Obsidian via DataviewJS.

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
```javascript
// Community Plugin: Dataview (DataviewJS code block)
```dataviewjs
const pages = dv.pages('#service and -"Templates"');
const grouped = {};

for (let p of pages) {
    const tier = p.tier || "Untiered";
    grouped[tier] = (grouped[tier] || 0) + 1;
}

dv.header(3, "Microservice Tier Distribution");
dv.table(
    ["Service Tier", "Count"],
    Object.entries(grouped).map(([tier, count]) => [tier, count])
);
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
