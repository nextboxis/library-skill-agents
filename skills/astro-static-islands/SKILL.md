---
name: astro-static-islands
description: Use this skill when building content-focused websites using Astro static islands architecture to achieve near-zero client-side JavaScript.
---
# Astro Static Islands

## When to use
Use this skill for marketing sites, documentation hubs, developer blogs, and content portfolios where Lighthouse performance and SEO are primary requirements.

## Prerequisites
- Node.js 18.14.1+ or 20+.
- Astro installed via `npm create astro@latest`.

## Step-by-step workflow
1. **Design Astro page templates**: Use `.astro` files combining a frontmatter script fence (`---`) with HTML-like component markup.
2. **Implement content collections**: Define structured schema collections under `src/content/config.ts` using Zod for type-safe Markdown/MDX content.
3. **Isolate interactive components**: Build interactive UI widgets in your choice of UI framework (React, Vue, Svelte, or Solid).
4. **Hydrate with client directives**: Use explicit client directives (`client:load`, `client:visible`, `client:idle`) to hydrate islands on demand.
5. **Generate static assets**: Run `astro build` to output optimized HTML, CSS, and minimal island JavaScript bundles.

## Commands / code examples
```astro
---
// src/pages/blog/[slug].astro
import { getCollection, getEntry } from 'astro:content';
import BaseLayout from '../../layouts/BaseLayout.astro';
import InteractiveComments from '../../components/InteractiveComments.tsx';

export async function getStaticPaths() {
  const posts = await getCollection('blog');
  return posts.map((post) => ({ params: { slug: post.slug } }));
}

const { slug } = Astro.params;
const post = await getEntry('blog', slug);
const { Content } = await post.render();
---

<BaseLayout title={post.data.title}>
  <article class="prose max-w-3xl mx-auto p-4">
    <h1>{post.data.title}</h1>
    <p class="text-gray-500">Published on {post.data.date.toLocaleDateString()}</p>
    <Content />
    
    <!-- Island hydrated only when scrolled into view -->
    <InteractiveComments client:visible postId={post.id} />
  </article>
</BaseLayout>
```

## Common mistakes & pitfalls
- Overusing `client:load` on below-the-fold widgets, degrading initial page load metrics.
- Attempting to pass non-serializable props (functions, complex class instances) to client framework islands.
- Using client-only framework state to manage site-wide static navigation.

## Verification checklist
- [ ] Pages render pure static HTML by default.
- [ ] Interactive islands specify explicit `client:*` directives.
- [ ] Content collections enforce strict schemas with Zod.
- [ ] Output site scores 95+ across all Core Web Vitals audits.

## Related skills
- react-fundamentals
- svelte-sveltekit
- web-vitals-lcp-cls-inp-optimization
- html5-semantic-web
