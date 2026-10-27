---
name: pptx-before-after-chart-makeovers
description: Use this skill when auditing and transforming cluttered default corporate charts into clean, publication-grade executive visuals.
---
# Before-and-After Chart Makeovers

## When to use
Use this skill when refactoring legacy decks, cleaning up dense Excel exports, or upgrading low-fidelity team slides prior to board or executive presentation.

## Design principles
- **De-noising First**: Strip away 3D effects, background gradients, heavy gridlines, saturated rainbow palettes, and redundant decimal points.
- **Narrative Re-orientation**: Replace generic titles (e.g., "Revenue Breakdown 2025") with the conclusive business insight (e.g., "Subscription Revenue Grew 42%, Offsetting Hardware Decline").
- **Intentional Focal Path**: Guide the viewer's eye sequentially: Action Title -> Highlighted Data Series -> Contextual Gray Series -> Footnote / Source.
- **Breathing Space Restoration**: Expand chart margins and shrink axis tick density so numbers and labels do not collide.

## Step-by-step workflow
1. **Audit legacy chart deficiencies**:
   - Check for: 3D perspective, cluttered legends, angled text, low contrast, rainbow colors.
2. **Execute mechanical cleanup**:
   - Flatten 3D shapes to 2D flat geometric bars/lines.
   - Remove background fill and outer bounding box.
   - Delete vertical gridlines; mute horizontal lines to 0.75 pt `#E2E8F0`.
3. **Recalibrate color palette**:
   - Change 6 saturated series colors to neutral gray (`#CBD5E1`) except for the 1 critical series (`#2563EB`).
4. **Direct label and eliminate legend**:
   - Position series names directly at line endpoints or inside bar terminals.
5. **Rewrite headline to action insight**:
   - Formulate a strong takeaway title that answers "So what?" for executive viewers.

## Specifics & examples
- **Transformation Blueprint**:
  - *Before (Default Excel)*: 3D Clustered Column Chart, 5 rainbow colors, dark gray background, black gridlines, diagonal X-axis labels, title "Sales Q1-Q4".
  - *After (Executive Ready)*: Clean 2D Horizontal Bar Chart on clean white canvas, top 3 products in `#0F172A`, standout product in `#2563EB`, others in `#CBD5E1`. Values direct-labeled in 13 pt bold. Title: "Cloud Security Drove 68% of New Q4 Customer Bookings".
  - Canvas Placement: `left = 1.0 in`, `top = 1.8 in`, `width = 11.333 in`, `height = 4.8 in`.

## Common mistakes
- Leaving default Excel color palettes intact (blue, orange, gray, yellow), signaling zero design effort.
- Keeping angled or rotated X-axis labels instead of switching to a horizontal bar chart.
- Keeping an uninformative title like "Quarterly Performance" rather than providing the strategic finding.

## Review checklist
- [ ] 3D effects, gradients, and heavy black borders are completely removed.
- [ ] Generic chart title is replaced with an insight-driven action headline.
- [ ] Rainbow color scheme is replaced with a single focal accent against neutral grays.
- [ ] Legend is replaced with direct data labels where feasible.

## Related skills
- pptx-chart-type-selection
- pptx-chart-simplification
- pptx-highlighting-chart-insights
- pptx-action-titles-and-takeaways
