---
name: pptx-code-layout-helpers-and-design-tokens
description: Use this skill when structuring reusable layout helper functions, design tokens, and coordinate calculation modules in slide codebases.
---
# Code Layout Helpers and Design Tokens

## When to use
Use this skill when developing scalable deck generation systems, eliminating hardcoded magic numbers, and standardizing reusable multi-column grid functions.

## Design principles
- **Zero Magic Numbers**: Store all canvas margins, gutter dimensions, typography sizes, and hex colors in a centralized design tokens dictionary.
- **Mathematical Grid Helpers**: Compute multi-column coordinates dynamically using a pure function `col_left(col_idx, total_cols)`.
- **Atomic Slide Components**: Wrap recurring patterns (Action Header, 3-Card Grid, Section Divider, Hero Metric) into reusable Python functions.
- **Theme Swappability**: Allow the entire presentation visual style to switch between Dark and Light by passing a token palette to helper functions.

## Step-by-step workflow
1. **Define Design Tokens Object**:
   - Canvas: `WIDTH = 13.333`, `HEIGHT = 7.500`, `MARGIN_X = 0.800`, `MARGIN_TOP = 0.600`.
   - Palette: `BG`, `SURFACE`, `TEXT_PRIMARY`, `TEXT_SECONDARY`, `BORDER`, `ACCENT`.
2. **Build Column Geometry Helper**:
   - Calculate card width: `width = (content_width - (n - 1) * gutter) / n`.
   - Calculate card left: `left = margin_x + idx * (width + gutter)`.
3. **Build Slide Construction Helpers**:
   - `add_action_title(slide, headline, subtitle)`.
   - `add_card(slide, left, top, width, height, title, body_bullets)`.
   - `add_hero_metric(slide, number_str, label_str, context_str)`.
4. **Assemble presentations declaratively**: Call helper functions in clean pipeline scripts.

## Specifics & examples
- **Reusable Layout Helper Module**:
  ```python
  from pptx.util import Inches, Pt
  from pptx.dml.color import RGBColor
  from pptx.enum.shapes import MSO_SHAPE
  
  class SlideGrid:
      def __init__(self, canvas_width=13.333, margin_x=0.8, top_band=1.8, height=4.8):
          self.canvas_width = canvas_width
          self.margin_x = margin_x
          self.top = top_band
          self.height = height
          self.content_width = canvas_width - (2 * margin_x)
          
      def get_columns(self, count, gutter=0.4):
          total_gutters = (count - 1) * gutter
          col_width = (self.content_width - total_gutters) / count
          cols = []
          for i in range(count):
              left = self.margin_x + i * (col_width + gutter)
              cols.append((Inches(left), Inches(self.top), Inches(col_width), Inches(self.height)))
          return cols
  
  # Usage
  grid = SlideGrid()
  three_cols = grid.get_columns(3, gutter=0.4)
  # Returns exact (left, top, width, height) tuples for 3 cards
  ```

## Common mistakes
- Scattering raw coordinate numbers (`Inches(4.844)`) across hundreds of lines of generation code.
- Duplicating identical card styling code across 20 different slide generation scripts.
- Modifying canvas dimensions without updating coordinate calculations, resulting in overflowing elements.

## Review checklist
- [ ] Layout coordinates are calculated dynamically via reusable helper functions.
- [ ] Colors and fonts are imported from a single design tokens definition.
- [ ] Multi-column grid calculations prevent card overflow beyond margins.
- [ ] High-level slide scripts read cleanly and declaratively.

## Related skills
- pptx-python-pptx-foundations
- pptx-python-pptx-shapes-and-tables
- pptx-grids-and-alignment
- pptx-design-consistency
