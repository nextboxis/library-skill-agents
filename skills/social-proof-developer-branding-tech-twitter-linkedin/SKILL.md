---
name: social-proof-developer-branding-tech-twitter-linkedin
description: Use this skill when sharing engineering insights, post-mortems, and architectural lessons to build professional technical authority.
---
# Developer Branding & Technical Authority on LinkedIn & X

## When to use
Use this skill to attract inbound recruiter inquiries, consulting leads, speaking invitations, and open-source contributors through consistent, high-signal technical writing.

## Core principles
- **High Signal, Zero Engagement Bait**: Avoid empty '10 AI tools you can't live without' threads. Share specific engineering lessons, benchmarks, production post-mortems, and code diffs.
- **The 'Work in Public' Flywheel**: Every interesting bug you solve, architecture trade-off you debate, or benchmark you run is valuable content for other developers.
- **Visual Proof of Engineering**: Accompany technical posts with terminal output snippets, architecture diagrams, or code screenshots (using carbon.now.sh or clean themes).
- **Generous Community Engagement**: Comment thoughtfully on other engineers' deep dives, providing constructive technical feedback and building peer relationships.

## Step-by-step workflow
1. Identify a real engineering challenge recently solved in your work or side project.
2. Draft hook: summarize the counter-intuitive lesson or the problem scale.
3. Outline the narrative: The Symptom -> The Investigation -> The Root Cause -> The Solution.
4. Include concrete technical artifacts: code snippet, architecture diagram, or benchmark chart.
5. Conclude with the broader engineering takeaway.
6. Engage actively in replies, answering questions and acknowledging edge-case feedback.

## Specifics & examples
- **Sample High-Signal Post Outline**:
  *Hook*: 'We spent 3 days tracking down a memory leak in our Go microservice. It wasn't goroutine leaks or unclosed files—it was `time.After` in a hot `select` loop.'
  *Explanation*: 'Each call to `time.After(5 * time.Second)` allocates a new timer that isn't garbage collected until the timer fires, even if another case matches immediately. Under 10k req/sec, this consumed 4GB of RAM in 20 minutes.'
  *Fix*: 'Replaced with a reusable `time.NewTimer` reset at the start of the loop. Memory flatlined at 120MB.'
  *Artifact*: Attached memory profile graph before and after.

## Common mistakes & pitfalls
- Posting generic motivational platitudes instead of concrete engineering substance.
- Arguing aggressively in comments over language flame wars (e.g., Rust vs Go).
- Broadcasting without engaging with people who take time to reply.

## Verification checklist
- [ ] Post shares a specific, technical insight or production lesson learned.
- [ ] Includes visual evidence (code diff, benchmark graph, or architecture diagram).
- [ ] Explains the underlying mechanism rather than just declaring an opinion.

## Related skills
- building-public-devlog-in-public
- talks-meetups-technical-speaking-slides
- linkedin-profile-optimization-for-engineers
- technical-project-case-study-showcase
