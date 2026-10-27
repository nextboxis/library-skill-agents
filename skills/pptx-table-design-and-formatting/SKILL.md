---
name: pptx-table-design-and-formatting
description: Use this skill when designing readable, executive slide tables with proper column alignment, subtle row shading, and padded cells.
---
# Table Design and Formatting for Slides

## When to use
Use this skill when presenting structured financial statements, feature parity matrices, multi-metric performance summaries, or detailed operational scorecards.

## Design principles
- **Alignment by Data Type**: Left-align text labels; right-align quantitative numbers and financial amounts; center short status codes or icons.
- **Decimal Alignment**: Align numeric columns on decimal points and use tabular (monospaced) numerals to enable instant vertical comparison.
- **Banish Dark Gridlines**: Never use heavy black borders around every cell; use subtle horizontal dividers (`#E2E8F0`, 0.75 pt) and zero vertical gridlines.
- **Generous Cell Padding**: Provide at least 0.10–0.15 in internal top/bottom cell padding to prevent numbers from touching borders.

## Step-by-step workflow
1. **Determine essential columns**: Cap table width at 4 to 6 columns to preserve readability on a slide.
2. **Structure header row**:
   - Background: Dark Slate (`#0F172A`) with white text, or light gray (`#F1F5F9`) with bold dark slate text.
   - Height: 0.5 in, Typography: 13–14 pt Bold.
3. **Format data rows**:
   - Alternating Zebra Striping: White (`#FFFFFF`) and faint tint (`#F8FAFC`).
   - Row Height: 0.40–0.45 in, Typography: 13–14 pt Regular.
4. **Align cell contents**:
   - Column 1 (Category Name): Left-aligned.
   - Numerical Columns (Q1, Q2, Total, %): Right-aligned.
5. **Emphasize total/summary row**: Bottom summary row should have a 1.5 pt top border rule (`#0F172A`) and 14 pt bold text.

## Specifics & examples
- **python-pptx Table Formatting Snippet**:
  ```python
  from pptx.util import Inches, Pt
  from pptx.dml.color import RGBColor
  from pptx.enum.text import PP_ALIGN
  
  # Create table: 5 rows x 4 columns
  table_shape = slide.shapes.add_table(5, 4, Inches(0.8), Inches(2.0), Inches(11.733), Inches(4.5))
  table = table_shape.table
  
  # Set column widths
  table.columns[0].width = Inches(4.233)  # Category name
  table.columns[1].width = Inches(2.500)  # Metric A
  table.columns[2].width = Inches(2.500)  # Metric B
  table.columns[3].width = Inches(2.500)  # Variance
  
  # Format header
  for cell in table.rows[0].cells:
      cell.fill.solid()
      cell.fill.fore_color.rgb = RGBColor(15, 23, 42)
      for p in cell.text_frame.paragraphs:
          p.font.size = Pt(13)
          p.font.bold = True
          p.font.color.rgb = RGBColor(255, 255, 255)
  ```

## Common mistakes
- Centering numerical columns, which misaligns tens, hundreds, and thousands and destroys scannability.
- Using heavy black gridlines around every cell, making the table look like an unformatted raw spreadsheet.
- Pasting raw Excel tables with tiny 9 pt font and clipped cell text onto a presentation slide.

## Review checklist
- [ ] Text columns are left-aligned; numeric columns are strictly right-aligned.
- [ ] Vertical gridlines are eliminated; horizontal rules are faint (`#E2E8F0`).
- [ ] Header row is visually distinct with bold type and contrasting background.
- [ ] Cell padding prevents text and numbers from crowding borders.

## Related skills
- pptx-comparison-and-versus-layouts
- pptx-chart-type-selection
- pptx-grids-and-alignment
- pptx-type-scale-and-hierarchy
