---
name: web-workers-multithreading
description: Use this skill when offloading CPU-intensive computations, cryptography, image processing, or data transformations from the main UI thread to Web Workers.
---
# Web Workers & Multithreading

## When to use
Use this skill when processing large datasets, running client-side compression/parsing, calculating cryptographic hashes, or preventing UI frame drops.

## Prerequisites
- Modern browser or Node.js environment supporting the Web Workers API.
- Understanding of structured cloning algorithms and transferable objects.

## Step-by-step workflow
1. **Identify thread-blocking workloads**: Profile functions consuming >16ms of execution time that stall user interactions.
2. **Author worker script**: Isolate pure algorithmic logic in a standalone worker file listening to `self.onmessage`.
3. **Instantiate dedicated worker**: Initialize the worker in main thread code using `new Worker(new URL('./worker.ts', import.meta.url), { type: 'module' })`.
4. **Transfer binary buffers**: Pass `ArrayBuffer` instances in the transfer list parameter of `postMessage` to achieve zero-copy memory transfers.
5. **Handle lifecycle and termination**: Listen for worker responses via `worker.onmessage`, trap errors with `worker.onerror`, and invoke `worker.terminate()` on cleanup.

## Commands / code examples
```ts
// worker.ts
self.onmessage = (event: MessageEvent<{ buffer: ArrayBuffer }>) => {
  const { buffer } = event.data;
  const view = new Uint8Array(buffer);

  // Perform compute-intensive byte transformation
  for (let i = 0; i < view.length; i++) {
    view[i] = view[i] ^ 0xAA;
  }

  // Transfer memory back to main thread with zero copy
  (self as unknown as Worker).postMessage({ buffer }, [buffer]);
};

// main.ts
export function processLargeBinary(data: Uint8Array): Promise<Uint8Array> {
  return new Promise((resolve, reject) => {
    const worker = new Worker(new URL('./worker.ts', import.meta.url), { type: 'module' });

    worker.onmessage = (e: MessageEvent<{ buffer: ArrayBuffer }>) => {
      resolve(new Uint8Array(e.data.buffer));
      worker.terminate();
    };

    worker.onerror = (err) => {
      reject(err);
      worker.terminate();
    };

    // Transfer underlying buffer
    worker.postMessage({ buffer: data.buffer }, [data.buffer]);
  });
}
```

## Common mistakes & pitfalls
- Attempting to access DOM APIs (`window`, `document`) directly inside worker contexts where they are unavailable.
- Copying large data structures repeatedly via structured cloning instead of using Transferable Objects (`ArrayBuffer`).
- Spawning unbounded worker threads instead of reusing an established worker pool.

## Verification checklist
- [ ] Heavy compute functions execute without stalling main-thread UI rendering.
- [ ] Binary data transfers use the transferable objects array.
- [ ] Worker errors are captured with dedicated `onerror` event listeners.
- [ ] Ephemeral workers call `worker.terminate()` to prevent memory leaks.

## Related skills
- canvas-api-2d-graphics
- performance-code-review-complexity-allocations
- web-streams-api
- chrome-devtools-performance-memory-profiling
