---
name: css-subgrid-container-queries
description: Use this skill when authoring modular components that adapt to their container size using CSS Container Queries and CSS Subgrid.
---
# CSS Subgrid & Container Queries

## When to use
Use this skill when designing standalone UI components (cards, widgets, modals) that must adapt their layout based on their parent container's width.

## Prerequisites
- Modern browser support (Chrome 105+, Safari 16+, Firefox 110+).
- Familiarity with standard CSS Grid and CSS custom properties.

## Step-by-step workflow
1. **Define container contexts**: Set `container-type: inline-size` and optional `container-name` on the parent wrapper element.
2. **Apply `@container` rules**: Write `@container (min-width: ...)` queries on child selectors to adapt layout based on container width.
3. **Align nested grids with subgrid**: Declare `grid-template-columns: subgrid` or `grid-template-rows: subgrid` on child grid containers.
4. **Harmonize card alignments**: Use subgrid across adjacent cards to align headings, body copy, and action buttons across rows uniformly.
5. **Provide graceful fallbacks**: Ensure components render acceptably in runtimes lacking subgrid or container query support.

## Commands / code examples
```css
/* Card container configuration */
.card-wrapper {
  container-type: inline-size;
  container-name: card;
}

/* Component styles responding to container dimensions */
.product-card {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

@container card (min-width: 480px) {
  .product-card {
    display: grid;
    grid-template-columns: 160px 1fr;
    align-items: center;
  }
}

/* Parent grid providing shared subgrid track lines */
.catalog-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
  grid-auto-rows: auto auto 1fr auto;
  gap: 1.5rem;
}

.catalog-card {
  display: grid;
  grid-row: span 4;
  grid-template-rows: subgrid;
}
```

## Common mistakes & pitfalls
- Setting `container-type: size` without defining an explicit container height, resulting in zero-height collapses.
- Attempting to query the container from within the container element itself instead of its descendants.
- Over-nesting container queries, creating maintenance difficulty when inspecting computed styles.

## Verification checklist
- [ ] Components resize adaptively when moved between wide main content and narrow sidebars.
- [ ] Adjacent card elements align their content rows using `grid-template-rows: subgrid`.
- [ ] `container-type: inline-size` is used for horizontal width queries.
- [ ] Container queries replace viewport-dependent media queries on modular UI widgets.

## Related skills
- modern-css-layout-grid-flexbox
- tailwindcss-architecture
- shadcn-ui-radix-primitives
- web-vitals-lcp-cls-inp-optimization
