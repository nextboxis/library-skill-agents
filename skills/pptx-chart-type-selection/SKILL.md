---
name: pptx-chart-type-selection
description: Use this skill when choosing the optimal chart type (bar, line, scatter, waterfall, donut) to accurately reflect quantitative data relationships.
---
# Chart Type Selection for Slides

## When to use
Use this skill when transforming raw data tables or metrics into presentation charts, choosing between horizontal bars, vertical columns, lines, donuts, or waterfalls.

## Design principles
- **Match Form to Analytical Function**: Choose chart forms based on the data relationship: comparison, trend over time, composition, or distribution.
- **Horizontal Bars for Rankings**: Use horizontal bar charts when category labels are long or when ranking items by magnitude.
- **Lines for Continuous Time**: Use line charts exclusively for continuous time-series data; never use line charts for categorical discrete items.
- **Extreme Restraint on Pie/Donut Charts**: Use pie or donut charts only when showing 2 to 3 parts of a whole that sum to 100%; never exceed 4 slices.

## Step-by-step workflow
1. **Identify core analytical message**:
   - Ranking / Comparison -> Horizontal Bar or Vertical Column.
   - Trend over continuous time -> Line Chart or Area Chart.
   - Cumulative variance / P&L breakdown -> Waterfall Chart.
   - Part-to-whole share (<= 3 categories) -> Donut Chart.
   - Relationship between two variables -> Scatter Plot.
2. **Check label length**: If category labels exceed 10 characters, switch from vertical columns to horizontal bars to avoid angled labels.
3. **Verify sample density**: If plotting > 12 time periods, choose a clean line chart; if plotting <= 8 periods, choose a column chart.
4. **Pair with action title**: State the chart takeaway in the slide title rather than labeling the chart with a generic description.

## Specifics & examples
- **Chart Selection Matrix**:
  - *Comparing 5 cloud providers by cost*: Horizontal Bar Chart (bars ordered largest to smallest).
  - *Monthly active users over 24 months*: Line Chart (clean 2.5 pt stroke, no bulky data point dots).
  - *Gross revenue to Net income bridging*: Waterfall Chart (green additions, red subtractions, slate subtotals).
  - *Market share split between 2 competitors*: Donut Chart (2 slices, percentage callout placed in center hole).

## Common mistakes
- Using 3D charts, exploded pie slices, or dual-axis charts that distort visual comprehension.
- Using vertical column charts with diagonal or vertical text labels that force viewers to tilt their heads.
- Using a line chart to compare disconnected categorical groups (e.g., Marketing, Sales, Engineering).

## Review checklist
- [ ] Chart type directly supports the primary takeaway stated in the action title.
- [ ] Category labels are horizontal and completely legible without tilting.
- [ ] Time-series charts progress chronologically from left to right.
- [ ] Pie/donut charts have 3 or fewer slices and sum to exactly 100%.

## Related skills
- pptx-chart-simplification
- pptx-highlighting-chart-insights
- pptx-before-after-chart-makeovers
- pptx-one-message-per-slide
