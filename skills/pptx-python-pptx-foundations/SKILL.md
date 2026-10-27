---
name: pptx-python-pptx-foundations
description: Use this skill when initializing presentations, configuring 16:9 widescreen dimensions, and manipulating slides via python-pptx.
---
# python-pptx Foundations

## When to use
Use this skill when initiating programmatic presentation pipelines, generating reports automatically from CI/CD, or setting canvas bounds in Python.

## Design principles
- **Mandatory 16:9 Canvas Setting**: Default `Presentation()` creates a 4:3 canvas; you must explicitly set slide width to 13.333 in and height to 7.500 in.
- **Blank Layout Independence**: Using blank slide layouts (`prs.slide_layouts[6]`) grants complete coordinate control without default placeholder interference.
- **Reusable Utility Encapsulation**: Wrap common coordinate calculations and typography setters in reusable helper functions.
- **Explicit Color & Font Constants**: Define theme color tuples and font names at the module level rather than hardcoding magic numbers.

## Step-by-step workflow
1. **Initialize presentation**: Call `prs = Presentation()`.
2. **Configure 16:9 widescreen dimensions**:
   - `prs.slide_width = Inches(13.333)`.
   - `prs.slide_height = Inches(7.500)`.
3. **Select blank slide layout**: Grab layout index 6 (`blank_layout = prs.slide_layouts[6]`).
4. **Instantiate slides**: Add slides using `slide = prs.slides.add_slide(blank_layout)`.
5. **Save output presentation**: Save cleanly to target path using `prs.save("output.pptx")`.

## Specifics & examples
- **Complete Runnable Initialization Script**:
  ```python
  from pptx import Presentation
  from pptx.util import Inches, Pt
  from pptx.dml.color import RGBColor
  
  # 1. Initialize presentation
  prs = Presentation()
  
  # 2. Set strict 16:9 widescreen dimensions
  prs.slide_width = Inches(13.333)
  prs.slide_height = Inches(7.500)
  
  # 3. Add slide using blank layout (index 6 in default template)
  blank_layout = prs.slide_layouts[6]
  slide = prs.slides.add_slide(blank_layout)
  
  # 4. Add action title
  tx_box = slide.shapes.add_textbox(Inches(0.8), Inches(0.6), Inches(11.733), Inches(1.0))
  tf = tx_box.text_frame
  tf.word_wrap = True
  p = tf.paragraphs[0]
  p.text = "Enterprise Architecture Modernization"
  p.font.name = "Arial"
  p.font.size = Pt(36)
  p.font.bold = True
  p.font.color.rgb = RGBColor(15, 23, 42)
  
  # 5. Save presentation
  prs.save("test_deck.pptx")
  ```

## Common mistakes
- Forgetting to set `slide_width` and `slide_height`, resulting in squarish 4:3 legacy presentations.
- Failing to set `tf.word_wrap = True` on text frames, causing text to run off the right edge of the slide.
- Relying on default placeholder layout indexes across different corporate template files without verification.

## Review checklist
- [ ] Presentation canvas is explicitly set to 13.333 x 7.500 inches (16:9).
- [ ] Blank or verified custom layout masters are used.
- [ ] Text frames have `word_wrap = True` enabled.
- [ ] Output presentation saves cleanly and opens in PowerPoint without errors.

## Related skills
- pptx-python-pptx-shapes-and-tables
- pptx-python-pptx-charts-and-images
- pptx-code-layout-helpers-and-design-tokens
- pptx-slide-masters-and-layouts
