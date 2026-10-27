---
name: micro-frontends-module-federation
description: Use this skill when orchestrating independently deployed frontend applications at runtime using Webpack or Vite Module Federation.
---
# Micro-Frontends & Module Federation

## When to use
Use this skill when scaling large frontend engineering teams, decoupling deploy pipelines across autonomous domain teams, or sharing runtime dependencies.

## Prerequisites
- Node.js 18+ with Webpack 5+ or Vite with `@originjs/vite-plugin-federation`.
- Thorough understanding of single-spa or container/remote micro-frontend paradigms.

## Step-by-step workflow
1. **Establish host and remote roles**: Define container hosts (shell applications) and autonomous remote applications (domain feature suites).
2. **Configure remote federation**: Expose shared component entry points in the remote configuration using `exposes`.
3. **Configure host remotes**: Register remote URL endpoints inside the host configuration under the `remotes` block.
4. **Define shared singleton dependencies**: Declare shared runtime libraries (`react`, `react-dom`, design system tokens) with strict version constraints.
5. **Implement fallback error boundaries**: Wrap remote component imports in React `Suspense` and error boundaries to prevent total shell crashes.

## Commands / code examples
```ts
// remote/webpack.config.js
const { ModuleFederationPlugin } = require('webpack').container;

module.exports = {
  plugins: [
    new ModuleFederationPlugin({
      name: 'billing_app',
      filename: 'remoteEntry.js',
      exposes: {
        './InvoiceWidget': './src/components/InvoiceWidget.tsx',
      },
      shared: {
        react: { singleton: true, requiredVersion: '^18.2.0', eager: false },
        'react-dom': { singleton: true, requiredVersion: '^18.2.0', eager: false },
      },
    }),
  ],
};

// host/src/App.tsx
import React, { Suspense, lazy } from 'react';

// Dynamic runtime import of remote federated module
const RemoteInvoiceWidget = lazy(() => import('billing_app/InvoiceWidget'));

export function HostDashboard() {
  return (
    <div class="dashboard-shell">
      <header>Enterprise Shell</header>
      <Suspense fallback={<div>Loading remote billing module...</div>}>
        <RemoteInvoiceWidget customerId="cust_12345" />
      </Suspense>
    </div>
  );
}
```

## Common mistakes & pitfalls
- Mismatched shared dependency versions without `singleton: true`, leading to multiple React instances running concurrently.
- Omitting error boundaries around remote components, causing the entire shell to crash if a single remote fails.
- Hardcoding static remote URLs instead of supporting dynamic environment-based injection at runtime.

## Verification checklist
- [ ] Shared singletons (like React) resolve to exactly one runtime instance.
- [ ] Remote failures are caught gracefully by local host error boundaries.
- [ ] Remotes can be built and deployed independently without rebuilding the host.
- [ ] Network bundles load asynchronously only when the remote route is accessed.

## Related skills
- react-fundamentals
- monorepo-management-turborepo-nx
- bundlers-vite-esbuild-webpack-swc
- ci-cd-github-actions-workflows
