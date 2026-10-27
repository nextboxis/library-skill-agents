---
name: mcp-server-logging-error-handling-standards
description: Use this skill when implementing standardized logging levels and structured error responses across MCP tool implementations.
---
# MCP Server Logging & Error Handling Standards

## When to use
Use this skill when you need to implementing standardized logging levels and structured error responses across MCP tool implementations.

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
// Send structured logging notifications back to MCP client
await server.sendLoggingMessage({
  level: "info",
  data: `Query executed successfully in ${durationMs}ms`
});
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
