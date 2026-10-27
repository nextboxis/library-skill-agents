---
name: pptx-slide-visual-review-and-qa
description: Use this skill when inspecting rendered slide images, checking text overflow, validating alignment, and executing visual QA audits.
---
# Slide Visual Review and Quality Assurance

## When to use
Use this skill after generating any presentation deck, before sending to leadership, or when automating visual regression tests in CI/CD pipelines.

## Design principles
- **Render to Image for Human Eyes**: Never rely on code compilation alone; convert every slide to high-res PNG/PDF images and inspect every pixel.
- **Zero Element Collision Tolerance**: Overlapping text boxes, charts clipped by borders, or icons colliding with titles are automatic QA failures.
- **Text Wrapping & Overflow Audit**: Verify that no title wraps to 3 lines and no card body text overflows the bottom of its container.
- **Strict Color Contrast Verification**: Test all text and background pairings against WCAG 4.5:1 minimum contrast standards.

## Step-by-step workflow
1. **Export deck to PDF and PNGs**:
   - Convert `.pptx` to `.pdf` via headless LibreOffice: `soffice --headless --convert-to pdf deck.pptx`.
   - Render PDF pages to PNGs via `pdftoppm -png -r 150 deck.pdf slide`.
2. **Execute Visual QA Inspection Checklist**:
   - Slide 1 to N: Check title alignment and margin baseline consistency.
   - Inspect card boundaries: Ensure body text maintains at least 0.2 in internal padding.
   - Check chart data labels: Ensure numbers do not collide with adjacent bars.
3. **Audit footer counters**: Verify slide numbers match actual page progression.
4. **Log visual defects**: Note exact coordinates of colliding or clipped elements.
5. **Remediate in code and re-test**: Adjust coordinates, re-generate, and verify fixed images.

## Specifics & examples
- **Automated Headless Review Command (Linux / Windows CLI)**:
  ```bash
  # 1. Convert presentation to PDF
  soffice --headless --convert-to pdf test_deck.pptx
  
  # 2. Render 150 DPI review PNG images
  pdftoppm -png -r 150 test_deck.pdf slide_review
  
  # 3. Check for generated images
  ls slide_review-*.png
  ```
- **Automated Text Box Overflow Warning Metric**:
  - Max title length: 80 characters (strictly <= 2 lines at 36 pt).
  - Max card bullet length: 120 characters (strictly <= 3 lines at 14 pt).
  - Bottom clearance: No element lower than `top = 6.8 in`.

## Common mistakes
- Delivering a generated presentation without ever looking at the rendered slides.
- Ignoring text box overflow that silently crops the bottom two lines of critical bullets.
- Allowing data labels on charts to overlap with the chart title or axis lines.

## Review checklist
- [ ] Every slide has been rendered to an image and visually reviewed.
- [ ] Zero elements collide, overlap, or clip outside canvas boundaries.
- [ ] All text satisfies WCAG 4.5:1 contrast against its background.
- [ ] Margins and title baselines remain rock-steady across all slides.

## Related skills
- pptx-contrast-and-legibility
- pptx-whitespace-and-breathing-room
- pptx-accessibility-and-screen-readers
- pptx-export-optimization-and-delivery
