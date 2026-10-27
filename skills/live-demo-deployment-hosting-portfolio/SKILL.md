---
name: live-demo-deployment-hosting-portfolio
description: Use this skill when deploying reliable, automated, low-cost live demo environments for portfolio projects on modern cloud tiers.
---
# Live Demo Deployment & Low-Cost Cloud Hosting

## When to use
Use this skill when publishing portfolio projects so hiring managers and clients can click a live link and immediately test working software.

## Core principles
- **The Zero-Cold-Start Goal**: If a recruiter clicks a demo link and sees a 50-second spinning wheel (due to sleeping free containers), they will close the tab. Keep critical landing pages instant.
- **Pre-Populated Demo Accounts & Seed Data**: Never make a hiring manager create an account or verify an email. Provide a 1-click 'Log in as Demo User' button with realistic pre-populated data.
- **Cost-Ceiling & Abuse Defenses**: Protect portfolio projects with rate limiting, Cloudflare DDoS shielding, and strict budget alarms ($0–$10/month cap) to avoid surprise bills.
- **Automated GitOps CD**: Configure GitHub Actions to automatically deploy main branch commits to edge hosting (Fly.io, Railway, Cloudflare Pages, Vercel).

## Step-by-step workflow
1. Separate frontend (static edge hosting: Cloudflare Pages / Vercel) from backend (low-cost VPS or container runtime: Hetzner / Fly.io / Render).
2. Implement automated database seeding with rich, realistic dummy data on startup.
3. Add a prominent '1-Click Demo Login' button bypassing authentication barriers.
4. Configure environment secrets safely in the cloud dashboard (never committed to Git).
5. Set up CORS origins strictly to your demo frontend domain.
6. Add basic rate limiting (e.g., 60 requests/minute per IP) to prevent demo abuse.

## Specifics & examples
- **Demo Login UX Pattern**:
  ```html
  <div class="demo-banner">
    <p>Exploring the demo? <button onclick="loginDemoUser()">Click here for Instant Demo Access</button></p>
  </div>
  ```
- **Automated Database Seeding Command (in Docker entrypoint)**:
  `python manage.py migrate && python manage.py seed_demo_data`

## Common mistakes & pitfalls
- Leaving a blank database so the user lands on an empty white screen.
- Forcing users to sign up with real email verification to test a simple demo.
- Deploying on an unmonitored AWS account without billing alerts or spending limits.

## Verification checklist
- [ ] Demo loads in under 3 seconds with realistic pre-seeded data.
- [ ] Includes 1-click demo login button bypassing manual sign-up.
- [ ] Cloud spending limits and automated budget kill-switches are configured.

## Related skills
- personal-developer-portfolio-website-design
- technical-project-case-study-showcase
- github-profile-readme-optimization-showcase
- building-public-devlog-in-public
