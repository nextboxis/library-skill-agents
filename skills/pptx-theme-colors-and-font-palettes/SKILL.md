---
name: pptx-theme-colors-and-font-palettes
description: Use this skill when defining PowerPoint XML theme colors, accent hierarchies, and font scheme definitions for instant deck restyling.
---
# Theme Colors and Font Palettes

## When to use
Use this skill when authoring standardized corporate presentation templates, packaging brand design tokens, or configuring PowerPoint theme XML files.

## Design principles
- **Semantic Theme Mapping**: Map PowerPoint's 12 standard theme color slots to defined brand tokens: Dark 1, Light 1, Dark 2, Light 2, and Accents 1–6.
- **Single-Click Global Restyling**: When themes are properly configured, changing the presentation theme updates every chart, shape, and card instantaneously.
- **Font Scheme Pairing**: Define exactly two font slots in the Theme Font scheme: Major Font (Headings) and Minor Font (Body / Tables).
- **Reserved Semantic Accents**: Dedicate Accent 1 to primary brand accent, Accents 2–4 to supporting data categories, and Accents 5–6 to alerts (Red/Green).

## Step-by-step workflow
1. **Assign Core Canvas Slots**:
   - `Dark 1` (Primary Text): `#0F172A` (Slate 900).
   - `Light 1` (Canvas Background): `#FFFFFF` (White).
   - `Dark 2` (Secondary Text): `#475569` (Slate 600).
   - `Light 2` (Card / Surface Fill): `#F8FAFC` (Slate 50).
2. **Assign 6 Theme Accents**:
   - `Accent 1`: `#2563EB` (Primary Brand Blue).
   - `Accent 2`: `#0D9488` (Teal - Supporting Data Series).
   - `Accent 3`: `#D97706` (Amber - Supporting Data Series).
   - `Accent 4`: `#7C3AED` (Purple - Supporting Data Series).
   - `Accent 5`: `#059669` (Emerald - Success / Positive Benchmark).
   - `Accent 6`: `#DC2626` (Crimson - Error / Urgent Risk).
3. **Define Font Pairings**:
   - Major Font (Heading): "Arial" or "Helvetica" (or custom corporate sans).
   - Minor Font (Body): "Calibri" or "Segoe UI".
4. **Package or configure in code**: Set RGBColor constants in python-pptx helper modules to match the theme tokens.

## Specifics & examples
- **Reusable Theme Design Tokens Dictionary**:
  ```python
  THEME_TOKENS = {
      # Canvas & Typography
      "canvas_bg": RGBColor(255, 255, 255),       # #FFFFFF
      "surface_card": RGBColor(248, 250, 252),    # #F8FAFC
      "text_primary": RGBColor(15, 23, 42),       # #0F172A
      "text_secondary": RGBColor(71, 85, 105),    # #475569
      "border_subtle": RGBColor(226, 232, 240),   # #E2E8F0
      
      # Accents
      "accent_primary": RGBColor(37, 99, 235),    # #2563EB
      "accent_teal": RGBColor(13, 148, 136),      # #0D9488
      "accent_amber": RGBColor(217, 119, 6),      # #D97706
      "accent_success": RGBColor(5, 150, 105),    # #059669
      "accent_danger": RGBColor(220, 38, 38)      # #DC2626
  }
  ```

## Common mistakes
- Assigning random aesthetic colors to Theme Accents without designating specific semantic purposes.
- Applying manual custom colors to individual shapes rather than referencing theme tokens, breaking global theme updates.
- Using 4 different font families within one template instead of adhering to the Major/Minor font scheme.

## Review checklist
- [ ] All 12 theme color slots have an explicit semantic mapping.
- [ ] Major and Minor font families are specified and cross-platform safe.
- [ ] Accent 1 is established as the primary focal brand color.
- [ ] Semantic success (green) and danger (red) tokens are reserved for performance callouts.

## Related skills
- pptx-brand-color-systems
- pptx-font-pairing
- pptx-slide-masters-and-layouts
- pptx-code-layout-helpers-and-design-tokens
