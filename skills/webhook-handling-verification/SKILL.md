---
name: webhook-handling-verification
description: Use this skill when receiving, verifying HMAC signatures, and processing third-party webhooks with replay attack prevention.
---
# Webhook Handling & Signature Verification

## When to use
Use this skill when you need to receiving, verifying HMAC signatures, and processing third-party webhooks with replay attack prevention.

## Prerequisites
- Working knowledge of backend architecture, HTTP protocols, and systems programming.
- Appropriate runtime installed (Node.js, Python, Go, Rust, Java, or .NET depending on stack).

## Step-by-step workflow
1. **Define resource contracts**: Establish unambiguous request and response schemas, validation rules, and error envelopes.
2. **Implement routing & handlers**: Structure modular controllers or handlers keeping transport logic isolated from domain services.
3. **Enforce input validation**: Validate and sanitize all inbound parameters, headers, and payloads before reaching business logic.
4. **Implement robust error handling**: Return standardized error responses with consistent HTTP status codes and correlation IDs.
5. **Optimize resilience & telemetry**: Instrument endpoints with structured logging, health checks, metrics, and timeout boundaries.

## Commands / code examples
```ts
// Example implementation pattern for webhook-handling-verification
import { Request, Response, NextFunction } from 'express';

export interface StandardApiResponse<T> {
  success: boolean;
  data?: T;
  error?: {
    code: string;
    message: string;
    details?: unknown;
  };
  meta?: {
    timestamp: string;
    requestId: string;
  };
}

export function apiResponseHandler<T>(data: T, req: Request): StandardApiResponse<T> {
  return {
    success: true,
    data,
    meta: {
      timestamp: new Date().toISOString(),
      requestId: (req.headers['x-request-id'] as string) || 'req_auto_gen',
    },
  };
}
```

## Common mistakes & pitfalls
- Exposing raw database exceptions or internal stack traces directly in client responses.
- Neglecting request timeouts, allowing hung external dependencies to exhaust server connection pools.
- Omitting correlation IDs (`X-Request-ID`), making distributed debugging impossible across microservices.

## Verification checklist
- [ ] Endpoints adhere strictly to standardized HTTP status codes and contract specifications.
- [ ] Inbound requests are validated against strict type schemas before processing.
- [ ] Errors return structured envelopes without leaking sensitive infrastructure details.
- [ ] All database queries and external service calls have explicit timeout deadlines.

## Related skills
- restful-api-design-best-practices
- api-rate-limiting-throttling
- distributed-tracing-opentelemetry-sdk
- secure-code-review-static-analysis-sast
