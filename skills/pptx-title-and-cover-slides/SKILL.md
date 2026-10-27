---
name: pptx-title-and-cover-slides
description: Use this skill when designing high-contrast, impactful title and cover slides that establish authority, context, and visual polish immediately.
---
# Title and Cover Slides

## When to use
Use this skill when designing the opening slide of an executive pitch, quarterly review, technical proposal, keynote presentation, or corporate master template.

## Design principles
- **Immediate Tone Setting**: The title slide establishes the design quality, brand authority, and seriousness of the entire presentation within 5 seconds.
- **Asymmetric Balance**: Off-center layouts (left-aligned text balanced by open space or subtle geometry) feel more modern and confident than centered text.
- **Clear Information Hierarchy**: The deck title must dominate (44–54 pt); subtitle provides context (20–24 pt); presenter metadata remains understated (12–14 pt).
- **No Cluttered Logos**: Feature exactly one clean corporate logo placed in an unobtrusive corner (top-left or bottom-left); avoid multiple competing badges.

## Step-by-step workflow
1. **Choose canvas tone**: Select clean white (#FFFFFF) for operational decks, or deep navy/slate (#0F172A) for high-impact pitch and keynote covers.
2. **Position the title block**: Place a left-aligned text frame at `left: 1.0 in`, `top: 2.2 in`, spanning up to `9.0 in` in width.
3. **Format primary title**: Set in 44–54 pt Bold with tight 1.1x line spacing.
4. **Format subtitle**: Add a 20–24 pt Regular context line explaining the purpose of the presentation (`space_before: 14 pt`).
5. **Place metadata block**: Anchor author, date, and confidentiality status in the lower quadrant (`top: 5.8 in`, `font-size: 13 pt`).

## Specifics & examples
- **16:9 Title Slide Coordinates (python-pptx)**:
  - Canvas: 13.333 in × 7.500 in.
  - Brand Accent Bar (Optional decorative line): `left = 1.0 in`, `top = 2.0 in`, `width = 0.8 in`, `height = 0.06 in`, fill `#2563EB`.
  - Main Title Box: `left = 1.0 in`, `top = 2.3 in`, `width = 9.5 in`, `height = 2.0 in`.
    - Title Text: 48 pt Bold `#0F172A`.
    - Subtitle Text: 22 pt Regular `#475569`.
  - Metadata Box: `left = 1.0 in`, `top = 5.6 in`, `width = 6.0 in`, `height = 1.0 in`.
    - Presenter / Date: 13 pt Regular `#64748B`.
- **High-Impact Dark Cover Alternative**:
  - Background: `#0F172A`.
  - Main Title: `#FFFFFF`.
  - Subtitle: `#94A3B8`.
  - Accent Line: `#38BDF8`.

## Common mistakes
- Centering all title text in the dead middle of the slide, creating an outdated 1990s aesthetic.
- Using generic, uninformative titles like "Update" or "Meeting Presentation" without a specific project name.
- Covering the title slide in low-resolution stock photography or distracting background graphics.

## Review checklist
- [ ] Main title is bold, prominent (44–54 pt), and legible from across the room.
- [ ] Subtitle clearly articulates the objective or scope of the deck.
- [ ] Presenter name, organization, and presentation date are clearly noted.
- [ ] Layout feels spacious, balanced, and uncluttered by extraneous shapes or logos.

## Related skills
- pptx-visual-hierarchy
- pptx-color-palettes
- pptx-section-divider-slides
- pptx-agenda-and-table-of-contents
