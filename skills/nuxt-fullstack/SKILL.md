---
name: nuxt-fullstack
description: Use this skill when building full-stack universal Vue applications with Nuxt 3, file-based routing, Nitro server engine, and SEO modules.
---
# Nuxt Fullstack

## When to use
Use this skill when developing universal (SSR/SSG) Vue 3 applications, building integrated server API routes, or configuring auto-imported composables.

## Prerequisites
- Node.js 18.0.0+ or 20+.
- Nuxt 3 installed via `npx nuxi@latest init`.

## Step-by-step workflow
1. **Organize directory structure**: Utilize standard folders: `pages/` for routing, `components/` for auto-imported components, `server/` for backend endpoints.
2. **Fetch data with SSR-safe composables**: Use `useFetch` or `useAsyncData` to ensure data loads on the server and hydrates without duplicate client requests.
3. **Define server endpoints**: Create handlers inside `server/api/` using `defineEventHandler` and Nitro runtime utilities.
4. **Configure SEO and metadata**: Apply `useSeoMeta()` and `useHead()` for social meta tags and Open Graph data.
5. **Manage shared state**: Leverage `useState()` for SSR-friendly reactive state shared across pages and components.

## Commands / code examples
```ts
// server/api/products/[id].get.ts
export default defineEventHandler(async (event) => {
  const id = getRouterParam(event, 'id');
  if (!id) {
    throw createError({ statusCode: 400, statusMessage: 'Product ID is required' });
  }

  // Simulate internal service lookup
  return {
    id,
    name: `Enterprise Plan ${id}`,
    price: 99.00,
    available: true,
  };
});
```

```vue
<!-- pages/products/[id].vue -->
<script setup lang="ts">
const route = useRoute();
const { data: product, error } = await useFetch(`/api/products/${route.params.id}`);

useSeoMeta({
  title: () => product.value ? `${product.value.name} - Store` : 'Product Not Found',
});
</script>

<template>
  <div v-if="error">Error loading product.</div>
  <div v-else-if="product">
    <h1>{{ product.name }}</h1>
    <p>Price: ${{ product.price }}</p>
  </div>
</template>
```

## Common mistakes & pitfalls
- Using standard `fetch()` instead of `useFetch()` inside components, causing hydration mismatches and double fetching.
- Accessing browser globals (`window`, `localStorage`) on server render passes without `process.client` checks.
- Overriding auto-imports with manual imports inconsistently across the codebase.

## Verification checklist
- [ ] Data fetching uses `useFetch()` or `useAsyncData()` with unique keys.
- [ ] Browser-specific APIs are guarded with `import.meta.client` or executed in `onMounted`.
- [ ] Server endpoints validate input parameters with `getRouterParam` / `readBody`.
- [ ] SEO tags are dynamically populated using `useSeoMeta()`.

## Related skills
- vue-composition-api
- restful-api-design-best-practices
- progressive-web-apps
- web-vitals-lcp-cls-inp-optimization
