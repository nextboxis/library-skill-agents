---
name: pptx-line-spacing-and-typesetting
description: Use this skill when tuning line height, paragraph spacing, and text margins in PowerPoint to eliminate dense, unreadable text blocks.
---
# Line Spacing and Typesetting for Slides

## When to use
Use this skill when text on slides feels cramped, multi-line titles collide with subheadings, or bullet points blur together into solid walls of text.

## Design principles
- **Slide Line Spacing Exceeds Print**: Reading projected text at a distance requires 15–25% more leading than reading a printed book.
- **Tighten Large Headers**: Titles at 36–44 pt need tighter line spacing (1.1x to 1.15x) to prevent titles from spreading across half the vertical canvas.
- **Loosen Body Copy**: Body copy at 16–18 pt requires 1.25x to 1.3x line spacing to guide the reader's eye smoothly across line wraps.
- **Paragraph Spacing Beats Double Returns**: Never press Enter twice to create gaps between bullets; use explicit paragraph `space_after` settings (6–12 pt).

## Step-by-step workflow
1. **Audit title text frame**: Set title line spacing to 1.1x or 1.15x (or exact point leading matching 115% of font size).
2. **Configure body text frame**: Set body line spacing to 1.25x to ensure comfortable reading distance.
3. **Set space after paragraphs**: Add 8–12 pt of paragraph bottom spacing between bullet items to create natural rhythm.
4. **Zero-out internal frame margins**: Remove default text box left/right padding if aligning directly with container borders.
5. **Eliminate widows and orphans**: Adjust text box width so the last line of a paragraph never contains a single lonely word.

## Specifics & examples
- **python-pptx Typesetting Configuration**:
  ```python
  from pptx.util import Pt
  
  # Action Title Formatting
  title_para = title_frame.paragraphs[0]
  title_para.font.size = Pt(38)
  title_para.line_spacing = 1.15
  title_para.space_after = Pt(12)
  
  # Body Paragraph Formatting
  body_para = body_frame.paragraphs[0]
  body_para.font.size = Pt(16)
  body_para.line_spacing = 1.25
  body_para.space_after = Pt(10)
  ```
- **Text Frame Margins**:
  - Top/Bottom Margin: `Inches(0.05)` to `Inches(0.10)`.
  - Left/Right Margin: `Inches(0.05)` to `Inches(0.10)`.

## Common mistakes
- Leaving default PowerPoint single line spacing (1.0x), making multi-line body text feel crowded and exhausting.
- Inserting blank empty lines with Enter, which creates inconsistent 20+ pt vertical chasms.
- Allowing an action title to end with a single word on the second line (a widow).

## Review checklist
- [ ] Titles use 1.1x–1.15x line spacing to stay compact and cohesive.
- [ ] Body paragraphs use 1.25x–1.3x line spacing for distance readability.
- [ ] Gaps between bullet points use explicit paragraph space-after (8–12 pt).
- [ ] No single-word widow lines exist in headers or callouts.

## Related skills
- pptx-type-scale-and-hierarchy
- pptx-text-limits-and-concision
- pptx-font-pairing
- pptx-whitespace-and-breathing-room
