---
name: tailwindcss-architecture
description: Use this skill when structuring scalable design systems, theme tokens, utility classes, and custom plugins with Tailwind CSS.
---
# Tailwind CSS Architecture

## When to use
Use this skill when setting up frontend styles for production web applications, enforcing unified design tokens, or configuring Tailwind v3 or v4.

## Prerequisites
- Node.js 18+ and a modern bundler (Vite, Next.js, or PostCSS).
- Understanding of CSS specificity and utility-first styling paradigms.

## Step-by-step workflow
1. **Define design tokens**: Configure semantic colors, typography scales, spacing, and border radii in `tailwind.config.ts` or modern CSS theme layers.
2. **Apply consistent variants**: Leverage responsive (`sm:`, `md:`, `lg:`), state (`hover:`, `focus-visible:`, `disabled:`), and dark mode (`dark:`) prefixes.
3. **Extract component abstractions**: Favor component-level composition (React/Vue components) over excessive `@apply` abstractions.
4. **Safeguard against dynamic classes**: Avoid string concatenation for utility classes (e.g., `text-${color}-500`); use static lookup maps instead.
5. **Optimize bundle size**: Ensure content paths include all template files to allow purge engines to eliminate unused utility classes.

## Commands / code examples
```ts
// tailwind.config.ts
import type { Config } from 'tailwindcss';

export default {
  darkMode: ['class'],
  content: ['./src/**/*.{ts,tsx,html,vue}'],
  theme: {
    extend: {
      colors: {
        brand: {
          50: '#f0fdf4',
          500: '#22c55e',
          900: '#14532d',
        },
      },
      borderRadius: {
        'card': '0.75rem',
      },
    },
  },
  plugins: [],
} satisfies Config;
```

```tsx
// Reusable button with utility classes
export function ActionButton({ variant = 'primary', children }: { variant?: 'primary' | 'secondary'; children: React.ReactNode }) {
  const base = "inline-flex items-center justify-center font-medium transition-colors rounded-card px-4 py-2 focus-visible:outline-2 focus-visible:outline-offset-2";
  const styles = {
    primary: "bg-brand-500 text-white hover:bg-brand-900 focus-visible:outline-brand-500",
    secondary: "bg-gray-100 text-gray-900 hover:bg-gray-200 focus-visible:outline-gray-400",
  };

  return <button className={`${base} ${styles[variant]}`}>{children}</button>;
}
```

## Common mistakes & pitfalls
- Constructing dynamic class names with string interpolation, causing the Tailwind purge scanner to miss and purge them.
- Overusing `@apply` to recreate traditional CSS classes, abandoning utility composition advantages.
- Forgetting accessible focus-visible rings on custom button components.

## Verification checklist
- [ ] Content array accurately points to all source templates.
- [ ] No dynamically interpolated class names exist in template files.
- [ ] Colors and spacing align with the centralized design token system.
- [ ] Focus and disabled states are visually clear and accessible.

## Related skills
- shadcn-ui-radix-primitives
- modern-css-layout-grid-flexbox
- css-modules-and-sass
- accessible-color-contrast-visual-design
