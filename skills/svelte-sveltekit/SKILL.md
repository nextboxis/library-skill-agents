---
name: svelte-sveltekit
description: Use this skill when developing reactive web apps with Svelte 5 runes ($state, $derived, $effect) and building full-stack routes in SvelteKit.
---
# Svelte and SvelteKit

## When to use
Use this skill when building compiled, zero-virtual-DOM user interfaces with Svelte 5 and architecting full-stack web applications with SvelteKit.

## Prerequisites
- Node.js 18+ and Svelte 5 / SvelteKit 2 project setup.
- Basic understanding of reactive programming and standard Web APIs.

## Step-by-step workflow
1. **Initialize state with Runes**: Declare reactive variables using `$state()`, derived values with `$derived()`, and side effects with `$effect()`.
2. **Structure SvelteKit routes**: Create folders in `src/routes/` with `+page.svelte` for views and `+page.server.ts` for server-side loaders.
3. **Implement form actions**: Handle mutations in `+page.server.ts` using named actions and standard `Request` formData parsing.
4. **Manage layouts and stores**: Use `+layout.svelte` for shared component scaffolding and `$app/stores` for navigation state.
5. **Optimize build output**: Configure appropriate adapters (`@sveltejs/adapter-node`, `@sveltejs/adapter-vercel`, or `@sveltejs/adapter-static`).

## Commands / code examples
```svelte
<!-- src/routes/counter/+page.svelte -->
<script lang="ts">
  let count = $state(0);
  let doubled = $derived(count * 2);

  function increment() {
    count += 1;
  }

  $effect(() => {
    console.log(`Current counter value is: ${count}`);
  });
</script>

<div class="p-4 border rounded">
  <h2>Svelte 5 Counter</h2>
  <p>Count: {count} | Doubled: {doubled}</p>
  <button onclick={increment} class="px-4 py-2 bg-blue-600 text-white rounded">
    Add +1
  </button>
</div>
```

## Common mistakes & pitfalls
- Mutating state outside of `$state` definitions in Svelte 5, leading to untracked reactive updates.
- Performing side effects directly inside `$derived` expressions instead of using `$effect`.
- Running browser-only logic inside load functions on the server without checking browser context.

## Verification checklist
- [ ] Svelte 5 runes (`$state`, `$derived`, `$props`) are used instead of legacy `let` and `$:` syntax.
- [ ] Server load functions validate inputs and return serializable objects.
- [ ] Form mutations leverage SvelteKit progressive enhancement (`use:enhance`).
- [ ] Build compiles with zero Svelte compiler warnings.

## Related skills
- modern-css-layout-grid-flexbox
- typescript-advanced-type-system
- progressive-web-apps
- web-vitals-lcp-cls-inp-optimization
