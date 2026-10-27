---
name: pptx-contrast-and-legibility
description: Use this skill when validating color contrast, text readability against backgrounds, and WCAG accessibility standards across slide presentations.
---
# Contrast and Legibility for Slides

## When to use
Use this skill when selecting font and background color combinations, reviewing slides for projection under bright room lights, or ensuring WCAG AA compliance.

## Design principles
- **Minimum 4.5:1 Contrast Ratio**: Body text must achieve at least 4.5:1 contrast against its background; large headers (>= 24 pt) must achieve at least 3:1.
- **Projector Washout Compensation**: Washed-out conference projectors reduce visible contrast by 20–30%. Avoid light greys on white backgrounds.
- **Never Text Over Busy Images**: Overlaying plain text on photos destroys legibility; always insert a solid or 85%+ opaque scrim behind text.
- **Avoid Pure Black on Pure White**: Use deep charcoal (#111827) on crisp off-white (#F9FAFB) to reduce harsh optical glare during long reviews.

## Step-by-step workflow
1. **Sample background color**: Determine the exact hex value of the underlying canvas or card surface.
2. **Calculate contrast ratio**: Check foreground text hex against background hex using WCAG luminosity formulas.
3. **Adjust tints for readability**: If contrast is below 4.5:1, darken the text (for light themes) or lighten the text (for dark themes).
4. **Isolate image text**: If placing text over an image, add a solid card shape or an opaque dark overlay (#0F172A with 85% opacity).
5. **Test in low-light and bright simulation**: Verify text remains crisp under simulated high-ambient glare conditions.

## Specifics & examples
- **Light Theme Pairings**:
  - Canvas: `#FFFFFF` or `#F8FAFC`.
  - Primary Text: `#0F172A` (Contrast 15.4:1 - Exceeds AAA).
  - Secondary Text: `#475569` (Contrast 7.1:1 - Exceeds AAA).
  - Muted Footnotes: `#64748B` (Contrast 4.6:1 - Passes AA).
  - *Failing Pair*: `#94A3B8` on `#FFFFFF` (Contrast 2.6:1 - REJECT).
- **Dark Theme Pairings**:
  - Canvas: `#0F172A`.
  - Primary Text: `#F8FAFC` (Contrast 15.4:1).
  - Secondary Text: `#CBD5E1` (Contrast 10.2:1).
  - Muted Footnotes: `#94A3B8` (Contrast 5.9:1).

## Common mistakes
- Using yellow or light green text on a white background.
- Placing text directly across complex photographic backgrounds without a solid backing card.
- Relying on subtle grey text that disappears completely when projected on an external screen.

## Review checklist
- [ ] Body text achieves at least 4.5:1 contrast ratio against background.
- [ ] Large titles achieve at least 3:1 contrast ratio.
- [ ] Text over images has an opaque solid card or 85%+ scrim behind it.
- [ ] No critical text relies on faint pastels or low-contrast greys.

## Related skills
- pptx-color-palettes
- pptx-dark-vs-light-themes
- pptx-accessibility-and-screen-readers
- pptx-visual-hierarchy
