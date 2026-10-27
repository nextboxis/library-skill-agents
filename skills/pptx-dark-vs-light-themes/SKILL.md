---
name: pptx-dark-vs-light-themes
description: Use this skill when deciding between dark and light theme presentation canvases based on room lighting, display hardware, and executive context.
---
# Dark vs. Light Themes for Slides

## When to use
Use this skill when initiating a new presentation deck, choosing the overarching canvas theme for keynotes, executive boardrooms, or printed leave-behind decks.

## Design principles
- **Context Determines Theme**: Dark themes excel on high-contrast OLED/LED stages and dim keynote halls; light themes excel in bright boardrooms and printed reports.
- **Read-Ahead Asymmetry**: Decks intended as read-ahead memos or printed handoffs must use a light theme to preserve ink and read comfortably on paper.
- **True Black Avoidance**: On dark slides, avoid pure `#000000`; use deep slate (#0F172A) or rich charcoal (#121826) to prevent high-frequency visual vibration.
- **Font Weight Compensation**: White text on dark backgrounds appears optically heavier than dark text on white; reduce font weight from Bold to Semi-Bold on dark slides.

## Step-by-step workflow
1. **Analyze viewing medium**: Determine if the deck will be projected on a dim stage, presented in a sunlit conference room, or sent as a PDF memo.
2. **Select canvas palette**:
   - For bright rooms/memos: Light Canvas (`#FFFFFF` or `#F8FAFC`).
   - For keynotes/dim halls: Dark Canvas (`#0F172A` or `#1E1E2E`).
3. **Calibrate typography contrast**: Verify text meets minimum 4.5:1 ratio against the chosen canvas.
4. **Adjust card container opacity**: Use subtle borders (`#334155` on dark, `#E2E8F0` on light) and 4–8% tint fills for card containers.
5. **Standardize entire deck**: Never oscillate between dark and light slides at random; maintain one dominant theme with exceptions only for title/closing slides.

## Specifics & examples
- **Recommended Light Canvas Specs**:
  - Background: `#FFFFFF` or `#F8FAFC` (Slate 50).
  - Primary Text: `#0F172A` (Slate 900 - 40 pt bold title, 16 pt regular body).
  - Surface Card: `#FFFFFF` with `1 pt solid #E2E8F0` border.
- **Recommended Dark Canvas Specs**:
  - Background: `#0F172A` (Slate 900).
  - Primary Text: `#F8FAFC` (Slate 50 - 40 pt semi-bold title, 16 pt regular body).
  - Surface Card: `#1E293B` (Slate 800) with `1 pt solid #334155` border.
  - Accent Color: `#38BDF8` (Sky 400 - high visibility on dark).

## Common mistakes
- Alternating dark and light slide backgrounds back-and-forth, blinding the audience on transitions.
- Delivering a pitch deck on a dark background intended for printing, wasting toner and creating black streaks.
- Using thin, light grey text (#64748B) on dark backgrounds, rendering body text completely illegible.

## Review checklist
- [ ] Theme selection matches presentation room lighting and distribution format.
- [ ] Dark theme uses deep slate/charcoal rather than harsh pure `#000000`.
- [ ] Font weights are calibrated to avoid glowing or blurriness on dark slides.
- [ ] Theme remains consistent across the deck without jarring background inversions.

## Related skills
- pptx-color-palettes
- pptx-contrast-and-legibility
- pptx-design-consistency
- pptx-accessibility-and-screen-readers
