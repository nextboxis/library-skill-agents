---
name: pptx-router
description: Use this skill when initiating any presentation task to identify, route, and sequence the 3 to 5 most relevant pptx skills for the job.
---
# Presentation Skills Router

## When to use
Use this skill at the beginning of any presentation workflow to route user requests—such as building pitch decks, cleaning up charts, choosing palettes, or writing python-pptx code—to the optimal sequence of specialized skills.

## Design principles
- **Intent-Driven Routing**: Map user goals directly to a curated subset of 3–5 skills rather than overwhelming the agent with the entire 50-skill library.
- **Logical Staging Order**: Sequence skills in execution order: Narrative Structure -> Layout Selection -> Visual Polish & Color -> QA & Delivery.
- **Cross-Domain Synthesis**: Combine code generation skills (`pptx-python-pptx-*`) with design foundations (`pptx-visual-hierarchy`) for automated pipelines.
- **Fail-Safe Fallbacks**: Route ambiguous or broad requests to structural storytelling foundations first before formatting individual slides.

## Step-by-step workflow
1. **Analyze user presentation request**: Identify whether the primary need is Storytelling, Layout Design, Data Viz, Code Automation, or QA Review.
2. **Select specialized skill cluster**: Match the task to one of the 8 canonical workflow clusters below.
3. **Execute skills sequentially**: Apply the 3–5 skills in numbered order to produce production-grade slides.
4. **Run visual QA check**: Conclude every workflow with visual review and contrast verification.

## Specifics & examples
- **Common Task Routing Map**:
  - *Task: "Make a high-stakes pitch deck or executive proposal"*:
    1. `pptx-pyramid-principle-structure` (Answer-first narrative structure)
    2. `pptx-narrative-arc-for-presentations` (Situation-complication-resolution arc)
    3. `pptx-action-titles-and-takeaways` (Conclusive executive headlines)
    4. `pptx-title-and-cover-slides` (High-contrast cover styling)
    5. `pptx-summary-and-closing-slides` (Decisive call to action)
  - *Task: "Clean up this cluttered chart / Excel export"*:
    1. `pptx-chart-type-selection` (Choose optimal chart archetype)
    2. `pptx-chart-simplification` (Strip gridlines, legends, and chartjunk)
    3. `pptx-highlighting-chart-insights` (Accentuate focal bar with brand color)
    4. `pptx-before-after-chart-makeovers` (De-noise and craft action title)
  - *Task: "Pick a color palette / theme for our slides"*:
    1. `pptx-color-palettes` (Build 60-30-10 palette with accessible contrast)
    2. `pptx-brand-color-systems` (Map primary, surface, and semantic colors)
    3. `pptx-dark-vs-light-themes` (Select dark vs. light theme based on room)
    4. `pptx-theme-colors-and-font-palettes` (Configure 12 XML theme slots)
  - *Task: "Build a presentation automatically in Python"*:
    1. `pptx-python-pptx-foundations` (16:9 canvas setup and layouts)
    2. `pptx-python-pptx-shapes-and-tables` (Cards, shapes, and formatted tables)
    3. `pptx-python-pptx-charts-and-images` (Native column, bar, and line charts)
    4. `pptx-code-layout-helpers-and-design-tokens` (Dynamic grid math)
    5. `pptx-slide-visual-review-and-qa` (Headless image rendering and audit)
  - *Task: "Turn this PRD / memo / raw notes into slides"*:
    1. `pptx-turning-notes-into-slides` (Aggressive pruning and card grouping)
    2. `pptx-one-message-per-slide` (Eliminate competing ideas)
    3. `pptx-text-limits-and-concision` (Enforce word limits and bold lead-ins)
    4. `pptx-speaker-notes-and-scripting` (Move nuance into presenter notes)
  - *Task: "Build a timeline or project roadmap"*:
    1. `pptx-timeline-and-roadmap-layouts` (Horizontal spine and milestone cards)
    2. `pptx-process-flow-layouts` (Sequential directional stages)
    3. `pptx-grids-and-alignment` (Even coordinate distribution)
  - *Task: "Rehearse and script executive presentation"*:
    1. `pptx-speaker-notes-and-scripting` (Cue, talk track, and Q&A backup)
    2. `pptx-action-titles-and-takeaways` (Test slide title skim test)
    3. `pptx-quote-and-key-metric-slides` (Hero metric emphasis)

## Common mistakes
- Attempting to apply all 50 skills simultaneously instead of focusing on the 3–5 targeted skills for the specific task.
- Skipping narrative structure skills and jumping straight into visual styling, resulting in beautifully formatted meaningless slides.
- Neglecting the visual review QA skill prior to final deck delivery.

## Review checklist
- [ ] Task intent is correctly matched to a focused 3–5 skill cluster.
- [ ] Skills are applied in logical sequence (Structure -> Layout -> Style -> QA).
- [ ] Action titles state conclusions rather than passive topic labels.
- [ ] Final deck undergoes visual image inspection and contrast validation.

## Related skills
- pptx-pyramid-principle-structure
- pptx-python-pptx-foundations
- pptx-slide-visual-review-and-qa
- pptx-action-titles-and-takeaways
