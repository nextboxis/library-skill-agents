---
name: obsidian-canvas-visual-ideation-mindmaps
description: Use this skill when designing system architectures, visual brainstorms, relationship graphs, and concept diagrams on infinite 2D Canvas boards.
---
# Obsidian Canvas: Visual Mindmaps & Architecture

## When to use
Use this skill when you need to designing system architectures, visual brainstorms, relationship graphs, and concept diagrams on infinite 2D Canvas boards.

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
```json
// Internal .canvas JSON structure representing nodes and edges
{
  "nodes": [
    {
      "id": "node-auth-service",
      "type": "text",
      "text": "### Auth Microservice\n- Issues JWTs\n- Evaluates RBAC",
      "x": 100,
      "y": 100,
      "width": 250,
      "height": 150
    },
    {
      "id": "node-db",
      "type": "file",
      "file": "02_Areas/Databases/PostgreSQL.md",
      "x": 450,
      "y": 100,
      "width": 300,
      "height": 200
    }
  ],
  "edges": [
    { "id": "e1", "fromNode": "node-auth-service", "toNode": "node-db", "label": "queries credentials" }
  ]
}
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
