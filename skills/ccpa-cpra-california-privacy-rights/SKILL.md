---
name: ccpa-cpra-california-privacy-rights
description: Use this skill when implementing California consumer privacy rights (CCPA/CPRA), opt-out mechanisms, and sensitive personal data controls.
---
# CCPA/CPRA Compliance & California Privacy Rights

## When to use
Use this skill when processing California consumer data, implementing "Do Not Sell or Share My Personal Information" links, or configuring Sensitive Personal Information (SPI) limits.

## Core principles
- **The Definition of "Selling" and "Sharing"**: Under CCPA/CPRA, "selling" includes non-monetary exchanges (e.g., sharing third-party tracking cookies with ad networks for retargeting).
- **Core Consumer Rights (CPRA)**:
  - Right to Know / Access personal information collected.
  - Right to Delete personal information.
  - Right to Correct inaccurate personal information.
  - Right to Opt-Out of Sale or Sharing of personal information.
  - Right to Limit the Use of Sensitive Personal Information (SSNs, precise geolocation, biometrics, health data).
  - Right to Non-Discrimination for exercising privacy rights.
- **Global Privacy Control (GPC)**: Websites must honor automated browser-based opt-out signals (Global Privacy Control headers) as valid opt-out requests.

## Step-by-step workflow
1. **Audit third-party trackers & pixels**: Inspect client-side scripts (Meta Pixel, Google Tag Manager, ad trackers) that transmit identifiers.
2. **Deploy persistent "Do Not Sell or Share My Personal Information" link**: Place prominent link in site footer.
3. **Listen for Global Privacy Control (GPC)**: Inspect `navigator.globalPrivacyControl` in browser sessions and suppress ad-tracking scripts automatically if `true`.
4. **Implement Sensitive Personal Information (SPI) Limiting**: Provide a "Limit the Use of My Sensitive Personal Information" toggle.
5. **Maintain Consumer Request Verifications**: Validate identity before fulfilling disclosure or deletion requests to prevent identity theft.

## Behavioral guidelines & dialogue examples
- **Client-Side GPC Signal Handling**:
  ```javascript
  // Respecting Global Privacy Control (GPC) under CCPA/CPRA
  if (navigator.globalPrivacyControl) {
    console.log("GPC signal detected: Disabling third-party tracking pixels.");
    window['ga-disable-UA-XXXXX-Y'] = true;
    disableMarketingCookies();
  }
  ```

## Common mistakes & pitfalls
- Assuming that because no cash changes hands, user data is not being "sold" or "shared" to marketing networks.
- Charging higher prices or degrading core service quality when a user opts out of data selling.
- Failing to verify identity on deletion requests, allowing attackers to delete victim accounts via fraudulent DSARs.

## Verification checklist
- [ ] "Do Not Sell or Share My Personal Information" link is present and functional in footers.
- [ ] Global Privacy Control (GPC) browser signals are honored automatically.
- [ ] Sensitive Personal Information (SPI) usage can be limited by users.
- [ ] Identity verification protocols protect against fraudulent DSAR requests.

## Related skills
- gdpr-data-privacy-principles-user-rights
- safe-handling-of-personally-identifiable-information
- india-dpdp-act-digital-data-protection-compliance
- web-scraping-legalities-robots-txt-tos
