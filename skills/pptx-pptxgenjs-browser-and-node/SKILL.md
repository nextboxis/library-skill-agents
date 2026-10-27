---
name: pptx-pptxgenjs-browser-and-node
description: Use this skill when generating presentations in JavaScript/TypeScript environments (Node.js, Next.js, browser) using PptxGenJS.
---
# PptxGenJS in Node.js and Browser

## When to use
Use this skill when authoring presentation generators in full-stack JavaScript, serverless TypeScript microservices, or client-side web applications.

## Design principles
- **Standard 16:9 Layout Preset**: PptxGenJS defaults to `LAYOUT_16x9` (10 x 5.625 in) or custom coordinates; set `layout = 'LAYOUT_16x9'` explicitly.
- **Hex Color Strings Without Hash**: PptxGenJS takes hex color strings *without* the leading `#` (e.g., `'0F172A'`, `'2563EB'`).
- **Object-Based Slide Definitions**: Define slide content cleanly using declarative JavaScript object descriptors.
- **Promise-Based File Generation**: Handle export asynchronously using `writeFile()` or `write('blob')` in web browsers.

## Step-by-step workflow
1. **Import and instantiate library**:
   - `import pptxgen from "pptxgenjs"; const pres = new pptxgen();`.
2. **Define slide dimensions**:
   - `pres.layout = 'LAYOUT_16x9';` (or define custom 13.333 x 7.500 in layout).
3. **Add slides**:
   - `const slide = pres.addSlide();`.
4. **Insert elements**:
   - Add Title: `slide.addText("Enterprise System Roadmap", { x: 0.8, y: 0.6, w: 11.7, fontSize: 32, bold: true, color: '0F172A' });`.
   - Add Card Shape: `slide.addShape(pres.ShapeType.roundRect, { x: 0.8, y: 1.8, w: 3.6, h: 4.6, fill: { color: 'F8FAFC' }, line: { color: 'E2E8F0', width: 1 } });`.
5. **Export deck**:
   - `await pres.writeFile({ fileName: "presentation.pptx" });`.

## Specifics & examples
- **Runnable Node.js / TypeScript Example**:
  ```typescript
  import pptxgen from "pptxgenjs";
  
  async function generateDeck() {
    const pres = new pptxgen();
    pres.layout = "LAYOUT_16x9";
    
    // Add title slide
    const slide = pres.addSlide();
    
    // Action Title
    slide.addText("Autonomous Incident Remediation", {
      x: 0.8,
      y: 0.6,
      w: 11.7,
      h: 0.8,
      fontSize: 32,
      fontFace: "Arial",
      bold: true,
      color: "0F172A"
    });
    
    // Feature Card
    slide.addShape(pres.ShapeType.roundRect, {
      x: 0.8,
      y: 1.8,
      w: 5.6,
      h: 4.8,
      fill: { color: "FFFFFF" },
      line: { color: "2563EB", width: 2 },
      rectRadius: 0.1
    });
    
    slide.addText("Key Benchmark Finding", {
      x: 1.1,
      y: 2.1,
      w: 5.0,
      fontSize: 20,
      bold: true,
      color: "0F172A"
    });
    
    await pres.writeFile({ fileName: "output_node.pptx" });
  }
  ```

## Common mistakes
- Including `#` in color hex strings (e.g. `'#2563EB'`), which can break rendering in PptxGenJS.
- Forgetting that PptxGenJS units are in inches by default, leading to massive coordinate errors.
- Failing to await the `writeFile()` promise in asynchronous Node pipelines.

## Review checklist
- [ ] Presentation layout is explicitly configured for 16:9 widescreen.
- [ ] Color values are 6-character hex strings without leading `#`.
- [ ] Coordinates and dimensions use inches consistently.
- [ ] Async export (`writeFile` / `write`) is properly awaited.

## Related skills
- pptx-python-pptx-foundations
- pptx-code-layout-helpers-and-design-tokens
- pptx-slide-masters-and-layouts
- pptx-design-consistency
