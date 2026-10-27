---
name: react-server-components
description: Use this skill when building modern React applications utilizing React Server Components (RSC) to reduce client JavaScript and stream data.
---
# React Server Components

## When to use
Use this skill when building data-heavy web applications with Next.js or React 19, where minimizing client bundle size and accessing backend resources directly is essential.

## Prerequisites
- Node.js 18.17+ and Next.js 14+ or an RSC-compatible bundler.
- Understanding the boundary between server execution and client hydration.

## Step-by-step workflow
1. **Establish component boundaries**: Default all components to Server Components. Add `'use client'` only when interactive event handlers or hooks are required.
2. **Fetch data directly in components**: Use async/await directly in Server Components to query databases or internal services without client waterfalls.
3. **Keep client bundles minimal**: Pass server data down to Client Components as serializable props (strings, numbers, plain objects).
4. **Leverage streaming with Suspense**: Wrap asynchronous Server Components in `<Suspense fallback={<Skeleton />}>` to stream UI chunks.
5. **Handle mutations via Server Actions**: Use `'use server'` functions for form submissions and database mutations.

## Commands / code examples
```tsx
// app/users/page.tsx (Server Component)
import { Suspense } from 'react';
import UserList from './UserList';
import UserListSkeleton from './UserListSkeleton';

export default async function UsersPage() {
  return (
    <main className="p-6">
      <h1 className="text-2xl font-bold mb-4">Team Directory</h1>
      <Suspense fallback={<UserListSkeleton />}>
        <UserList />
      </Suspense>
    </main>
  );
}

// app/users/UserList.tsx
async function UserList() {
  const res = await fetch('https://api.example.com/users', { next: { revalidate: 60 } });
  const users: Array<{ id: string; name: string }> = await res.json();

  return (
    <ul className="divide-y">
      {users.map((user) => (
        <li key={user.id} className="py-2">{user.name}</li>
      ))}
    </ul>
  );
}
```

## Common mistakes & pitfalls
- Adding `'use client'` at the root layout, effectively disabling Server Components across the app.
- Passing non-serializable values (functions, class instances, symbols) across the server-client boundary.
- Leaking private environment variables or API keys through Client Component props.

## Verification checklist
- [ ] Data-fetching components run exclusively on the server.
- [ ] `'use client'` is pushed down to leaf interactive components only.
- [ ] Async components are wrapped with `<Suspense>` boundaries.
- [ ] Sensitive backend credentials remain isolated on the server.

## Related skills
- nextjs-app-router
- react-fundamentals
- server-sent-events-sse
- web-vitals-lcp-cls-inp-optimization
