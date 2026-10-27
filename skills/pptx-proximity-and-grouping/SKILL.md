---
name: pptx-proximity-and-grouping
description: Use this skill when grouping related ideas, metrics, and labels using Gestalt proximity and container cards. Prevents visual ambiguity on slides.
---
# Proximity and Grouping on Slides

## When to use
Use this skill when arranging multi-part cards, pairing icons with labels, placing captions near charts, or organizing complex feature comparisons.

## Design principles
- **Gestalt Law of Proximity**: Objects placed close together are perceived as belonging to a single functional group.
- **Label-Data Closeness**: Metric values and their explanatory labels must be tightly grouped (gap <= 0.15 in) to prevent cognitive decoupling.
- **Card Enclosure**: Placing related items inside a bounded container (subtle border or background fill) solidifies the group identity.
- **Inter-Group Separation**: The space between distinct groups must be at least 2.5× larger than the space between elements within a group.

## Step-by-step workflow
1. **Inventory discrete concepts**: List the distinct ideas or items that must be communicated on the slide.
2. **Cluster related sub-elements**: For each concept, cluster its icon, header, description, and metric into an atomic unit.
3. **Tighten intra-cluster spacing**: Set internal vertical gaps between header, metric, and description to 0.08–0.15 in.
4. **Widen inter-cluster spacing**: Separate adjacent concept clusters by 0.4–0.6 in of open canvas.
5. **Frame with container cards**: Wrap each cluster in a subtle background card (`#F8FAFC` fill with `#E2E8F0` 1 pt border).

## Specifics & examples
- **Atomic KPI Card Layout (Height 3.2 in, Width 3.6 in)**:
  - Metric Header: `14 pt Bold`, `#64748B`, `top = 0.30 in`.
  - Big Number: `44 pt Bold`, `#0F172A`, `top = 0.55 in` (Gap: 0.05 in below header).
  - Trend Indicator: `14 pt Semi-Bold`, `#16A34A`, `top = 1.35 in` (Gap: 0.10 in below number).
  - Descriptive Caption: `13 pt Regular`, `#475569`, `top = 1.70 in`.
- **Spacing Math**:
  - Intra-card element gap: `0.05 in – 0.15 in`.
  - Inter-card horizontal gap: `0.40 in` (nearly 3× intra-card gap).

## Common mistakes
- Floating captions equidistant between two charts, leaving the viewer confused about which chart it describes.
- Placing icons far above their associated text labels.
- Spreading KPI sub-elements across the entire vertical height of a card.

## Review checklist
- [ ] Each label is noticeably closer to its subject than to adjacent items.
- [ ] Inter-group spacing is at least 2.5× wider than intra-group spacing.
- [ ] Complex multi-item concepts are enclosed in subtle container cards.
- [ ] The relationship between each header, value, and explanation is unambiguous.

## Related skills
- pptx-grids-and-alignment
- pptx-whitespace-and-breathing-room
- pptx-visual-hierarchy
- pptx-quote-and-key-metric-slides
