---
name: pptx-diagram-design-principles
description: Use this skill when building technical architecture diagrams, system topologies, flywheels, and conceptual models using clean geometric blocks.
---
# Diagram Design Principles for Slides

## When to use
Use this skill when illustrating software architectures, cloud topologies, data flows, flywheel models, organizational structures, or entity relationships.

## Design principles
- **Hierarchical Layering**: Arrange system components into clean horizontal tiers (e.g., Client Layer -> API Gateway -> Microservices -> Data Layer).
- **Orthogonal Connectors**: Use clean right-angled or straight horizontal/vertical connectors; avoid diagonal or intersecting spaghetti lines.
- **Container Grouping**: Group related services inside larger boundary containers with light background tints (`#F8FAFC`) and dashed borders (`#CBD5E1`).
- **Consistent Element Sizing**: Give equivalent tier components identical rectangular widths (e.g., 2.0 in) and heights (e.g., 0.9 in).

## Step-by-step workflow
1. **Define architecture layers**: Map components into 3–4 horizontal or vertical functional tiers.
2. **Draw boundary containers**: Insert background cards for each tier (`fill = #F8FAFC`, `border = 1 pt dashed #94A3B8`).
3. **Place service node blocks**: Insert rounded rectangles (`fill = #FFFFFF`, `border = 1.5 pt solid #3B82F6`) centered in each tier.
4. **Route orthogonal connectors**: Connect service nodes using 1.5 pt stroke lines (`#64748B`) with small terminal arrowheads.
5. **Label protocol / payload**: Place 10–11 pt monospaced text on connectors indicating interaction protocols (e.g., `gRPC`, `HTTPS`, `Kafka`).

## Specifics & examples
- **3-Tier Cloud Architecture Coordinates (16:9 Canvas)**:
  - Usable Canvas: `left = 1.0 in`, `width = 11.333 in`.
  - Tier 1 (Ingestion / CDN): `top = 1.8 in`, `height = 1.1 in`, `fill = #EFF6FF`.
    - Nodes: 2 boxes (`width = 4.5 in`, `left = 1.5 in` and `left = 6.8 in`).
  - Tier 2 (Compute / Microservices): `top = 3.3 in`, `height = 1.3 in`, `fill = #F8FAFC`.
    - Nodes: 3 boxes (`width = 3.2 in`, `left = 1.5 in`, `left = 5.066 in`, `left = 8.633 in`).
  - Tier 3 (Storage & Analytics): `top = 5.0 in`, `height = 1.1 in`, `fill = #F1F5F9`.
    - Nodes: 2 database cylinders (`width = 4.5 in`, `left = 1.5 in` and `left = 6.8 in`).

## Common mistakes
- Drawing chaotic diagonal arrows that crisscross the diagram in every direction.
- Using 8 different shape types (cylinders, hexagons, diamonds, stars, ovals) without semantic meaning.
- Cramming 40 tiny boxes onto a single slide until text drops below 8 pt.

## Review checklist
- [ ] Architecture flows logically in one primary direction (top-to-bottom or left-to-right).
- [ ] Connectors are orthogonal (straight horizontal or vertical) with zero unnecessary crossings.
- [ ] Tier containers group related components with distinct boundary styling.
- [ ] All node labels and connector protocol text remain clearly readable (minimum 11 pt).

## Related skills
- pptx-grids-and-alignment
- pptx-shape-based-custom-smartart
- pptx-process-flow-layouts
- pptx-visual-hierarchy
