---
name: web-streams-api
description: Use this skill when processing streaming network payloads, chunked downloads, or large text streams with ReadableStream, WritableStream, and TransformStream.
---
# Web Streams API

## When to use
Use this skill when streaming LLM completions, parsing gigabyte-scale CSVs or JSON arrays, processing media chunks in real time, or handling backpressure.

## Prerequisites
- Modern browser or Node.js 18+ runtime supporting the Streams standard.
- Understanding of promises, async iterators, and backpressure mechanisms.

## Step-by-step workflow
1. **Acquire readable stream**: Obtain a `ReadableStream` from `response.body` after invoking `fetch()`.
2. **Lock stream with reader**: Acquire a dedicated reader using `stream.getReader()` to consume chunks sequentially.
3. **Implement transform pipelines**: Pipe readable streams through `TransformStream` instances (e.g., `TextDecoderStream`) using `.pipeThrough()`.
4. **Consume chunks with loop**: Read data chunks using `while (true)` until `{ done: true }` is returned.
5. **Handle cancellation and errors**: Always handle stream errors with `try/catch` and call `reader.cancel()` if the user aborts consumption.

## Commands / code examples
```ts
export async function streamLLMCompletion(
  url: string,
  onToken: (token: string) => void
): Promise<string> {
  const response = await fetch(url, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ prompt: 'Explain distributed consensus algorithms.' }),
  });

  if (!response.body) throw new Error('Response body is null');

  // Pipe raw bytes through text decoder stream
  const textStream = response.body.pipeThrough(new TextDecoderStream());
  const reader = textStream.getReader();
  let fullResponse = '';

  try {
    while (true) {
      const { value, done } = await reader.read();
      if (done) break;
      if (value) {
        fullResponse += value;
        onToken(value);
      }
    }
  } finally {
    reader.releaseLock();
  }

  return fullResponse;
}
```

## Common mistakes & pitfalls
- Attempting to read a stream after it has already been locked by another reader without releasing the lock.
- Reading entire payloads into memory with `response.text()` when progressive chunk rendering is required.
- Failing to release stream locks or cancel underlying readers when user navigates away.

## Verification checklist
- [ ] Streams are decoded chunk-by-chunk without accumulating unbounded buffers.
- [ ] Readers release locks inside `finally` blocks.
- [ ] Network dropouts and stream terminations are caught cleanly.
- [ ] Stream pipelines leverage `pipeThrough` for modular transformations.

## Related skills
- server-sent-events-sse
- web-workers-multithreading
- restful-api-design-best-practices
- performance-code-review-complexity-allocations
