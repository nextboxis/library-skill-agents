---
name: pptx-shape-based-custom-smartart
description: Use this skill when constructing bespoke modern modular diagrams using native shapes instead of dated 3D Microsoft SmartArt templates.
---
# Shape-Based Custom SmartArt Layouts

## When to use
Use this skill when replacing default PowerPoint SmartArt templates (with bevels, gradients, and rigid layouts) with bespoke modern geometric cards and diagrams.

## Design principles
- **Flat Modern Aesthetics**: Build modular diagrams from flat rounded rectangles, subtle borders (`#E2E8F0`), and clean solid fills; reject 3D bevels and glossy shines.
- **Modular Component Thinking**: Construct diagrams from reusable atomic units (e.g., Number Pill + Header + Body Card) combined into harmonious grids.
- **Mathematical Spacing**: Never eyeball alignment; calculate exact positions using standard formulas (`left_n = margin + n * (width + gutter)`).
- **Semantic Color Coding**: Use accent colors to signal category or state (e.g., Blue = Core, Green = Growth, Purple = Future), not random rainbow decoration.

## Step-by-step workflow
1. **Identify diagram archetype**: Determine if the concept is a 3-pillar foundation, a 4-quadrant matrix, or a concentric ring flywheel.
2. **Build atomic card template**:
   - Container: Rounded rectangle (corner radius 0.12 in), `fill = #FFFFFF`, `border = 1 pt #E2E8F0`.
   - Category Eyebrow: 11 pt bold uppercase accent pill (`#EFF6FF`, text `#1D4ED8`).
   - Title: 18 pt bold dark slate (`#0F172A`).
   - Bullet items: 13 pt regular gray (`#475569`).
3. **Calculate geometric grid**: Place cards across the canvas using strict coordinate math.
4. **Connect cards with clean tokens**: Add subtle directional pills or linking brackets (`stroke = 2 pt #CBD5E1`).
5. **Convert into reusable code snippet**: Package the geometry into a python-pptx or PptxGenJS helper function.

## Specifics & examples
- **3-Pillar Foundation Layout Coordinates (16:9 Canvas)**:
  - Usable band: `top = 1.8 in`, `height = 4.8 in`.
  - Pillar Width: `3.644 in`, Height: `4.6 in`, Gutter: `0.400 in`.
  - Pillar 1 (People): `left = 0.800 in`, Accent Pill: `#EFF6FF` / `#1D4ED8`.
  - Pillar 2 (Process): `left = 4.844 in`, Accent Pill: `#ECFDF5` / `#047857`.
  - Pillar 3 (Platform): `left = 8.888 in`, Accent Pill: `#FAF5FF` / `#6B21A8`.
  - Foundation Base Beam: `left = 0.800 in`, `top = 6.6 in`, `width = 11.733 in`, `height = 0.4 in`, `fill = #0F172A`, text `12 pt Bold #FFFFFF` "UNIFIED OPERATING PLATFORM".

## Common mistakes
- Inserting default Microsoft SmartArt with 3D perspective, glassy spheres, and default rainbow colors.
- Overcrowding custom shapes until text wraps into 1-word lines.
- Relying on PowerPoint automatic shape resizing, which creates unpredictable font size discrepancies.

## Review checklist
- [ ] Diagram uses flat modern geometry with zero 3D bevels, drop shadows, or glossy gradients.
- [ ] All card widths, heights, and gutters are mathematically identical.
- [ ] Font sizes are uniform across all cards rather than auto-shrunk.
- [ ] Accent colors are purposeful and adhere to the deck design token system.

## Related skills
- pptx-diagram-design-principles
- pptx-grids-and-alignment
- pptx-python-pptx-shapes-and-tables
- pptx-design-consistency
