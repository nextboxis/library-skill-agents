---
name: pptx-accessibility-and-screen-readers
description: Use this skill when adding alternative text, configuring reading orders, and ensuring WCAG 2.2 AA presentation accessibility.
---
# Accessibility and Screen Readers for Slides

## When to use
Use this skill when preparing presentations for public distribution, government or enterprise compliance, or visually impaired team members.

## Design principles
- **Mandatory Alt Text for Visuals**: Every chart, diagram, and substantive photograph must have descriptive alternative text explaining the takeaway.
- **Decorative Visual Tagging**: Mark pure background shapes, decorative divider lines, and card containers as decorative so screen readers skip them.
- **Logical Reading Order**: Ensure the z-order and tab order of shapes matches natural reading order (Title -> Subtitle -> Left Card -> Right Card).
- **Color Independence**: Never use color as the sole indicator of status; pair color with icons, text labels, or distinct patterns.

## Step-by-step workflow
1. **Audit color contrast**: Verify all text against backgrounds meets minimum 4.5:1 ratio (3:1 for large text >= 24 pt).
2. **Configure slide titles**: Ensure every slide has an explicit title shape that screen readers identify as the slide heading.
3. **Add Alt Text to charts and images**:
   - Write 1–2 sentences summarizing the data finding (not just "Bar Chart").
   - Example: "Horizontal bar chart showing Cloud ARR reached $75M in 2026, a 56% increase over 2025."
4. **Set logical reading order**: Arrange shapes in the PowerPoint Selection Pane from bottom to top (PowerPoint reads from bottom of pane up).
5. **Run Accessibility Checker**: Use PowerPoint's built-in `Check Accessibility` tool to resolve zero errors.

## Specifics & examples
- **Setting Alt Text in python-pptx**:
  ```python
  # Set alt text description on image or chart shape
  shape = slide.shapes.add_picture("diagram.png", Inches(1.0), Inches(2.0), width=Inches(6.0))
  shape._element._nvXxPr.cNvPr.attrib['descr'] = (
      "System architecture diagram showing API gateway routing HTTPS traffic "
      "to three containerized microservices backed by a managed PostgreSQL cluster."
  )
  shape._element._nvXxPr.cNvPr.attrib['title'] = "System Architecture Overview"
  ```
- **Status Indicator Accessibility Pairing**:
  - *Non-Accessible*: Red circle vs Green circle.
  - *Accessible*: Red circle with "FAIL" text + Green circle with "PASS" text.

## Common mistakes
- Leaving alt text blank on critical data charts and technical architecture diagrams.
- Setting alt text to useless generic filenames like `image_01.png` or `Chart 1`.
- Forgetting that screen readers read PowerPoint shapes in reverse z-order unless configured.

## Review checklist
- [ ] All charts, images, and diagrams have descriptive, insight-driven alt text.
- [ ] Purely decorative shapes are flagged or have empty alt descriptions.
- [ ] Color is never the sole carrier of status, category, or meaning.
- [ ] Reading order flows logically from slide title through content elements.

## Related skills
- pptx-contrast-and-legibility
- pptx-slide-visual-review-and-qa
- pptx-chart-simplification
- pptx-table-design-and-formatting
