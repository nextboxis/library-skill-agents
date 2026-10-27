---
name: pptx-comparison-and-versus-layouts
description: Use this skill when comparing two or three options, architectures, pricing tiers, or tradeoffs side-by-side on a slide.
---
# Comparison and Versus Slide Layouts

## When to use
Use this skill when presenting competitive feature analysis, vendor evaluations, architectural tradeoffs, migration options (before vs. after), or tier pricing.

## Design principles
- **Equal Column Weight**: Give compared options equal column widths unless intentionally emphasizing a recommended choice.
- **Visual Anchor Differentiation**: Highlight the winning or recommended option with an accent border, subtle fill, or badge to guide decision-makers.
- **Row-Level Alignment**: Align criteria and bullet points horizontally across columns so viewers can scan equivalent dimensions without eye drift.
- **Limit to Three Entities**: Do not compare more than 3 options horizontally on a 16:9 canvas; 4 or more cards become unreadably narrow.

## Step-by-step workflow
1. **Define evaluation criteria**: Identify 3–5 consistent dimensions across all options (e.g., Latency, Cost, Operational Burden, Scalability).
2. **Calculate column geometry**:
   - For 2 options: Use two 5.500 in wide cards separated by a 0.733 in gutter.
   - For 3 options: Use three 3.644 in wide cards separated by 0.400 in gutters.
3. **Format baseline cards**: Apply neutral background `#FFFFFF` or `#F8FAFC` with a subtle 1 pt `#E2E8F0` border.
4. **Elevate target card**: For the recommended option, apply a 2 pt `#2563EB` border and add a top badge ("RECOMMENDED").
5. **Standardize typography**: Use 20 pt bold card headers, 14 pt bold criterion titles, and 14 pt regular supporting descriptions.

## Specifics & examples
- **Two-Column Versus Layout Coordinates (16:9 Canvas)**:
  - Slide usable band: `top = 1.8 in`, `height = 4.8 in`.
  - Left Card (Legacy / Status Quo): `left = 0.8 in`, `top = 1.8 in`, `width = 5.6 in`, `height = 4.8 in`.
    - Fill: `#F8FAFC`, Border: `1 pt #CBD5E1`. Header: `22 pt Bold #475569`.
  - Right Card (Proposed / New Architecture): `left = 6.933 in`, `top = 1.8 in`, `width = 5.6 in`, `height = 4.8 in`.
    - Fill: `#FFFFFF`, Border: `2 pt #2563EB`. Header: `22 pt Bold #1E3A8A`.
  - Badge on Right Card: `left = 6.933 in`, `top = 1.5 in`, `width = 2.0 in`, `height = 0.35 in`, fill `#2563EB`, text 11 pt bold `#FFFFFF` "RECOMMENDED".

## Common mistakes
- Misaligning criteria vertically between cards so rows do not correspond to the same evaluation metric.
- Attempting to cram 5 competing options onto a single slide, forcing body text below 11 pt.
- Failing to distinguish the recommended option, leaving executives guessing which path is proposed.

## Review checklist
- [ ] Columns have identical widths and symmetrical margins across the 13.333 in canvas.
- [ ] Comparison criteria align horizontally across all card containers.
- [ ] Recommended or preferred option is immediately identifiable via accent styling or a badge.
- [ ] No more than 3 options are compared simultaneously on a single slide.

## Related skills
- pptx-visual-hierarchy
- pptx-grids-and-alignment
- pptx-proximity-and-grouping
- pptx-table-design-and-formatting
