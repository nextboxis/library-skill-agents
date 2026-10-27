---
name: pptx-icon-styling-and-consistency
description: Use this skill when selecting, coloring, sizing, and aligning vector iconography to ensure unified visual style across a deck.
---
# Icon Styling and Visual Consistency

## When to use
Use this skill when adding icon anchors to feature cards, agenda sections, process steps, value propositions, or architectural diagrams.

## Design principles
- **Style Uniformity**: Never mix icon styles; commit 100% to either outline (line) icons with uniform stroke weights or solid filled icons across the entire deck.
- **Strict Size Standardization**: Keep all primary feature icons at identical bounding dimensions (e.g., exactly 0.50 x 0.50 in or 0.75 x 0.75 in).
- **Enclosing Shape Containers**: House icons within circular or rounded square badge containers (`fill = #EFF6FF`, size 1.0 x 1.0 in) to standardize baseline visual weight.
- **Monochrome or Two-Tone Tint**: Color icons using the primary brand color (`#2563EB`) or dark slate (`#0F172A`); avoid multi-colored carnival icons.

## Step-by-step workflow
1. **Choose an icon family**: Select an open, professional icon set (e.g., Lucide, Feather, Phosphor, or Heroicons).
2. **Standardize container badges**:
   - Create 0.90 x 0.90 in rounded rectangle or circle shapes.
   - Apply light brand tint (`#EFF6FF`) with no border.
3. **Embed and center vector icon**:
   - Size icon graphic to 0.45 x 0.45 in (centered within the 0.90 in badge).
   - Color icon stroke in primary brand blue (`#1D4ED8`) or dark slate (`#0F172A`).
4. **Align with typography**:
   - Left-align icon badges with card titles or place them directly above centered headers.
5. **Audit full deck**: Check all slides to verify no rogue filled icons contaminate an outline-style presentation.

## Specifics & examples
- **3-Card Icon Feature Geometry (16:9 Canvas)**:
  - Card 1: `left = 0.800 in`, Card 2: `left = 4.844 in`, Card 3: `left = 8.888 in` (Width: 3.644 in each).
  - Icon Badges: `top = 2.1 in`, `width = 0.85 in`, `height = 0.85 in`, `fill = #EFF6FF`, shape = circle.
  - Icon Graphic: Centered at `top = 2.275 in`, `width = 0.50 in`, `height = 0.50 in`, color `#2563EB`.
  - Feature Title: `top = 3.2 in`, `font = 20 pt Bold #0F172A`.
  - Feature Body: `top = 3.7 in`, `font = 14 pt Regular #475569`.

## Common mistakes
- Mixing hand-drawn doodle icons with technical vector stroke icons on adjacent slides.
- Sizing icons inconsistently (e.g., one icon at 0.4 in, another at 1.2 in on the same card row).
- Using multi-colored stock icons with random drop shadows and glossy gradients.

## Review checklist
- [ ] All icons belong to the same style family (pure outline stroke or pure filled glyphs).
- [ ] Stroke weights are visually uniform across all icons.
- [ ] Icon container badges share identical dimensions and corner radiuses.
- [ ] Icons are paired with text labels and never used as standalone mystery symbols.

## Related skills
- pptx-grids-and-alignment
- pptx-design-consistency
- pptx-brand-color-systems
- pptx-shape-based-custom-smartart
