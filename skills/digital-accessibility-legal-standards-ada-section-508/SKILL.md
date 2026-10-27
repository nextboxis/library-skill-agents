---
name: digital-accessibility-legal-standards-ada-section-508
description: Use this skill when evaluating web applications for legal digital accessibility compliance under ADA Title III, Section 508, and WCAG 2.2 AA.
---
# Digital Accessibility: ADA Title III, Section 508 & WCAG

## When to use
Use this skill when auditing public commercial websites, enterprise SaaS applications, or government portals for legal compliance with ADA Title III, Section 508, and WCAG 2.2 AA.

## Core principles
- **Accessibility is a Civil Right, Not an Optional Feature**: Federal courts and the US Department of Justice (DOJ) classify public commercial websites as "places of public accommodation" under ADA Title III; inaccessible sites face thousands of federal lawsuits annually.
- **The Legal Standard: WCAG 2.2 Conformance Level AA**:
  - *Perceivable*: Text alternatives (alt text), video captions, 4.5:1 color contrast.
  - *Operable*: 100% keyboard accessibility, zero keyboard traps, accessible focus indicators.
  - *Understandable*: Predictable navigation, clear form error identification and suggestions.
  - *Robust*: Compatible with assistive technologies (screen readers, braille displays).
- **Accessibility Overlays are Legally Ineffective**: Third-party JavaScript "accessibility widgets/overlays" do not protect against ADA lawsuits; true compliance requires native semantic HTML and ARIA markup.
- **Section 508 and Government Procurement (VPAT)**: Selling software to the US federal government legally mandates providing a Voluntary Product Accessibility Template (VPAT) documenting conformance.

## Step-by-step workflow
1. **Execute automated accessibility scan**: Run Axe-core, Pa11y, or Lighthouse to catch the 30–40% of issues detectable via static analysis.
2. **Perform 100% Keyboard-Only Navigation Audit**: Unplug the mouse; verify every button, link, modal, and form control can be operated using `Tab`, `Enter`, `Space`, and arrow keys.
3. **Verify Visible Focus Rings**: Ensure interactive elements maintain high-contrast focus rings (`outline: 2px solid #2563EB`).
4. **Test with Native Screen Readers**: Navigate core user flows using NVDA (Windows), VoiceOver (macOS/iOS), or TalkBack (Android).
5. **Remediate form controls and error messaging**: Ensure every input has a programmatic `<label>` and dynamic error messages are announced via `aria-live`.

## Behavioral guidelines & dialogue examples
- **Remediating an Inaccessible Custom Button**:
  - *Inaccessible (Sued under ADA)*:
    `<div class="btn" onclick="submitOrder()">Submit Order</div>`
    *(Screen readers announce this as plain text; keyboard users cannot tab to it or press Enter).*
  - *Fully Accessible & Legally Compliant*:
    `<button type="button" class="btn" onclick="submitOrder()">Submit Order</button>`
    *(Native keyboard focus, Enter/Space activation, and screen reader role built-in).*

## Common mistakes & pitfalls
- Buying cheap AI "accessibility overlay" scripts hoping to avoid lawsuits, which often makes screen reader navigation worse and attracts predatory litigators.
- Hiding focus outlines (`outline: none`) because a designer thinks they look "ugly".
- Using icon-only buttons without `aria-label` or visually hidden screen reader text.

## Verification checklist
- [ ] All interactive elements are fully operable via keyboard alone with visible focus rings.
- [ ] Text meets minimum 4.5:1 contrast against its background (3:1 for large text).
- [ ] Images and icons have meaningful alternative text or `aria-hidden="true"` if decorative.
- [ ] Custom components utilize standard semantic HTML elements rather than `div` tags.

## Related skills
- accessibility-and-ux
- consulting-qualified-legal-counsel-boundaries
- frontend-and-ui
- software-architecture-and-system-design
