---
name: pptx-export-optimization-and-delivery
description: Use this skill when compressing presentation file size, embedding fonts, exporting vector PDFs, and preparing bulletproof delivery decks.
---
# Export Optimization and Presentation Delivery

## When to use
Use this skill when preparing final decks for emailing, public download, boardroom projection, web sharing, or archiving.

## Design principles
- **File Size Discipline**: Keep total deck size under 25 MB for reliable email attachment and mobile download; compress bloated high-res images.
- **Font Embedding or System Fallbacks**: Either embed TrueType/OpenType fonts into the `.pptx` or restrict typography strictly to universal system fonts.
- **Dual Format Delivery**: Always provide both the native `.pptx` file (for presenting) and an immutable vector `.pdf` (for distribution and archiving).
- **Metadata Scrubbing**: Remove internal author names, draft comments, track changes, and hidden revision history prior to external distribution.

## Step-by-step workflow
1. **Compress heavy media**:
   - Resample images to 150 DPI for on-screen projection (or 220 DPI for high-res print).
   - Convert uncompressed PNG photos to optimized JPEG (85% quality).
2. **Scrub document properties**:
   - Clear personal author names, company IDs, and internal file paths from core XML properties.
3. **Verify font compatibility**:
   - If using custom fonts, enable "Embed fonts in the file" in PowerPoint options.
4. **Generate vector PDF export**:
   - Export via PowerPoint or LibreOffice: `soffice --headless --convert-to pdf deck.pptx`.
5. **Final delivery package**: Deliver `<presentation_name>_vFinal.pptx` and `<presentation_name>_vFinal.pdf`.

## Specifics & examples
- **Headless Optimization and PDF Export Command**:
  ```bash
  # 1. Convert to clean vector PDF
  soffice --headless --convert-to pdf presentation.pptx
  
  # 2. Inspect file size
  ls -lh presentation.pptx presentation.pdf
  ```
- **Metadata Scrubbing in python-pptx**:
  ```python
  from pptx import Presentation
  
  prs = Presentation("deck.pptx")
  core_props = prs.core_properties
  core_props.author = "Antigravity Systems"
  core_props.company = "Enterprise Architecture"
  core_props.last_modified_by = "Automated Generator"
  core_props.comments = ""
  prs.save("deck_cleaned.pptx")
  ```

## Common mistakes
- Emailing a 150 MB PowerPoint presentation full of uncompressed 48-megapixel camera photos that bounces from client inboxes.
- Using a niche downloaded font without embedding it, causing PowerPoint to substitute Times New Roman on the client's laptop.
- Sending a deck with hidden slides containing confidential internal pricing or draft speaker notes.

## Review checklist
- [ ] Presentation file size is optimized (< 25 MB for email distribution).
- [ ] Fonts are either universal system fonts or safely embedded.
- [ ] Both `.pptx` and high-fidelity `.pdf` versions are prepared.
- [ ] Hidden internal slides, author metadata, and draft comments are scrubbed.

## Related skills
- pptx-slide-visual-review-and-qa
- pptx-system-fonts-and-fallbacks
- pptx-python-pptx-foundations
- pptx-design-consistency
