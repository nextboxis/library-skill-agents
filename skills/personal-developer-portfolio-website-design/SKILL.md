---
name: personal-developer-portfolio-website-design
description: Use this skill when building a lightning-fast, minimalist personal engineering portfolio website showcasing projects and case studies.
---
# Personal Developer Portfolio Website Design

## When to use
Use this skill when creating or redesigning your personal website to serve as the definitive hub for your engineering resume, case studies, and contact channels.

## Core principles
- **Sub-Second Load Time (Lighthouse 100)**: Engineering hiring managers value performance over bloated 3D animations. Use static site generators (Astro, Next.js SSG, Hugo) with zero layout shift.
- **Case Studies over Thumbnail Grids**: A visitor wants to know *how* you solved a difficult problem, what architecture decisions you made, and what the real business impact was.
- **Mobile & Dark Mode Ergonomics**: Over 50% of portfolio views originate from mobile devices (via LinkedIn/Twitter). Ensure responsive typography and seamless dark mode toggle.
- **Frictionless Contact Path**: Prominently display email, GitHub, and LinkedIn links in the header and footer. Avoid clumsy contact forms requiring CAPTCHAs.

## Step-by-step workflow
1. Choose a lean tech stack: static HTML/CSS, Astro, or Next.js static export.
2. Implement clear page hierarchy: Hero (Specialization), Selected Work (Case studies), Technical Writing, About/Contact.
3. For each project, include: Title, 1-sentence value proposition, live URL, GitHub repo, tech stack tags, and architecture diagram.
4. Audit performance: verify 95+ score on Google Lighthouse across Performance, Accessibility, and SEO.
5. Deploy to global edge CDN (Vercel, Cloudflare Pages, Netlify) with custom apex domain and SSL.
6. Test all outbound links and mobile tap targets on real physical devices.

## Specifics & examples
- **Portfolio Information Architecture**:
  - `Hero`: 'Staff Backend Engineer specializing in Distributed Systems & Database Storage Engines.'
  - `Flagship Projects`: 3 deep-dive case studies with architecture flowcharts.
  - `Open Source`: Links to merged PRs in major libraries.
  - `Articles`: 3 top technical deep dives.
  - `Contact`: Plain mailto link (`alex@example.com`) and public PGP key.

## Common mistakes & pitfalls
- Loading 15MB of uncompressed 3D models and audio players that freeze mobile browsers.
- Including broken live demo links or links to projects with generic template copy.
- Hiding contact information behind an error-prone serverless form that fails silently.

## Verification checklist
- [ ] Achieves 95+ score across all Google Lighthouse metrics.
- [ ] All featured projects have working live demo links and repository links.
- [ ] Direct email contact link is visible in header and footer.

## Related skills
- technical-project-case-study-showcase
- live-demo-deployment-hosting-portfolio
- github-profile-readme-optimization-showcase
- social-proof-developer-branding-tech-twitter-linkedin
