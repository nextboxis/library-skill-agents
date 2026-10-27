---
name: svg-craft-and-animation
description: Use this skill when authoring scalable vector graphics, interactive SVG iconography, path manipulations, and CSS/SMIL animations.
---
# SVG Craft and Animation

## When to use
Use this skill when creating crisp vector graphics, interactive animated icons, dynamic charts, progress rings, or responsive brand illustrations.

## Prerequisites
- Understanding of XML/SVG syntax, viewBox coordinate spaces, and vector path commands (`M`, `L`, `C`, `A`, `Z`).
- Familiarity with CSS keyframe animations and SVG stroke properties.

## Step-by-step workflow
1. **Configure viewBox**: Define a fixed coordinate system via `viewBox="min-x min-y width height"` to ensure uniform scaling.
2. **Draft vector paths**: Construct path elements using precision coordinates; optimize curves with cubic (`C`) and quadratic (`Q`) beziers.
3. **Style with presentation attributes**: Control visual styles using CSS classes and presentation properties (`fill`, `stroke`, `stroke-width`).
4. **Animate stroke dashes**: Create line-drawing animations by calculating path length and animating `stroke-dasharray` and `stroke-dashoffset`.
5. **Ensure accessibility**: Add `<title>` and `<desc>` elements inside the `<svg>`, or mark decorative SVGs with `aria-hidden="true"`.

## Commands / code examples
```html
<svg
  viewBox="0 0 100 100"
  width="120"
  height="120"
  role="progressbar"
  aria-valuenow="75"
  aria-valuemin="0"
  aria-valuemax="100"
  class="progress-ring"
>
  <style>
    .background-circle {
      fill: none;
      stroke: #e5e7eb;
      stroke-width: 8;
    }
    .progress-circle {
      fill: none;
      stroke: #3b82f6;
      stroke-width: 8;
      stroke-linecap: round;
      stroke-dasharray: 251.2; /* 2 * PI * r (r=40) */
      stroke-dashoffset: 62.8; /* 251.2 * (1 - 0.75) */
      transform: rotate(-90deg);
      transform-origin: 50% 50%;
      transition: stroke-dashoffset 0.4s ease;
    }
  </style>
  <circle class="background-circle" cx="50" cy="50" r="40" />
  <circle class="progress-circle" cx="50" cy="50" r="40" />
</svg>
```

## Common mistakes & pitfalls
- Hardcoding static `width` and `height` without a `viewBox`, preventing responsive scaling.
- Missing `aria-hidden="true"` on decorative icons, cluttering screen reader announcements.
- Using unoptimized SVG files exported directly from design tools containing proprietary editor metadata and hidden layers.

## Verification checklist
- [ ] SVG elements contain clean, responsive `viewBox` definitions.
- [ ] Decorative graphics have `aria-hidden="true"` attached.
- [ ] Interactive or informational SVGs contain `<title>` and appropriate ARIA roles.
- [ ] Path coordinates are compressed and purged of redundant metadata.

## Related skills
- canvas-api-2d-graphics
- framer-motion-animations
- html5-semantic-web
- accessible-color-contrast-visual-design
