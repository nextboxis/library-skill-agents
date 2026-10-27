---
name: canvas-api-2d-graphics
description: Use this skill when rendering programmatic 2D graphics, interactive charts, particle simulations, or raster image processing with HTML5 Canvas.
---
# Canvas API 2D Graphics

## When to use
Use this skill when building high-performance 2D data visualizations, interactive image manipulation tools, mini-games, or pixel-level rendering engines.

## Prerequisites
- Solid understanding of the HTML `<canvas>` element and Cartesian coordinate systems.
- Familiarity with JavaScript animation timing loops (`requestAnimationFrame`).

## Step-by-step workflow
1. **Acquire 2D context**: Obtain the context via `canvas.getContext('2d')` with appropriate alpha and performance options.
2. **Handle High-DPI displays**: Scale canvas backing store dimensions by `window.devicePixelRatio` and adjust CSS style dimensions to prevent blurriness.
3. **Execute draw routines**: Use vector path methods (`beginPath`, `arc`, `lineTo`, `stroke`, `fill`) inside a dedicated render function.
4. **Implement animation loops**: Drive smooth 60fps animations with `requestAnimationFrame`, clearing dirty regions with `clearRect`.
5. **Manage transform matrices**: Wrap coordinate translations, rotations, and scaling between `ctx.save()` and `ctx.restore()`.

## Commands / code examples
```ts
export function initCanvas(canvas: HTMLCanvasElement) {
  const ctx = canvas.getContext('2d');
  if (!ctx) throw new Error('2D context not supported');

  // Handle Retina / High-DPI screens
  const dpr = window.devicePixelRatio || 1;
  const rect = canvas.getBoundingClientRect();
  canvas.width = rect.width * dpr;
  canvas.height = rect.height * dpr;
  ctx.scale(dpr, dpr);

  let angle = 0;

  function render() {
    ctx.clearRect(0, 0, rect.width, rect.height);

    ctx.save();
    ctx.translate(rect.width / 2, rect.height / 2);
    ctx.rotate(angle);

    ctx.fillStyle = '#3b82f6';
    ctx.fillRect(-40, -40, 80, 80);

    ctx.restore();

    angle += 0.02;
    requestAnimationFrame(render);
  }

  requestAnimationFrame(render);
}
```

## Common mistakes & pitfalls
- Failing to adjust for `window.devicePixelRatio`, resulting in blurry rendering on modern displays.
- Allocating objects or resizing canvas dimensions inside the `requestAnimationFrame` loop, triggering garbage collection stutter.
- Forgetting `ctx.save()` / `ctx.restore()` around transformations, causing cumulative transformation bugs.

## Verification checklist
- [ ] Canvas resolution is scaled by `devicePixelRatio` to prevent Retina blur.
- [ ] Animation loop runs via `requestAnimationFrame` with frame delta calculation.
- [ ] Context transformations are isolated between `ctx.save()` and `ctx.restore()`.
- [ ] Render loop cleans up gracefully when component unmounts.

## Related skills
- svg-craft-and-animation
- webgl-threejs-basics
- browser-dom-manipulation-events
- performance-code-review-complexity-allocations
