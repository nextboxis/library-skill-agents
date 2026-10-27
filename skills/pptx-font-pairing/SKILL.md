---
name: pptx-font-pairing
description: Use this skill when pairing header and body typefaces for executive clarity, aesthetic harmony, and seamless cross-platform presentation fidelity.
---
# Font Pairing for Slides

## When to use
Use this skill when selecting typography for a new presentation deck, establishing template font themes, or resolving mismatched, chaotic font combinations.

## Design principles
- **Two Font Families Maximum**: Restrict the deck to one display/header font and one clean, highly legible body font (or use a single versatile super-family).
- **Distinct Personality vs. Neutral Workhorse**: Display headers carry brand personality; body copy must prioritize pure legibility at distance.
- **Sans-Serif Superiority for Projection**: Modern sans-serif fonts (Inter, Arial, Calibri) maintain optical clarity on low-resolution projectors where fine serifs degrade.
- **Avoid Ultra-Thin / Hairline Weights**: Projectors and compressed web meeting streams wash out thin font weights; use Regular (400) or Medium (500) as the minimum body weight.

## Step-by-step workflow
1. **Choose primary body font**: Select a robust, universally legible sans-serif with strong x-height (e.g., Inter, Calibri, or Arial).
2. **Choose header font**: Select an authoritative display font that complements the body without competing (e.g., Plus Jakarta Sans, Trebuchet MS, or Georgia for editorial polish).
3. **Test weight contrast**: Verify that headers are at least Semi-Bold (600) or Bold (700) to create immediate distinction from body text.
4. **Audit platform availability**: Ensure both fonts are either standard system fonts or permanently embedded in the `.pptx` file.
5. **Verify across sizes**: Check that header type reads cleanly at 40 pt and body copy remains sharp down to 14 pt.

## Specifics & examples
- **Tested Executive Pairings**:
  - *Modern Tech*: **Plus Jakarta Sans** (Header 40 pt Bold) + **Inter** (Body 16 pt Regular).
  - *Universal Corporate (Zero-Install Safe)*: **Calibri Bold** (Header 40 pt Bold) + **Calibri** (Body 16 pt Regular).
  - *Executive Strategy & Editorial*: **Georgia** (Header 38 pt Bold) + **Calibri** (Body 16 pt Regular).
  - *Bold Product / Marketing*: **Arial Black** (Header 36 pt) + **Arial** (Body 16 pt Regular).
- **Prohibited Fonts**: Comic Sans, Papyrus, Impact (for body), Brush Script, any hairline or ultra-condensed font.

## Common mistakes
- Using 4 different font families across a 10-slide deck.
- Choosing an exotic web font that gets replaced by Times New Roman on the client's Windows laptop.
- Using a decorative script font for subheadings or bullet points.

## Review checklist
- [ ] No more than two font families are used across the entire deck.
- [ ] Header font has significant weight and style contrast against body copy.
- [ ] Body font maintains clean legibility at 14–16 pt on small displays.
- [ ] Fonts are universally available system defaults or embedded into the file.

## Related skills
- pptx-type-scale-and-hierarchy
- pptx-system-fonts-and-fallbacks
- pptx-line-spacing-and-typesetting
- pptx-design-consistency
