---
name: pptx-python-pptx-shapes-and-tables
description: Use this skill when constructing cards, containers, callout pills, connectors, and styled data tables programmatically via python-pptx.
---
# python-pptx Shapes and Tables

## When to use
Use this skill when assembling modular card grids, background surface containers, status badges, and styled tabular scorecards in python-pptx.

## Design principles
- **Shape Type Semantics**: Use `MSO_SHAPE.ROUNDED_RECTANGLE` for cards and badges; use `MSO_SHAPE.RECTANGLE` for surface backgrounds.
- **Zero Default Borders**: Python-pptx adds black borders to shapes by default; explicitly set `line.color` or set `line.fill.background()` to remove.
- **Strict Margin Reset**: Reset text box internal margins (`margin_top = Inches(0)`, etc.) when precise vertical alignment is required.
- **Table Cell Padding**: Adjust table cell vertical anchors and margins to prevent cramped text.

## Step-by-step workflow
1. **Create card container**:
   - `shape = slide.shapes.add_shape(MSO_SHAPE.ROUNDED_RECTANGLE, left, top, width, height)`.
2. **Apply surface styling**:
   - `shape.fill.solid()`; set color to `#FFFFFF` or `#F8FAFC`.
   - `shape.line.color.rgb = RGBColor(226, 232, 240)` with width 1 pt.
3. **Add structured table**:
   - `table_shape = slide.shapes.add_table(rows, cols, left, top, width, height)`.
4. **Format table headers**:
   - Iterate through row 0 cells, applying dark background fill `#0F172A` and white bold font.
5. **Format data rows**:
   - Iterate alternating zebra rows `#FFFFFF` and `#F8FAFC`; right-align numeric cells.

## Specifics & examples
- **Runnable Card and Table Construction**:
  ```python
  from pptx import Presentation
  from pptx.util import Inches, Pt
  from pptx.dml.color import RGBColor
  from pptx.enum.shapes import MSO_SHAPE
  from pptx.enum.text import PP_ALIGN
  
  prs = Presentation()
  prs.slide_width = Inches(13.333)
  prs.slide_height = Inches(7.500)
  slide = prs.slides.add_slide(prs.slide_layouts[6])
  
  # 1. Add background card container
  card = slide.shapes.add_shape(MSO_SHAPE.ROUNDED_RECTANGLE, Inches(0.8), Inches(1.8), Inches(11.733), Inches(4.8))
  card.fill.solid()
  card.fill.fore_color.rgb = RGBColor(248, 250, 252)
  card.line.color.rgb = RGBColor(226, 232, 240)
  
  # 2. Add 4x3 Table inside card
  table_shape = slide.shapes.add_table(4, 3, Inches(1.2), Inches(2.2), Inches(10.933), Inches(3.8))
  table = table_shape.table
  table.columns[0].width = Inches(4.933)
  table.columns[1].width = Inches(3.000)
  table.columns[2].width = Inches(3.000)
  
  # Format header
  headers = ["Component", "Throughput", "Latency P99"]
  for idx, text in enumerate(headers):
      cell = table.cell(0, idx)
      cell.fill.solid()
      cell.fill.fore_color.rgb = RGBColor(15, 23, 42)
      p = cell.text_frame.paragraphs[0]
      p.text = text
      p.font.bold = True
      p.font.size = Pt(13)
      p.font.color.rgb = RGBColor(255, 255, 255)
  prs.save("table_demo.pptx")
  ```

## Common mistakes
- Leaving default bright blue fills and black borders on python-pptx generated shapes.
- Allowing table cells to auto-wrap into vertical single-character columns due to inadequate column widths.
- Failing to set text alignment explicitly, leaving numbers left-aligned and messy.

## Review checklist
- [ ] Card shapes use rounded corners with clean subtle borders (`#E2E8F0`).
- [ ] Default shape borders and fills are explicitly overridden.
- [ ] Table headers feature dark slate background with bold white text.
- [ ] Numeric table columns are right-aligned.

## Related skills
- pptx-table-design-and-formatting
- pptx-shape-based-custom-smartart
- pptx-python-pptx-foundations
- pptx-code-layout-helpers-and-design-tokens
