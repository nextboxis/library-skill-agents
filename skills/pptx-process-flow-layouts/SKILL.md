---
name: pptx-process-flow-layouts
description: Use this skill when diagramming step-by-step workflows, customer journeys, data pipelines, and multi-stage lifecycle funnels.
---
# Process Flow Slide Layouts

## When to use
Use this skill when illustrating linear workflows, approval cycles, data ingestion pipelines, onboarding journeys, or engineering CI/CD processes.

## Design principles
- **Unambiguous Directionality**: Use explicit directional chevrons or connector arrows between stages to make flow sequence self-evident.
- **Consistent Stage Geometry**: Keep all stage containers identical in width, height, and typography so sequence—not shape—tells the story.
- **Stage Numbering**: Prefix each stage with a clean numeral (`01`, `02`, `03`) to reinforce sequential execution.
- **Subordinate Connectors**: Connector arrows should be subtle (`#94A3B8` or `#CBD5E1`) so they connect stages without competing with content.

## Step-by-step workflow
1. **Map workflow steps**: Deconstruct the process into 3 to 5 discrete, sequential stages.
2. **Calculate container distribution**: For 4 steps on a 16:9 canvas, allocate 2.500 in per card with 0.444 in arrow gaps.
3. **Render step cards**: Create rectangular or rounded cards (`top = 2.2 in`, `height = 3.8 in`) with 1 pt solid `#E2E8F0` borders.
4. **Insert transition arrows**: Place right-pointing chevrons or thin arrow connectors centered vertically between cards (`top = 3.8 in`).
5. **Populate card details**:
   - Step Number: 14 pt bold accent pill (`#EFF6FF`, text `#1D4ED8`).
   - Step Name: 18 pt bold header (`#0F172A`).
   - Step Details: 13 pt regular bullets or prose (`#475569`).

## Specifics & examples
- **4-Stage Pipeline Coordinates (16:9 Canvas)**:
  - Left Margin: `0.800 in`, Content Width: `11.733 in`.
  - Card 1: `left = 0.800 in`, `top = 2.2 in`, `width = 2.500 in`, `height = 4.0 in`.
  - Arrow 1: `left = 3.350 in`, `top = 3.9 in`, `width = 0.350 in`, `height = 0.350 in`, color `#94A3B8`.
  - Card 2: `left = 3.800 in`, `top = 2.2 in`, `width = 2.500 in`, `height = 4.0 in`.
  - Arrow 2: `left = 6.350 in`, `top = 3.9 in`, `width = 0.350 in`, `height = 0.350 in`, color `#94A3B8`.
  - Card 3: `left = 6.800 in`, `top = 2.2 in`, `width = 2.500 in`, `height = 4.0 in`.
  - Arrow 3: `left = 9.350 in`, `top = 3.9 in`, `width = 0.350 in`, `height = 0.350 in`, color `#94A3B8`.
  - Card 4: `left = 9.800 in`, `top = 2.2 in`, `width = 2.500 in`, `height = 4.0 in`.

## Common mistakes
- Using complicated serpentine, curved, or looping arrows that confuse viewer orientation.
- Crowding 7+ microscopic stages onto one slide instead of grouping them into high-level phases.
- Using heavy, dark black connector arrows that dominate the slide visually over actual content.

## Review checklist
- [ ] Process contains no more than 5 distinct steps across the horizontal layout.
- [ ] Connector arrows align perfectly with card vertical centerlines.
- [ ] Each step features a distinct sequential number (01, 02, etc.).
- [ ] Card sizes and text baselines are identical across all steps.

## Related skills
- pptx-timeline-and-roadmap-layouts
- pptx-grids-and-alignment
- pptx-diagram-design-principles
- pptx-shape-based-custom-smartart
