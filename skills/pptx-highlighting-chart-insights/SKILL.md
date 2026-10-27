---
name: pptx-highlighting-chart-insights
description: Use this skill when emphasizing key data trends, target milestones, and focal outliers in slide charts using color accents and annotations.",
---
# Highlighting Chart Insights

## When to use
Use this skill when guiding executive attention to a specific focal bar, turning point, target threshold, anomaly, or strategic breakthrough in a presentation chart.

## Design principles
- **Intentional Asymmetry**: In a chart of 8 bars, 7 should be muted gray (`#CBD5E1` or `#94A3B8`) and exactly 1 should wear the primary accent color (`#2563EB`).
- **Direct Visual Annotation**: Add a concise callout label or floating tag directly adjacent to the focal point explaining *why* it matters.
- **Reference Benchmarks**: Use a dashed horizontal or vertical reference line (`#DC2626` or `#2563EB`, 1.5 pt dashed) to show targets, industry averages, or quotas.
- **Title Reinforcement**: The takeaway highlighted in the chart must directly substantiate the claim in the slide's action title.

## Step-by-step workflow
1. **Identify the focal insight**: Pinpoint the exact data point or trend that proves your argument (e.g., "Q3 surpassed $50M target").
2. **Apply gray-scale base palette**: Set all contextual bars or lines to neutral gray (`#CBD5E1`).
3. **Accentuate target series/point**:
   - Color the focal bar or final data node in high-contrast `#2563EB` (blue) or `#059669` (green).
4. **Draw reference threshold**: If comparing against a target, add a dashed reference line across the chart at the threshold value.
5. **Add annotation callout**: Place a floating pill container (`#EFF6FF` with `1 pt #BFDBFE` border) with 12 pt bold text pointing to the highlight.

## Specifics & examples
- **Target Threshold and Callout Coordinates (16:9 Canvas)**:
  - Chart Container: `left = 1.0 in`, `top = 2.0 in`, `width = 8.5 in`, `height = 4.5 in`.
  - Context Bars (Q1, Q2, Q4): Fill `#CBD5E1`.
  - Highlight Bar (Q3 - Record Outlier): Fill `#2563EB`.
  - Floating Callout Badge: `left = 6.2 in`, `top = 2.2 in`, `width = 2.4 in`, `height = 0.65 in`.
    - Fill: `#EFF6FF`, Border: `1 pt #3B82F6`.
    - Text: `12 pt Bold #1D4ED8` ("New Record: $52.4M (+38% QoQ)").
  - Target Threshold Line: Dashed 1.5 pt line at $40M level, colored `#DC2626`.

## Common mistakes
- Coloring every bar a different bright rainbow hue, destroying any possibility of visual emphasis.
- Highlighting a data point without explaining why it matters in an annotation or action title.
- Overcrowding the chart with 5 different callout badges, creating visual chaos.

## Review checklist
- [ ] Exactly one focal data point or series is emphasized using high-contrast accent color.
- [ ] Contextual and non-focal series are styled in muted neutral grays.
- [ ] Target benchmark or threshold line is clearly labeled if present.
- [ ] Highlighted insight directly reinforces the message in the slide title.

## Related skills
- pptx-chart-type-selection
- pptx-chart-simplification
- pptx-color-for-data-and-emphasis
- pptx-action-titles-and-takeaways
