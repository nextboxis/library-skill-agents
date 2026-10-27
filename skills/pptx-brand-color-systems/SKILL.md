---
name: pptx-brand-color-systems
description: Use this skill when translating corporate brand guidelines into usable PowerPoint color themes, XML schemes, and accessible slide palettes.
---
# Brand Color Systems for Slides

## When to use
Use this skill when building branded corporate templates, aligning presentations with marketing style guides, or preventing unapproved brand color variations.

## Design principles
- **Web vs. Presentation Optimization**: Brand colors designed for web or print often fail on projectors; adjust brightness and saturation for presentation displays.
- **Extended Tonal Scales**: A brand guide offering only 2 corporate colors is insufficient; generate 20%, 40%, and 80% tints to build accessible UI cards and charts.
- **Hierarchy of Brand Elements**: Brand colors should frame content, not overwhelm it. Never force every slide title and box to use brand primary colors.
- **Strict Hex Accuracy**: Standardize exact 6-character hex values across Python scripts, templates, and designer handoffs.

## Step-by-step workflow
1. **Extract primary brand hex codes**: Obtain official corporate hex values for Primary Brand and Secondary Brand.
2. **Derive tint and shade palette**: Generate 10% (surface tint), 30% (border tone), and 80% (high-contrast text) variants.
3. **Verify presentation contrast**: Test brand color against slide background; adjust luminance if contrast falls below 4.5:1.
4. **Map to PowerPoint Theme XML**: Assign brand colors to Accent 1 through Accent 6 slots in the PowerPoint XML color theme.
5. **Document role mappings**: Publish an explicit color usage matrix defining when to use each brand token.

## Specifics & examples
- **Brand System Translation Matrix**:
  - Brand Primary Hex: `#1E3A8A` (Dark Navy).
    - Role: Action titles, primary cards, key chart series.
  - Brand Secondary Hex: `#0D9488` (Teal).
    - Role: Secondary comparative metrics, positive milestones.
  - Derived Surface Tint: `#F0FDF4` (Teal 50) or `#EFF6FF` (Blue 50).
    - Role: Highlighting key container card background.
  - Derived Border Tone: `#BFDBFE` (Blue 200).
    - Role: Card outlines and table divider lines.
  - Neutral Base: `#FFFFFF` (Canvas), `#0F172A` (Text).
- **python-pptx Hex Assignment**:
  ```python
  from pptx.dml.color import RGBColor
  BRAND_NAVY = RGBColor(0x1E, 0x3A, 0x8A)
  BRAND_TEAL = RGBColor(0x0D, 0x94, 0x88)
  SURFACE_BLUE = RGBColor(0xEF, 0xF6, 0xFF)
  ```

## Common mistakes
- Using light brand colors (e.g., lime green, bright cyan) for body text on white slides, making text impossible to read.
- Inventing new random shades of blue because the brand guidelines only provided one hex code.
- Covering entire slide backgrounds in saturated brand colors instead of using clean neutral canvases.

## Review checklist
- [ ] Exact brand hex values are documented and strictly implemented.
- [ ] Derived tints provide accessible card surfaces and borders without introducing unapproved hues.
- [ ] Brand colors meet WCAG AA contrast standards for all text applications.
- [ ] Palette is mapped cleanly into reusable theme slots or code tokens.

## Related skills
- pptx-color-palettes
- pptx-theme-colors-and-font-palettes
- pptx-contrast-and-legibility
- pptx-code-layout-helpers-and-design-tokens
