---
name: modern-css-layout-grid-flexbox
description: Use this skill when engineering responsive layouts and alignment using modern CSS Flexbox and 2D CSS Grid without external layout libraries.
---
# Modern CSS Layout: Grid & Flexbox

## When to use
Use this skill when designing fluid user interfaces, multi-column dashboards, responsive card grids, or centering content without brittle margin hacks.

## Prerequisites
- Standard modern browser runtime supporting CSS Grid Level 1/2 and Flexbox.
- Understanding of the CSS box model (content, padding, border, margin).

## Step-by-step workflow
1. **Choose the layout model**: Use Flexbox for one-dimensional layouts (rows or columns); use CSS Grid for two-dimensional layouts (rows and columns).
2. **Construct fluid grids**: Apply `repeat(auto-fit, minmax(min, 1fr))` to create auto-responsive grids without media query boilerplate.
3. **Manage spacing**: Use the `gap` property (both row and column) directly on container elements instead of child margins.
4. **Control alignment**: Use `justify-content` / `align-items` on containers and `justify-self` / `align-self` on specific child items.
5. **Handle layout overflows**: Ensure flex children do not overflow by applying `min-width: 0` or `overflow: hidden` where flex basis causes clipping.

## Commands / code examples
```css
/* Responsive auto-fitting card grid */
.dashboard-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 1.5rem;
  padding: 1.5rem;
}

/* Centered sticky toolbar with Flexbox */
.action-toolbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 1rem;
  position: sticky;
  top: 0;
  background: #ffffff;
  padding: 0.75rem 1rem;
  border-bottom: 1px solid #e5e7eb;
}

.toolbar-group {
  display: flex;
  align-items: center;
  gap: 0.5rem;
}
```

## Common mistakes & pitfalls
- Using Flexbox with complex percentage widths when CSS Grid would provide cleaner 2D placement.
- Forgetting that flex items have an initial `min-width: auto`, preventing text truncation with `text-overflow: ellipsis`.
- Writing dozens of media queries instead of leveraging `auto-fit` and `minmax()` primitives.

## Verification checklist
- [ ] Layout scales smoothly from 320px mobile screens to 4K displays.
- [ ] Spacing is handled through container `gap` properties.
- [ ] Content truncation works cleanly inside flex items using `min-width: 0`.
- [ ] Grid templates adapt dynamically without horizontal scrollbars.

## Related skills
- css-subgrid-container-queries
- tailwindcss-architecture
- html5-semantic-web
- accessible-color-contrast-visual-design
