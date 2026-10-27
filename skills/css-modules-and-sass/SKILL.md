---
name: css-modules-and-sass
description: Use this skill when maintaining scoped component styles, Sass mixins, nested rules, and variables using CSS Modules and Sass/SCSS.
---
# CSS Modules and Sass

## When to use
Use this skill in projects requiring localized, collision-free CSS class scoping combined with Sass preprocessing features like mixins and color functions.

## Prerequisites
- Modern frontend build tool (Vite, Webpack, or Next.js) with `sass-embedded` or `sass` installed.
- Understanding of CSS specificity and preprocessor compilation.

## Step-by-step workflow
1. **Name module files**: Create stylesheet files following the `.module.scss` or `.module.css` naming convention next to the target component.
2. **Define component classes**: Author clean, human-readable class names without artificial BEM prefixing (scoping hashes are added at build time).
3. **Leverage Sass mixins and functions**: Encapsulate complex vendor prefixes or reusable typography rules inside centralized Sass partials (`_mixins.scss`).
4. **Import and bind classes**: Import the styles object into the component file and assign classes using property lookup (`styles.header`).
5. **Handle dynamic states**: Combine multiple module classes dynamically using template strings or utility helpers like `clsx`.

## Commands / code examples
```scss
// Modal.module.scss
@use 'styles/variables' as vars;
@use 'styles/mixins' as mixins;

.overlay {
  position: fixed;
  inset: 0;
  background-color: rgba(0, 0, 0, 0.5);
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 1000;
}

.modalWindow {
  background: vars.$bg-surface;
  border-radius: vars.$radius-lg;
  padding: 1.5rem;
  max-width: 500px;
  width: 90%;
  box-shadow: vars.$shadow-elevation-high;

  @include mixins.respond-to('md') {
    padding: 2rem;
  }
}

.title {
  font-size: 1.25rem;
  font-weight: 600;
  color: vars.$text-primary;
}
```

```tsx
// Modal.tsx
import React from 'react';
import styles from './Modal.module.scss';

export const Modal: React.FC<{ title: string; children: React.ReactNode }> = ({ title, children }) => {
  return (
    <div className={styles.overlay} role="dialog" aria-modal="true">
      <div className={styles.modalWindow}>
        <h2 className={styles.title}>{title}</h2>
        {children}
      </div>
    </div>
  );
};
```

## Common mistakes & pitfalls
- Referencing undefined class names on the imported `styles` object without TypeScript type checking (`typed-css-modules`).
- Overusing deeply nested Sass selectors, creating unnecessarily high specificity.
- Relying on `:global()` excessively, bypassing modular encapsulation.

## Verification checklist
- [ ] Stylesheets use `.module.scss` or `.module.css` extensions.
- [ ] Classes are referenced through the imported `styles` object.
- [ ] Shared variables and mixins are imported via `@use` rather than legacy `@import`.
- [ ] No global scope pollution occurs outside intentional `:global()` blocks.

## Related skills
- modern-css-layout-grid-flexbox
- styled-components-emotion
- react-fundamentals
- tailwindcss-architecture
