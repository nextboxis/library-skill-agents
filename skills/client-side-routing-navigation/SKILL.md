---
name: client-side-routing-navigation
description: Use this skill when implementing Single Page Application (SPA) routing, nested layouts, route loaders, and history management using React Router.
---
# Client-Side Routing & Navigation

## When to use
Use this skill when structuring SPA navigation trees, handling URL parameters, managing private route authentication gates, and preserving scroll position.

## Prerequisites
- React 18+ application with `react-router-dom` v6.4+ installed.
- Understanding of the HTML5 History API (`pushState`, `replaceState`, `popstate`).

## Step-by-step workflow
1. **Define route tree with data router**: Create routers using `createBrowserRouter()` to enable concurrent data loaders and actions.
2. **Implement nested route layouts**: Use `<Outlet />` within parent layout components to render matched child routes.
3. **Fetch data before rendering**: Assign async `loader` functions to routes to parallelize data fetching with code-splitting.
4. **Protect authenticated paths**: Wrap protected routes with auth guard components redirecting unauthorized users to `/login`.
5. **Manage navigation and scroll**: Use `<NavLink>` for active styling, `useNavigate()` for programmatic jumps, and `<ScrollRestoration />`.

## Commands / code examples
```tsx
import React from 'react';
import {
  createBrowserRouter,
  RouterProvider,
  Outlet,
  NavLink,
  useLoaderData,
  Navigate,
} from 'react-router-dom';

// Layout with persistent navigation
function RootLayout() {
  return (
    <div>
      <nav className="flex gap-4 p-4 border-b">
        <NavLink to="/dashboard" className={({ isActive }) => isActive ? 'font-bold' : ''}>
          Dashboard
        </NavLink>
        <NavLink to="/settings" className={({ isActive }) => isActive ? 'font-bold' : ''}>
          Settings
        </NavLink>
      </nav>
      <main className="p-4">
        <Outlet />
      </main>
    </div>
  );
}

// Protected route guard
function RequireAuth({ children }: { children: JSX.Element }) {
  const isAuthenticated = Boolean(localStorage.getItem('auth_token'));
  return isAuthenticated ? children : <Navigate to="/login" replace />;
}

export const router = createBrowserRouter([
  {
    path: '/',
    element: <RootLayout />,
    children: [
      {
        path: 'dashboard',
        element: (
          <RequireAuth>
            <div>Dashboard Content</div>
          </RequireAuth>
        ),
      },
    ],
  },
]);

export function App() {
  return <RouterProvider router={router} />;
}
```

## Common mistakes & pitfalls
- Using standard `<a>` tags instead of `<Link>` or `<NavLink>`, triggering full browser page refreshes and losing state.
- Forgetting `<Outlet />` inside layout components, causing child routes to fail to render.
- Fetching data inside child component `useEffect` hooks instead of leveraging route `loader` functions, causing fetch waterfalls.

## Verification checklist
- [ ] Navigation updates URLs via HTML5 History without page reloads.
- [ ] Active route links display appropriate visual styling via `NavLink`.
- [ ] Protected routes redirect unauthenticated users cleanly.
- [ ] Browser back/forward navigation preserves application state and scroll position.

## Related skills
- react-fundamentals
- react-state-management
- session-management-stateless-jwt
- web-vitals-lcp-cls-inp-optimization
