---
name: pptx-chart-simplification
description: Use this skill when stripping chartjunk, heavy gridlines, redundant legends, and visual clutter to maximize data-ink ratio on slides.
---
# Chart Simplification and De-Cluttering

## When to use
Use this skill when cleaning up default Excel, Sheets, or PowerPoint charts that contain dark gridlines, busy borders, redundant legends, and competing visual elements.

## Design principles
- **Maximize Data-Ink Ratio**: Every pixel of ink should convey substantive data; eliminate decorative backgrounds, bevels, shadows, and unnecessary borders.
- **Direct Data Labeling**: Place category labels and values directly next to or on data series, eliminating the need for a disconnected legend.
- **Mute or Remove Gridlines**: Remove vertical gridlines entirely; use faint horizontal gridlines (`#E2E8F0`, 0.75 pt) or omit them when labeling values directly.
- **Y-Axis Elimination**: When data bars or line points feature direct data labels, remove the redundant vertical Y-axis and its tick marks.

## Step-by-step workflow
1. **Remove chart border and background**: Set chart container background fill and outer border stroke to `None`.
2. **Eliminate legend**: Delete separate legend boxes; label series directly at the terminal end of each line or on the bar itself.
3. **Clean up axes**:
   - If values are labeled directly: Remove Y-axis line, tick marks, and axis numbers.
   - If Y-axis is retained: Soften numbers to 12 pt `#64748B` and retain only 3–4 horizontal gridlines in `#E2E8F0`.
4. **Soften baseline**: Keep only the X-axis baseline in subtle `#CBD5E1` (1 pt stroke).
5. **Format numbers**: Abbreviate large numbers (`$14.2M` instead of `$14,200,000`) to conserve visual space.

## Specifics & examples
- **python-pptx Chart De-cluttering Recipe**:
  ```python
  # Remove legend
  chart.has_legend = False
  
  # Clean value axis (Y-axis)
  value_axis = chart.value_axis
  value_axis.has_major_gridlines = False
  value_axis.format.line.fill.background()  # Hide axis line
  value_axis.tick_labels.font.size = Pt(11)
  value_axis.tick_labels.font.color.rgb = RGBColor(100, 116, 139)
  
  # Format category axis (X-axis)
  cat_axis = chart.category_axis
  cat_axis.format.line.color.rgb = RGBColor(203, 213, 225)
  cat_axis.tick_labels.font.size = Pt(12)
  cat_axis.tick_labels.font.color.rgb = RGBColor(15, 23, 42)
  ```

## Common mistakes
- Retaining dark black gridlines that trap data bars in a visual cage.
- Forcing viewers to bounce their eyes between a multi-colored legend at the bottom and data bars at the top.
- Showing unrounded numbers with 4 decimal places on an executive presentation slide.

## Review checklist
- [ ] Chart container background and outer borders are completely transparent.
- [ ] Dark gridlines are removed or muted to faint `#E2E8F0` rules.
- [ ] Disconnected legend is eliminated in favor of direct series labels where feasible.
- [ ] Numbers are rounded and formatted cleanly ($M, $K, %).

## Related skills
- pptx-chart-type-selection
- pptx-highlighting-chart-insights
- pptx-before-after-chart-makeovers
- pptx-whitespace-and-breathing-room
