---
name: pptx-python-pptx-charts-and-images
description: Use this skill when rendering native charts, series styling, and cropping high-resolution images programmatically via python-pptx.
---
# python-pptx Charts and Images

## When to use
Use this skill when generating automated metric charts, financial bar graphs, time-series lines, and embedding UI screenshots or team photos via python-pptx.

## Design principles
- **Native Chart Embedding**: Always use python-pptx native chart shapes (`slide.shapes.add_chart`) rather than pasting static chart PNG images so data remains inspectable.
- **Explicit Series Recoloring**: Override default Excel series colors with design token RGBColor values.
- **Legend Elimination**: Set `chart.has_legend = False` and rely on direct category labeling for clean slides.
- **Maintain Aspect Ratios**: When adding images, omit height or calculate proportionally to avoid image squishing.

## Step-by-step workflow
1. **Prepare chart data structure**:
   - Instantiate `CategoryChartData()`.
   - Set categories: `chart_data.categories = ['Q1', 'Q2', 'Q3', 'Q4']`.
   - Add series: `chart_data.add_series('ARR', (12.4, 18.2, 24.8, 32.5))`.
2. **Add native chart to slide**:
   - `slide.shapes.add_chart(XL_CHART_TYPE.COLUMN_CLUSTERED, left, top, width, height, chart_data)`.
3. **Customize chart properties**:
   - `chart.has_legend = False`.
   - Format category axis and value axis line colors and font sizes.
4. **Style series bars**:
   - Access `series = chart.series[0]`.
   - Set fill: `series.format.fill.solid()`; assign brand color `#2563EB`.
5. **Embed image safely**:
   - `slide.shapes.add_picture(img_path, left, top, width=Inches(5.0))`.

## Specifics & examples
- **Runnable Column Chart Creation**:
  ```python
  from pptx import Presentation
  from pptx.util import Inches, Pt
  from pptx.chart.data import CategoryChartData
  from pptx.enum.chart import XL_CHART_TYPE
  from pptx.dml.color import RGBColor
  
  prs = Presentation()
  prs.slide_width = Inches(13.333)
  prs.slide_height = Inches(7.500)
  slide = prs.slides.add_slide(prs.slide_layouts[6])
  
  # 1. Populate data
  chart_data = CategoryChartData()
  chart_data.categories = ['2023', '2024', '2025', '2026 (P)']
  chart_data.add_series('Enterprise ARR ($M)', (14.2, 28.5, 48.0, 75.0))
  
  # 2. Add chart shape
  chart_shape = slide.shapes.add_chart(
      XL_CHART_TYPE.COLUMN_CLUSTERED,
      Inches(1.0), Inches(2.0), Inches(11.333), Inches(4.5), chart_data
  )
  chart = chart_shape.chart
  chart.has_legend = False
  
  # 3. Recolor series to brand blue (#2563EB)
  series = chart.series[0]
  series.format.fill.solid()
  series.format.fill.fore_color.rgb = RGBColor(37, 99, 235)
  
  prs.save("chart_demo.pptx")
  ```

## Common mistakes
- Pasting low-resolution bitmap screenshots of charts from external tools instead of rendering native editable PowerPoint charts.
- Setting both image width and height independently with arbitrary numbers, resulting in stretched images.
- Leaving busy background gridlines enabled on the value axis.

## Review checklist
- [ ] Charts are generated as native PowerPoint XML charts, not static raster images.
- [ ] Series colors match presentation theme tokens.
- [ ] Redundant legends are disabled when categories are self-evident.
- [ ] Images retain natural aspect ratio without distortion.

## Related skills
- pptx-chart-type-selection
- pptx-chart-simplification
- pptx-highlighting-chart-insights
- pptx-python-pptx-foundations
