---
name: mcp-json-schema-validation-design
description: Use this skill when defining strict input parameter validation for MCP tools using Zod, Pydantic, and JSON Schema Draft-07.
---
# MCP JSON Schema Validation Design

## When to use
Use this skill when you need to defining strict input parameter validation for MCP tools using Zod, Pydantic, and JSON Schema Draft-07.

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
import { z } from 'zod';

export const SearchUsersInputSchema = z.object({
  query: z.string().min(2).max(100),
  limit: z.number().int().min(1).max(50).default(10),
  status: z.enum(['active', 'suspended', 'pending']).optional(),
});

export type SearchUsersInput = z.infer<typeof SearchUsersInputSchema>;
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
