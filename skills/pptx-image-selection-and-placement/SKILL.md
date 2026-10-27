---
name: pptx-image-selection-and-placement
description: Use this skill when selecting, cropping, framing, and positioning high-resolution photography and UI screenshots on slides.
---
# Image Selection and Placement for Slides

## When to use
Use this skill when integrating product screenshots, architectural photos, team headshots, or editorial imagery into presentation decks.

## Design principles
- **Purpose Over Decoration**: Never insert clip art, generic stock handshake photos, or decorative filler; every image must provide authentic evidence.
- **Full Bleed or Structured Frame**: Position images either full-bleed edge-to-edge (13.333 x 7.5 in with text overlay) or locked cleanly inside a defined card container.
- **Consistent Aspect Ratios**: When displaying multiple images on one slide, crop them to identical aspect ratios (e.g., all 16:9 or all 1:1 squares).
- **Legible Contrast Overlays**: When placing text over photography, apply a dark semi-transparent scrim (`rgba(15, 23, 42, 0.65)`) to guarantee 4.5:1 text contrast.

## Step-by-step workflow
1. **Source authentic visuals**: Use high-resolution UI captures, technical diagrams, or authentic customer environments (minimum 1920x1080 px).
2. **Crop to container bounds**: Crop out distracting browser tabs, messy desktop backgrounds, or irrelevant surroundings.
3. **Establish placement grid**:
   - Split slide: 50% image (`left = 6.8 in`, `width = 5.733 in`), 50% narrative (`left = 0.8 in`, `width = 5.6 in`).
   - Card mask: Wrap image in rounded rectangle card with 1 pt `#E2E8F0` border.
4. **Apply contrast scrim (if overlaying text)**: Insert a dark rectangle over full-bleed images before adding title typography.
5. **Add caption or attribution**: Provide 11–12 pt muted text (`#64748B`) directly beneath the image identifying the subject.

## Specifics & examples
- **Split Slide Layout Coordinates (16:9 Canvas)**:
  - Slide usable band: `top = 1.8 in`, `height = 4.8 in`.
  - Left Text Container: `left = 0.8 in`, `top = 1.8 in`, `width = 5.2 in`, `height = 4.8 in`.
    - Title: 32 pt Bold `#0F172A`. Body bullets: 16 pt Regular `#334155`.
  - Right Image Container: `left = 6.4 in`, `top = 1.8 in`, `width = 6.133 in`, `height = 4.6 in`.
    - Border: `1 pt #CBD5E1`, Corner Radius: `0.15 in` rounded rectangle mask.
  - Caption: `left = 6.4 in`, `top = 6.5 in`, `font = 11 pt Regular #64748B` ("Fig 1. Real-time telemetry dashboard in staging.").

## Common mistakes
- Stretching or distorting image aspect ratios to make them fit into arbitrary boxes.
- Using low-resolution, pixelated images that blur on high-definition conference room screens.
- Placing body text directly over busy, high-frequency photograph backgrounds without a scrim.

## Review checklist
- [ ] Image resolution is crisp with zero visible pixelation or compression artifacts.
- [ ] Aspect ratios are preserved without vertical or horizontal stretching.
- [ ] Text overlaid on photography meets WCAG 4.5:1 contrast standards.
- [ ] Multiple images on the same slide share uniform dimensions and alignment.

## Related skills
- pptx-visual-hierarchy
- pptx-contrast-and-legibility
- pptx-whitespace-and-breathing-room
- pptx-accessibility-and-screen-readers
