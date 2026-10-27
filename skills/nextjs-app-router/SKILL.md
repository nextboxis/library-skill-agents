---
name: nextjs-app-router
description: Use this skill when developing full-stack web applications using Next.js App Router, nested layouts, server actions, and route handlers.
---
# Next.js App Router

## When to use
Use this skill when scaffolding new Next.js projects, implementing dynamic routes, defining layouts, setting up route handlers, or migrating from Pages router.

## Prerequisites
- Node.js 18.17+ or 20+.
- Next.js 14+ installed via `create-next-app`.

## Step-by-step workflow
1. **Design folder-based routing**: Create folders under `app/` representing URL path segments; place `page.tsx` for public endpoints.
2. **Implement nested layouts**: Use `layout.tsx` for shared UI across subroutes; preserve client state during navigation.
3. **Configure error and loading states**: Add `loading.tsx` for automatic Suspense fallbacks and `error.tsx` for React error boundaries.
4. **Implement Route Handlers**: Create `route.ts` files under `app/api/...` exporting named HTTP methods (`GET`, `POST`, `PATCH`, `DELETE`).
5. **Handle mutations with Server Actions**: Define server actions with `'use server'` and invoke `revalidatePath` or `revalidateTag`.

## Commands / code examples
```tsx
// app/actions/createPost.ts
'use server';

import { revalidatePath } from 'next/cache';

export async function createPost(formData: FormData) {
  const title = formData.get('title') as string;
  if (!title || title.trim().length === 0) {
    throw new Error('Title is required');
  }

  // Simulate database insert
  await fetch('https://api.example.com/posts', {
    method: 'POST',
    body: JSON.stringify({ title }),
    headers: { 'Content-Type': 'application/json' },
  });

  revalidatePath('/posts');
}
```

## Common mistakes & pitfalls
- Forgetting `'use client'` in `error.tsx`, causing build-time compilation failures.
- Importing server-only secrets into Client Components without using `server-only` package protection.
- Unintentionally opting into dynamic rendering by accessing `cookies()` or `headers()` without appropriate caching headers.

## Verification checklist
- [ ] All pages use appropriate route segment configurations (`revalidate`, `dynamic`).
- [ ] Sensitive operations use Server Actions with input validation (e.g., Zod).
- [ ] Shared layout UI does not re-render unnecessarily on child route changes.
- [ ] Route handlers return standardized `NextResponse.json()` responses.

## Related skills
- react-server-components
- react-fundamentals
- restful-api-design-best-practices
- typescript-advanced-type-system
