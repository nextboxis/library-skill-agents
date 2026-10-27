---
name: pptx-design-consistency
description: Use this skill when standardizing layout margins, font sizing, card radii, and color usage across a multi-slide PowerPoint presentation deck.
---
# Design Consistency Across Decks

## When to use
Use this skill when reviewing an assembled deck created by multiple contributors, consolidating disparate slides into a unified template, or finalizing a deck for delivery.

## Design principles
- **Predictable Eye Anchors**: Keeping slide titles at identical coordinates across every slide eliminates jarring eye repositioning during transitions.
- **Rule of Threes (Constraints)**: Use maximum 2 font families, 3 type sizes for body hierarchy, and 1 primary accent color across the entire deck.
- **Unified Corner Radii**: All rounded rectangles must share the same corner radius (e.g., 0.12 in / 8 px); never mix sharp corners with rounded corners haphazardly.
- **Consistent Icon Treatment**: Icons throughout the deck must belong to a single visual style (all outlined or all solid, with uniform stroke weights).

## Step-by-step workflow
1. **Establish deck style tokens**: Lock in primary accent color (#2563EB), card background (#F8FAFC), font family (Inter), and corner radius (0.12 in).
2. **Lock title coordinates**: Standardize all slide titles at `left: 0.8 in`, `top: 0.6 in`, `height: 0.8 in`, `font-size: 36 pt Bold`.
3. **Audit card structures**: Standardize card stroke widths (1 pt #E2E8F0) and background fills across all slides.
4. **Normalize iconography**: Replace mismatched icon sets with a unified outline style in uniform sizing (24×24 pt or 32×32 pt).
5. **Slide-flip test**: Rapidly flip through slides in presentation mode; verify that titles, margins, and footers remain perfectly static.

## Specifics & examples
- **Global Deck Tokens**:
  - Title Coordinate: `left = 0.8 in`, `top = 0.6 in`, `font = Inter 36 pt Bold`.
  - Category Tracker / Eyebrow: `left = 0.8 in`, `top = 0.35 in`, `font = Inter 12 pt Semi-Bold uppercase`.
  - Footer Coordinate: `left = 0.8 in`, `top = 6.9 in`, `font = Inter 10 pt Regular #94A3B8`.
  - Card Border Radius: `0.12 in` (or 8 pt in code).
  - Stroke: `1 pt solid #E2E8F0`.

## Common mistakes
- Slide titles jumping by 20–50 pixels vertically between consecutive slides.
- Mixing 3 different blue tints (#1D4ED8, #2563EB, #3B82F6) across slides without functional purpose.
- Using flat filled icons on slide 3 and detailed multi-color icons on slide 5.

## Review checklist
- [ ] Slide titles sit at identical coordinates on every content slide.
- [ ] Consistent corner radii and border weights apply across all container cards.
- [ ] Font pairings and sizes follow strict deck design tokens.
- [ ] Slide-flip test shows zero jumping of titles, footers, or margins.

## Related skills
- pptx-templates-masters-branding
- pptx-visual-hierarchy
- pptx-grids-and-alignment
- pptx-slide-visual-review-and-qa
