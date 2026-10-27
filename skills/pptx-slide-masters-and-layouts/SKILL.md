---
name: pptx-slide-masters-and-layouts
description: Use this skill when configuring reusable slide masters, custom layout masters, and content placeholders in PowerPoint and code templates.
---
# Slide Masters and Reusable Layouts

## When to use
Use this skill when establishing corporate presentation templates, building reusable layout archetypes, or configuring python-pptx / PptxGenJS base master decks.

## Design principles
- **Centralized Master Styling**: Define fonts, background colors, logos, and footer rules in the Slide Master so changes propagate globally.
- **Dedicated Layout Archetypes**: Build distinct layout masters for common patterns: Title, Section Divider, 2-Column Versus, 3-Card Grid, and Data Chart.
- **Strict Placeholder Positioning**: Lock title and body placeholders to exact coordinates across layouts so titles do not jump between slides.
- **Protection from Clutter**: Never place temporary or slide-specific content onto the Slide Master; keep it strictly structural.

## Step-by-step workflow
1. **Define master canvas dimensions**: Set Slide Master size to 16:9 Widescreen (13.333 in wide by 7.500 in high).
2. **Lock global title placeholder**:
   - Coordinates: `left = 0.800 in`, `top = 0.600 in`, `width = 11.733 in`, `height = 1.000 in`.
   - Typography: 36 pt Bold Primary Dark Slate (`#0F172A`).
3. **Lock global footer layout**:
   - Slide Number: `left = 12.0 in`, `top = 6.9 in`, `font = 11 pt Regular #94A3B8`.
   - Confidentiality Tag: `left = 0.8 in`, `top = 6.9 in`, `font = 11 pt Regular #94A3B8`.
4. **Create layout variants**:
   - Layout 0: Cover / Title Slide (centered or left-aligned with hero container).
   - Layout 1: Section Divider (dark slate background `#0F172A`).
   - Layout 2: Single Column Content (`left = 0.8 in`, `top = 1.8 in`, `width = 11.733 in`).
   - Layout 3: Two Column Comparison (`width = 5.600 in` each).
   - Layout 4: Three Column Modular Grid (`width = 3.644 in` each).
5. **Export master as template**: Save as clean `.potx` or blank `.pptx` base template for programmatic generation.

## Specifics & examples
- **Accessing Layout Masters in python-pptx**:
  ```python
  from pptx import Presentation
  
  prs = Presentation('base_template.pptx')
  
  # List all layout master names
  for idx, layout in enumerate(prs.slide_layouts):
      print(f"Layout {idx}: {layout.name}")
      
  # Add slide using specific custom layout archetype
  title_layout = prs.slide_layouts[0]     # Cover slide
  section_layout = prs.slide_layouts[1]   # Dark divider
  content_layout = prs.slide_layouts[2]   # Standard content card
  
  slide = prs.slides.add_slide(content_layout)
  title = slide.shapes.title
  title.text = "Enterprise Architecture Overview"
  ```

## Common mistakes
- Inconsistently positioning title text boxes between layouts, causing titles to "jump" up and down during slide transitions.
- Hardcoding static text or company logos onto content slides instead of anchoring them on the Slide Master.
- Using 20 different chaotic custom layouts instead of mastering 5 core layout archetypes.

## Review checklist
- [ ] Slide Master is configured for 16:9 widescreen (13.333 x 7.5 in).
- [ ] Title placeholder coordinates are identical across all content layout masters.
- [ ] Slide numbers and confidentiality notices are anchored on the master.
- [ ] Template contains distinct layouts for Title, Section Divider, and Column Grids.

## Related skills
- pptx-theme-colors-and-font-palettes
- pptx-footers-and-slide-numbering
- pptx-python-pptx-foundations
- pptx-design-consistency
