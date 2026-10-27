---
name: mcp-primitives-tools-resources-prompts
description: Use this skill when modeling agent capabilities across the three core MCP primitives: executable tools, readable resources, and dynamic prompts.
---
# MCP Primitives: Tools, Resources & Prompts

## When to use
Use this skill when you need to modeling agent capabilities across the three core MCP primitives: executable tools, readable resources, and dynamic prompts.

## Prerequisites
- Node.js 18+ or Python 3.10+ runtime.
- Deep familiarity with Model Context Protocol specification and JSON-RPC 2.0 messages.

## Step-by-step workflow
1. **Analyze integration topology**: Identify client host application requirements, transport mechanisms, and capability flags.
2. **Implement protocol contracts**: Define standardized schemas, tool definitions, or transport adapters.
3. **Handle message serialization**: Manage JSON-RPC 2.0 request/response parsing, errors, and cancellation signals.
4. **Enforce security controls**: Validate input arguments, sanitize outputs, and apply least-privilege scoping.
5. **Verify with test client**: Test communication flows using MCP Inspector or client configuration files.

## Commands / code examples
```ts
// Exposing the three primitives in TypeScript MCP SDK
server.setRequestHandler(ListToolsRequestSchema, async () => ({
  tools: [{ name: "calculate_tax", description: "Compute regional sales tax", inputSchema: { type: "object" } }]
}));

server.setRequestHandler(ListResourcesRequestSchema, async () => ({
  resources: [{ uri: "system://logs/today", name: "System Logs", mimeType: "text/plain" }]
}));

server.setRequestHandler(ListPromptsRequestSchema, async () => ({
  prompts: [{ name: "code_review", description: "Standard PR review prompt template" }]
}));
```

## Common mistakes & pitfalls
- Exposing sensitive environment variables or private filesystem directories through overly permissive tool definitions.
- Forgetting to handle request cancellation tokens, leaving orphaned background tasks running.
- Failing to catch unhandled promise rejections inside tool handlers, crashing the stdio process.

## Verification checklist
- [ ] Schema validation rejects malformed requests deterministically.
- [ ] Error responses return standard JSON-RPC 2.0 error codes and descriptions.
- [ ] Input parameters enforce strict bounds and sanitization.
- [ ] Server operates cleanly over target transport without unhandled exceptions.

## Related skills
- mcp-primitives-tools-resources-prompts
- mcp-security-prompt-injection-defense
- mcp-security-least-privilege-scoping
- mcp-inspector-testing-and-debugging
