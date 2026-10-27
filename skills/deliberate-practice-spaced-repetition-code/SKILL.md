---
name: deliberate-practice-spaced-repetition-code
description: Use this skill when accelerating technical mastery, learning algorithms, and cementing APIs into long-term memory via spaced repetition and Anki.
---
# Deliberate Practice & Spaced Repetition for Engineers

## When to use
Use this skill when preparing for technical coding interviews, memorizing essential CLI commands, mastering complex language APIs, or learning system architecture patterns.

## Core principles
- **Active Recall vs. Passive Review**: Re-reading notes or watching video tutorials creates the "illusion of competence"; forcing your brain to retrieve knowledge from memory (flashcards, blank-page recall) builds permanent neural connections.
- **The Forgetting Curve (Hermann Ebbinghaus)**: Without active retrieval, human memory forgets 70% of new technical information within 48 hours. Reviewing at spaced intervals (Day 1, Day 3, Day 7, Day 30) flattens the curve.
- **Deliberate Practice at the Learning Edge (Anders Ericsson)**: Practice must target your specific weaknesses and bottlenecks, not what you can already do easily.
- **Algorithmic Repetition via Anki**: Use software tools (Anki, RemNote) implementing SM-2 spaced repetition algorithms to optimize review intervals.

## Step-by-step workflow
1. **Identify high-value knowledge atoms**: Select concepts worth permanent retention (Git plumbing commands, POSIX signals, Big-O bounds, TCP handshake states).
2. **Author atomic flashcards (Anki)**:
   - Front: Concrete question or problem prompt.
   - Back: Minimal, concise answer with a 3-line code snippet.
3. **Incorporate Code Katas**: Practice writing foundational algorithms (binary search, LRU cache, quickselect) from a blank file against automated unit tests.
4. **Conduct daily 15-minute review sessions**: Review scheduled flashcards every morning before opening email or Slack.
5. **Refine failing cards**: If a card is missed repeatedly, break it into two smaller, simpler atomic questions.

## Behavioral guidelines & dialogue examples
- **Writing Effective Technical Flashcards**:
  - *Bad Card (Monolithic)*: "Explain all HTTP 500 status codes."
  - *Good Card (Atomic)*:
    - *Front*: "What is the specific difference between HTTP 502 Bad Gateway and HTTP 504 Gateway Timeout?"
    - *Back*: "502 means the upstream server returned an invalid/corrupt response; 504 means the upstream server failed to respond before the timeout threshold."

## Common mistakes & pitfalls
- Creating complex, multi-paragraph flashcards that take 2 minutes to read and answer.
- Practicing only problems you already know how to solve to protect your ego.
- Inconsistent review habits; skipping a week leads to hundreds of overdue cards and abandonment.

## Verification checklist
- [ ] Flashcards are strictly atomic, testing a single specific fact or concept.
- [ ] Practice focuses on the edge of ability, addressing weaknesses.
- [ ] Spaced repetition intervals are followed systematically.
- [ ] Algorithms and patterns are validated by executing real code against unit tests.

## Related skills
- rapid-technology-stack-learning-framework
- technical-note-taking-zettelkasten-digital-garden
- dsa-arrays-hashing-two-pointers-sliding-window
- learning-and-productivity
