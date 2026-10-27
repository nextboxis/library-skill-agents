---
name: pptx-visual-hierarchy
description: Use this skill when establishing reading order, focal points, and size contrast across elements on a PowerPoint slide. Ensures the main takeaway is seen first.
---
# Visual Hierarchy for Slides

## When to use
Use this skill when designing new slide layouts, auditing crowded slides, or ensuring executive audiences absorb the key message within 3 seconds of viewing.

## Design principles
- **Dominant Focal Point**: Every slide must have one primary visual anchor (e.g., a bold action title, a prominent metric, or a hero diagram).
- **Size-Significance Correlation**: Visual weight directly signals importance. Action titles lead at 36–44 pt, subheadings at 20–24 pt, and supporting body at 14–16 pt.
- **Z-Pattern & F-Pattern Scanning**: Readers naturally scan slides left-to-right, top-to-bottom. Place the primary takeaway top-left and call-to-action bottom-right.
- **De-emphasized Ancillary Data**: Footnotes, sources, and slide numbers must drop to 10–12 pt in muted grey (#6B7280) so they never compete with core content.

## Step-by-step workflow
1. **Identify the primary takeaway**: Distill the slide purpose into a single sentence before placing any shapes or text.
2. **Establish the anchor headline**: Set an action title in 36–40 pt bold type at top-left (`left: 0.8"`, `top: 0.6"`).
3. **Scale supporting elements**: Size card headers at 20 pt and card body text at 14–16 pt with a distinct weight difference.
4. **Mute secondary metadata**: Assign 10–12 pt text in muted grey for timestamps, sources, and data collection notes.
5. **Run the squint test**: Squint at the full slide from 4 feet away; verify that the primary conclusion is instantly recognizable.

## Specifics & examples
- **Slide Canvas**: 16:9 widescreen (13.333 in width × 7.500 in height).
- **Scale Hierarchy**:
  - Action Title: 36–44 pt Bold (#111827).
  - Section/Card Header: 20–24 pt Semi-Bold (#1F2937).
  - Body Copy / Key Bullets: 15–18 pt Regular (#374151).
  - Data Captions / Source Footnotes: 10–12 pt Regular (#6B7280).
- **Coordinates (python-pptx)**:
  - Title box: `left = Inches(0.8)`, `top = Inches(0.6)`, `width = Inches(11.7)`, `height = Inches(1.0)`.
  - Content zone: `top = Inches(1.8)` to `Inches(6.6)`.

## Common mistakes
- Equal visual weight across 4 cards, forcing the viewer to hunt for the point.
- Centering all slide text, which breaks natural left-to-right eye tracking.
- Placing large decorative icons that draw more attention than the actual business metric.

## Review checklist
- [ ] Exactly one clear focal point dominates the slide on initial view.
- [ ] Action title is at least 14 pt larger than any body text.
- [ ] Footnotes and sources are visually de-emphasized in muted grey.
- [ ] Squint test confirms obvious hierarchy between headline, data, and notes.

## Related skills
- pptx-grids-and-alignment
- pptx-contrast-and-legibility
- pptx-action-titles-and-takeaways
- pptx-type-scale-and-hierarchy
