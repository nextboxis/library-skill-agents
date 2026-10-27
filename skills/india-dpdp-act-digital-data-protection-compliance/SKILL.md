---
name: india-dpdp-act-digital-data-protection-compliance
description: Use this skill when architecting systems complying with India's Digital Personal Data Protection (DPDP) Act, consent, and processing mandates.
---
# India DPDP Act Compliance & Data Architecture

## When to use
Use this skill when designing digital services, fintech apps, or cloud platforms serving users in India, complying with the Digital Personal Data Protection Act (DPDP Act).

## Core principles
- **Explicit, Granular, Free Consent**: Consent must be clear, specific, informed, unconditional, and available in English and all 22 scheduled Indian languages.
- **The Data Principal & Data Fiduciary Relationship**: The user is the "Data Principal"; the company processing data is the "Data Fiduciary", held legally accountable for breaches and misuse.
- **Significant Data Fiduciaries (SDF)**: Entities processing massive volumes of sensitive data face heightened mandates: Data Protection Officers (DPO) based in India, mandatory Data Protection Impact Assessments (DPIAs), and annual audits.
- **Child Data Safeguards**: Prohibits behavioral monitoring, targeted advertising, or processing likely to cause detrimental harm to children under 18 without verifiable parental consent.

## Step-by-step workflow
1. **Implement multilingual consent notices**: Provide clear, plain-language consent notices with language selectors covering major regional languages (Hindi, Tamil, Telugu, Bengali, etc.).
2. **Build Consent Withdrawal Mechanisms**: Ensure withdrawing consent is as easy, fast, and accessible as granting consent.
3. **Enforce Purpose Limitation & Deletion**: When the specified purpose is fulfilled or consent is withdrawn, erase personal data unless retention is mandated by law (e.g., RBI banking rules).
4. **Prepare Data Breach Notification Procedures**: Establish rapid internal incident response protocols to notify the Data Protection Board of India (DPBI) and affected Data Principals in the event of a breach.
5. **Implement Grievance Redressal Architecture**: Provide an in-app portal for users to register privacy complaints, with tracked SLAs for resolution.

## Behavioral guidelines & dialogue examples
- **Consent Banner Architecture**:
  - *Non-Compliant*: Pre-checked boxes or burying consent in a 40-page terms of service agreement.
  - *DPDP-Compliant*: Granular opt-in toggles:
    - [ ] Process phone number for account authentication (Required)
    - [ ] Share location data for personalized delivery (Optional)
    - [ ] Send promotional WhatsApp updates (Optional)
    - Plain Language Notice: "You can withdraw your consent at any time in Profile Settings."

## Common mistakes & pitfalls
- Relying on pre-ticked consent checkboxes or forced bundling of unrelated permissions.
- Tracking children's behavioral data or serving targeted ads to minors.
- Failing to designate a local Grievance Officer and DPO within Indian jurisdiction.

## Verification checklist
- [ ] Consent notices are granular, unconditional, and available in scheduled Indian languages.
- [ ] Users can withdraw consent as easily as it was given.
- [ ] Children's data processing adheres to parental consent and zero behavioral tracking.
- [ ] Rapid breach reporting mechanisms to the Data Protection Board of India are operational.

## Related skills
- gdpr-data-privacy-principles-user-rights
- safe-handling-of-personally-identifiable-information
- ccpa-cpra-california-privacy-rights
- consulting-qualified-legal-counsel-boundaries
