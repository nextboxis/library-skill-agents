---
name: pptx-footers-and-slide-numbering
description: Use this skill when standardizing unobtrusive slide numbers, confidentiality tags, presentation dates, and topic breadcrumbs.
---
# Footers and Slide Numbering

## When to use
Use this skill when establishing baseline presentation metadata, adding slide counters for audience Q&A, and inserting legal confidentiality classifications.

## Design principles
- **Unobtrusive Low Contrast**: Footers must never compete with slide content; style all footer text in small (10–11 pt), muted gray (`#94A3B8`).
- **Suppressed on Title & Dividers**: Never display slide numbers, dates, or confidentiality tags on Cover or Section Divider slides.
- **Explicit Fraction Numbering**: Use `Slide X of Y` or simple numeric counters (`04`, `12`) anchored consistently at the bottom right corner.
- **Persistent Margin Baseline**: Lock footer elements to a strict bottom baseline (`top = 6.9 in` to `7.0 in` on a 7.5 in tall canvas).

## Step-by-step workflow
1. **Define required footer elements**:
   - Bottom Left: Organization / Confidentiality classification ("CONFIDENTIAL - INTERNAL ONLY").
   - Bottom Center (Optional): Topic track or chapter breadcrumb.
   - Bottom Right: Slide sequence counter ("14 / 32").
2. **Anchor on Slide Master**: Configure the three footer placeholders on the Content Slide Master layout.
3. **Format text properties**: Set typeface to system sans-serif (Calibri or Arial), size to 10–11 pt regular, color to `#94A3B8`.
4. **Disable on cover and divider layouts**: Uncheck footer visibility on Layout 0 (Title) and Layout 1 (Section Divider).
5. **Audit full deck export**: Confirm numbers increment sequentially and never overlap with cards or charts.

## Specifics & examples
- **Footer Coordinates (16:9 Canvas: 13.333 x 7.500 in)**:
  - Confidentiality / Organization: `left = 0.800 in`, `top = 6.900 in`, `width = 4.0 in`, `height = 0.35 in`, `font = 10 pt Regular #94A3B8`.
  - Chapter Breadcrumb: `left = 5.200 in`, `top = 6.900 in`, `width = 3.0 in`, `height = 0.35 in`, `font = 10 pt Regular #94A3B8`.
  - Slide Counter: `left = 11.533 in`, `top = 6.900 in`, `width = 1.0 in`, `height = 0.35 in`, `alignment = RIGHT`, `font = 10 pt Bold #64748B`.
- **python-pptx Footer Snippet**:
  ```python
  from pptx.util import Inches, Pt
  from pptx.dml.color import RGBColor
  from pptx.enum.text import PP_ALIGN
  
  def add_footer(slide, current_idx, total_count):
      tx_box = slide.shapes.add_textbox(Inches(11.533), Inches(6.9), Inches(1.0), Inches(0.35))
      tf = tx_box.text_frame
      tf.clear()
      p = tf.paragraphs[0]
      p.text = f"{current_idx:02d} / {total_count:02d}"
      p.font.size = Pt(10)
      p.font.color.rgb = RGBColor(148, 163, 184)
      p.alignment = PP_ALIGN.RIGHT
  ```

## Common mistakes
- Using 14+ pt dark black bold text for footer disclaimers, distracting from primary data.
- Letting content cards extend below `top = 6.7 in`, overlapping and obscuring the footer.
- Leaving slide numbers visible on the main title slide.

## Review checklist
- [ ] Slide number is positioned at bottom right with right alignment.
- [ ] Footer text is styled in muted gray (10–11 pt) with low visual salience.
- [ ] Title and section divider slides suppress all footer elements.
- [ ] Slide content maintains at least 0.3 in clearance above the footer line.

## Related skills
- pptx-slide-masters-and-layouts
- pptx-theme-colors-and-font-palettes
- pptx-grids-and-alignment
- pptx-design-consistency
