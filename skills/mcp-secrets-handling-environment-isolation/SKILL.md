---
name: mcp-secrets-handling-environment-isolation
description: Use this skill when passing API tokens and credentials to MCP servers securely without leaking secrets into command histories or Git.
---
# MCP Secrets Handling & Environment Isolation

## When to use
Use this skill when you need to passing API tokens and credentials to MCP servers securely without leaking secrets into command histories or Git.

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
```json
// Injecting secrets safely via client env blocks
{
  "mcpServers": {
    "secure-service": {
      "command": "node",
      "args": ["server.js"],
      "env": {
        "API_SECRET_KEY": "<YOUR_TOKEN>"
      }
    }
  }
}
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
