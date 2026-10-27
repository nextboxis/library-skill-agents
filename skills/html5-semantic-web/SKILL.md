---
name: html5-semantic-web
description: Use this skill when architecting accessible, SEO-optimized web documents using standard HTML5 semantic elements, landmarks, and microdata.
---
# HTML5 Semantic Web

## When to use
Use this skill when drafting component templates, building accessible page layouts, improving search engine crawlability, or cleaning up div-soup code.

## Prerequisites
- Deep familiarity with W3C HTML5 living specification standards.
- Knowledge of browser accessibility trees and search crawler behavior.

## Step-by-step workflow
1. **Establish page landmarks**: Structure top-level layouts with `<header>`, `<nav>`, `<main>`, `<aside>`, and `<footer>` elements.
2. **Apply content sectioning**: Group distinct content blocks into `<article>` (independent, syndicatable content) and `<section>` (thematic groupings).
3. **Hierarchy of headings**: Maintain strict heading levels (`<h1>` through `<h6>`) without skipping levels for visual styling.
4. **Form controls & grouping**: Pair all input controls with explicit `<label for="...">` tags and group related inputs in `<fieldset>` with `<legend>`.
5. **Interactive & media semantics**: Replace clickable divs with native `<button>` or `<a>` elements; enclose media with `<figure>` and `<figcaption>`.

## Commands / code examples
```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Engineering Architecture Log</title>
</head>
<body>
  <header role="banner">
    <nav aria-label="Main Navigation">
      <ul>
        <li><a href="/">Home</a></li>
        <li><a href="/docs">Documentation</a></li>
      </ul>
    </nav>
  </header>

  <main id="main-content">
    <article>
      <header>
        <h1>Decoupling Monolithic Services</h1>
        <p><time datetime="2026-10-24">October 24, 2026</time></p>
      </header>
      <section>
        <h2>Domain Boundaries</h2>
        <p>Structuring modular boundaries using domain events...</p>
      </section>
    </article>
  </main>

  <footer role="contentinfo">
    <p>&copy; 2026 Engineering Organization. All rights reserved.</p>
  </footer>
</body>
</html>
```

## Common mistakes & pitfalls
- Using generic `<div>` or `<span>` elements with click handlers instead of native `<button>` elements, breaking keyboard accessibility.
- Skipping heading levels (e.g., jumping from `<h2>` directly to `<h4>`) to adjust font sizes.
- Including multiple `<main>` tags visible simultaneously in the DOM.

## Verification checklist
- [ ] Document has a single, visible `<main>` landmark element.
- [ ] Every form input has an associated `<label>` element.
- [ ] Headings follow a logical numerical hierarchy.
- [ ] Keyboard navigation reaches all interactive elements naturally.

## Related skills
- wcag-22-guidelines-conformance-levels
- semantic-html-aria-roles-attributes
- keyboard-navigation-focus-management-traps
- modern-css-layout-grid-flexbox
