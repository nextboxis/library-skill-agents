---
name: obsidian-css-snippets-theme-customization
description: Use this skill when customizing vault aesthetics, typography, callouts, and print layouts using modular CSS snippets in .obsidian/snippets/.
---
# Obsidian CSS Snippets & Visual Customization

## When to use
Use this skill when you need to customizing vault aesthetics, typography, callouts, and print layouts using modular CSS snippets in .obsidian/snippets/.

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
```css
/* .obsidian/snippets/custom-callouts.css */
.callout[data-callout="security-finding"] {
  --callout-color: 239, 68, 68;
  --callout-icon: shield-alert;
  background-color: rgba(239, 68, 68, 0.08);
  border-left: 4px solid rgb(239, 68, 68);
}

.callout[data-callout="security-finding"] .callout-title {
  color: rgb(239, 68, 68);
  font-weight: 600;
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
