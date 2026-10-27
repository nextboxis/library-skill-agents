---
name: building-public-devlog-in-public
description: Use this skill when maintaining public development logs documenting architectural pivots, daily milestones, and technical challenges.
---
# Building in Public: Engineering Devlogs & Progress Logs

## When to use
Use this skill while building a substantial software project, SaaS product, or open-source tool to build an audience, gather early user feedback, and document proof-of-work.

## Core principles
- **Vulnerability Builds Authenticity**: Sharing bugs, performance regressions, and architectural pivots creates 10x more trust and engagement than pretending everything works on attempt 1.
- **Micro-Milestones over Giant Reveals**: Don't disappear for 6 months to launch with a whisper. Share weekly incremental updates: database schema chosen, first WebSocket ping, UI mock.
- **Focus on Technical Substance**: Share the actual technical trade-offs, code decisions, and benchmark numbers rather than vanity metrics.
- **Feedback as Product Validation**: Public devlogs surface potential edge cases and user needs before thousands of lines of wrong code are written.

## Step-by-step workflow
1. Choose a devlog medium: weekly newsletter, GitHub Discussions, personal blog, or micro-blog thread.
2. Establish a consistent cadence (e.g., every Friday afternoon).
3. Structure each log: What was built this week, What broke, Key technical decision, Next week's priority.
4. Include visual proof: short screen recording, terminal trace, or architecture diagram.
5. Ask the community a targeted question on a pending architectural choice.
6. Archive devlogs as permanent case studies on your portfolio.

## Specifics & examples
- **Weekly Devlog Structure**:
  ```markdown
  ### Devlog #14: Implementing Distributed Tracing with OpenTelemetry
  - **What shipped**: Added trace context propagation across 3 microservices using W3C TraceContext.
  - **The roadblock**: Span context was getting dropped across our Redis worker queues.
  - **The fix**: Serialized trace headers into Redis job payload metadata.
  - **Decision of the week**: Chose Jaeger over Datadog for local development to keep dev environments zero-cost.
  - **Next week**: Benchmarking trace overhead under 5,000 QPS.
  ```

## Common mistakes & pitfalls
- Only posting when you have 'good news', hiding all real engineering struggles.
- Writing vague status updates without concrete code snippets or architecture details.
- Abandoning the devlog after 2 weeks when instant virality doesn't happen.

## Verification checklist
- [ ] Devlog details both progress and a real technical roadblock encountered.
- [ ] Explains the specific technical fix or architectural decision.
- [ ] Follows a predictable, consistent publication cadence.

## Related skills
- social-proof-developer-branding-tech-twitter-linkedin
- technical-project-case-study-showcase
- personal-developer-portfolio-website-design
- talks-meetups-technical-speaking-slides
