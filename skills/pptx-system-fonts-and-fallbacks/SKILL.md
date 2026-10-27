---
name: pptx-system-fonts-and-fallbacks
description: Use this skill when selecting universally available cross-platform fonts to prevent layout reflow, overlapping text, and missing glyph bugs.
---
# System Fonts and Safe Fallbacks

## When to use
Use this skill when building decks that will be opened across mixed operating systems (Windows, macOS, Linux, iPad), emailed to external clients, or presented via web viewers.

## Design principles
- **Cross-Platform Reflow Vulnerability**: If a computer lacks a deck's custom font, PowerPoint silently substitutes a fallback font with different character metrics, causing text overlap.
- **Core Font Metrics Disparity**: Arial and Helvetica have different line-height and letter-spacing metrics; substituting one for the other causes lines to wrap unpredictably.
- **TrueType / OpenType Embedding**: If using custom corporate fonts, they must be embedded in the `.pptx` file options or backed by an audited system fallback.
- **Standard System Font Universal Truth**: Fonts installed by default on both Windows and macOS guarantee 100% layout fidelity across all viewing devices.

## Step-by-step workflow
1. **Determine distribution channels**: Check if the deck will be delivered as an editable `.pptx` to external stakeholders or presented solely from your own laptop.
2. **Select cross-platform universal fonts**: Default to universally safe system fonts (Calibri, Arial, Trebuchet MS, Georgia, Segoe UI).
3. **Configure font embedding (if custom)**: In PowerPoint on Windows, navigate to `File -> Options -> Save -> Embed fonts in the file`.
4. **Test on secondary operating system**: Open the file on a machine running the alternate OS (e.g., test a macOS-authored deck on Windows 11).
5. **Inspect line-wrap boundaries**: Verify that slide action titles and card headers do not spill onto unexpected second or third lines.

## Specifics & examples
- **Universally Safe Cross-Platform Font Matrix**:
  - *Clean Corporate Sans*: **Calibri** (Windows & modern Office Mac standard).
  - *Universal High-Contrast Sans*: **Arial** (Pre-installed on 99%+ of Windows, Mac, Linux).
  - *Punchy Display Sans*: **Trebuchet MS** (Universal, excellent weight for titles).
  - *Refined Editorial Serif*: **Georgia** (Universal, designed specifically for screen legibility).
  - *Traditional Serif*: **Times New Roman** (Universal fallback).
- **Mac / Windows Equivalents (Be Cautious of Metric Shifts)**:
  - *macOS*: San Francisco (Apple system only - do NOT use in shared `.pptx`).
  - *Windows*: Segoe UI (Windows system only - will substitute on macOS).
  - *Universal Replacement*: Use **Arial** or **Calibri** for bulletproof fidelity.

## Common mistakes
- Designing a deck in Google Sans or custom corporate font without embedding it, causing unreadable Times New Roman substitution on client machines.
- Trusting that macOS-specific fonts like Helvetica Neue or Menlo will render on Windows laptops.
- Tightening text boxes so closely that a 2% font metric substitution forces an ugly line wrap.

## Review checklist
- [ ] Selected fonts exist natively across Windows, macOS, and standard Office distributions.
- [ ] If custom fonts are utilized, font embedding is explicitly activated in PowerPoint options.
- [ ] Text frames contain at least 15% horizontal safety buffer to accommodate minor font metric variances.
- [ ] Visual QA verifies identical line wraps across Windows and macOS test systems.

## Related skills
- pptx-font-pairing
- pptx-type-scale-and-hierarchy
- pptx-slide-visual-review-and-qa
- pptx-export-optimization-and-delivery
