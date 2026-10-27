---
name: pptx-grids-and-alignment
description: Use this skill when structuring 16:9 widescreen slides with 12-column grids, consistent margins, and precise shape alignment. Eliminates messy layouts.
---
# Grids and Alignment for Slides

## When to use
Use this skill when laying out multi-column content, positioning cards or KPI boxes, and aligning text boxes across slides for professional precision.

## Design principles
- **Underlying Modular Grid**: A 12-column grid creates structural rhythm and allows flexible 2-, 3-, 4-, or 6-column arrangements without guessing widths.
- **Consistent Outer Margins**: Content must never bleed to the edge; maintain a minimum 0.8 in safety margin around all slides.
- **Hard Edge Alignment**: Aligning left edges of text boxes creates an invisible vertical line that gives slides an instant feeling of order.
- **Equal Gutters**: Gaps between adjacent cards must remain strictly identical (typically 0.3–0.5 in) across the entire presentation.

## Step-by-step workflow
1. **Set canvas dimensions**: Enforce 16:9 widescreen (13.333 in × 7.500 in).
2. **Establish safe margins**: Define outer margins: Left 0.8 in, Right 0.8 in, Top 0.6 in, Bottom 0.6 in.
3. **Calculate column widths**: Divide the 11.733 in usable width into column spans using exact mathematical gutters.
4. **Snap elements to grid**: Position cards and containers using calculated coordinates rather than freehand dragging.
5. **Align baselines**: Align the tops of parallel cards and the baselines of adjacent titles precisely.

## Specifics & examples
- **16:9 Canvas Width**: 13.333 in, Height: 7.500 in.
- **3-Column Card Layout Coordinates**:
  - Usable Width: `13.333 - (2 * 0.8) = 11.733 in`.
  - Gutter between cards: `0.4 in` (2 gutters = `0.8 in`).
  - Total card width budget: `11.733 - 0.8 = 10.933 in`.
  - Individual Card Width: `10.933 / 3 = 3.644 in`.
  - Card 1: `left = 0.800 in`.
  - Card 2: `left = 0.800 + 3.644 + 0.400 = 4.844 in`.
  - Card 3: `left = 4.844 + 3.644 + 0.400 = 8.888 in`.
  - Card Top: `1.800 in`, Card Height: `4.800 in`.

## Common mistakes
- Eyeballing positions instead of calculating exact coordinates or using align tools.
- Varying margins from slide to slide, causing distracting jumping during presentation.
- Pushing text boxes right up against card borders without internal padding.

## Review checklist
- [ ] Outer margins are strictly uniform across all slides (at least 0.8 in).
- [ ] Gaps between horizontal cards are mathematically equal.
- [ ] Card tops and bottoms align to identical vertical coordinates.
- [ ] Text boxes within cards share identical internal left padding (>= 0.25 in).

## Related skills
- pptx-visual-hierarchy
- pptx-whitespace-and-breathing-room
- pptx-design-consistency
- pptx-code-layout-helpers-and-design-tokens
