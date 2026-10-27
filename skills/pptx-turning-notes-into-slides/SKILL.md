---
name: pptx-turning-notes-into-slides
description: Use this skill when deconstructing raw meeting notes, technical docs, or research memos into modular, scannable slide layouts.
---
# Turning Notes into Slides

## When to use
Use this skill when converting dense Google Docs, PRDs, incident postmortems, architecture RFCs, or messy meeting transcripts into clean presentation decks.

## Design principles
- **Aggressive Pruning**: Presentations are visual summaries, not reading documents; eliminate 70% of the raw text from the source document.
- **Deconstruct into Atomic Cards**: Break running paragraphs of text into 3 or 4 discrete concept cards with bold lead-in phrases.
- **Extract Latent Data Points**: Search prose for quantitative metrics, dates, and percentages and promote them into large hero statistics.
- **Shift Details to Speaker Notes**: Preserve nuance, edge cases, and technical methodology by placing them in the presenter notes field.

## Step-by-step workflow
1. **Highlight core takeaways**: Read the source document and mark the 3–5 strategic conclusions that leadership must remember.
2. **Isolate quantitative data**: Extract all numbers, metrics, and dollar amounts into a dedicated scratch list.
3. **Draft slide outline**: Map key takeaways to slide archetypes (e.g., Problem -> 2-Column Versus; Timeline -> Roadmap; Data -> Hero Stat).
4. **Convert prose to bullet cards**:
   - Rewrite full paragraphs into 2-sentence takeaways.
   - Add bold lead-ins for every bullet point.
5. **Transfer background context to speaker notes**: Move secondary explanations and citations into slide notes.

## Specifics & examples
- **Text Deconstruction Before & After**:
  - *Raw RFC Note*: "During our Q3 evaluation we noticed that our microservices cluster experiences frequent timeouts during peak traffic because the connection pool maxes out at 50 concurrent requests, resulting in an error rate of 4.2% across checkout transactions."
  - *Slide Representation*:
    - Card Title: `20 pt Bold #0F172A` "Peak Traffic Connection Exhaustion".
    - Big Stat Pill: `28 pt Bold #DC2626` "4.2% Error Rate".
    - Bullet 1: `14 pt Regular` "**Bottleneck**: Connection pool hard-capped at 50 concurrent sessions."
    - Bullet 2: `14 pt Regular` "**Impact**: Checkout timeouts trigger customer cart abandonment."
    - Speaker Notes: "Full logs available in Datadog dashboard #4412. Root cause verified in lib/db_pool.go."

## Common mistakes
- Copying and pasting full paragraphs of dense prose directly onto a slide.
- Retaining document footnotes, citations, and legal disclaimers inside slide body text.
- Leaving text as an undifferentiated wall of bullets without bold lead-in keywords.

## Review checklist
- [ ] Raw document prose is reduced by at least 70% on the slide canvas.
- [ ] Long paragraphs are transformed into structured cards with bold lead-ins.
- [ ] Latent metrics are promoted to prominent hero numbers or callouts.
- [ ] Nuanced technical details are safely preserved in speaker notes.

## Related skills
- pptx-text-limits-and-concision
- pptx-one-message-per-slide
- pptx-speaker-notes-and-scripting
- pptx-pyramid-principle-structure
