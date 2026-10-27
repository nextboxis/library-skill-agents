---
name: cryptography-export-regulations-compliance
description: Use this skill when distributing software containing strong encryption, navigating US EAR regulations, ECCN classification, and export controls.
---
# Cryptography Export Regulations & EAR Compliance

## When to use
Use this skill when distributing commercial software binaries, mobile apps, or SaaS products utilizing strong encryption (AES, RSA, ECC) outside the United States.

## Core principles
- **Encryption as Dual-Use Technology (US EAR)**: Under the US Export Administration Regulations (EAR), software containing strong cryptographic algorithms is classified as dual-use and subject to export controls managed by the Bureau of Industry and Security (BIS).
- **Export Control Classification Number (ECCN)**:
  - Most commercial software incorporating standard encryption falls under **ECCN 5D002** or **5D992** (Mass Market).
  - Publicly available open-source software published without restrictions generally qualifies for exclusion under EAR § 742.15(b).
- **The App Store & Play Store Encryption Declarations**: Apple and Google mandate that developers submit formal encryption declarations and export compliance documentation before distributing apps internationally.
- **Sanctioned Destinations and Denied Persons**: Distributing encryption software to embargoed nations (e.g., Cuba, Iran, North Korea, Syria) or entities on the Denied Persons List violates federal law regardless of open-source status.

## Step-by-step workflow
1. **Audit cryptographic capabilities**: Determine if software implements custom cryptography or leverages standard operating system/TLS libraries.
2. **Determine EAR qualification**:
   - Is the software published as open-source without fee? (Qualifies for open-source self-classification).
   - Is it commercial closed-source? (Evaluate Mass Market 5D992 classification).
3. **Complete Apple Export Compliance Declaration**:
   - Does the app use encryption? (Yes).
   - Is it exempt under Category 5, Part 2 (e.g., limited strictly to HTTPS/TLS)? (Yes -> No formal CCATS required).
4. **File Commodity Classification (CCATS) if required**: If software implements proprietary or non-standard cryptographic protocols, file formal CCATS with the US BIS.
5. **Enforce geographic sanctions filtering**: Maintain IP geofencing preventing downloads from sanctioned jurisdictions.

## Behavioral guidelines & dialogue examples
- **Standard Mobile App Store Encryption Disclosure**:
  - *Question*: "Does your app use encryption?"
  - *Guidance*: If your app makes HTTPS network calls, it uses encryption (TLS/AES). Answer "Yes".
  - *Follow-up*: "Does your app qualify for one of the exemptions in Category 5 Part 2?"
  - *Answer*: If your app uses encryption *solely* for standard data transmission over HTTPS, authentication, or digital signatures, answer "Yes". This waives the requirement for a formal BIS review number.

## Common mistakes & pitfalls
- Falsely claiming "No" on App Store encryption forms because "we didn't write the encryption, Apple's iOS networking did".
- Distributing custom end-to-end proprietary encryption software globally without consulting export control attorneys.
- Allowing downloads of proprietary crypto tools to sanctioned countries.

## Verification checklist
- [ ] All cryptographic algorithms utilized in the codebase are documented and categorized.
- [ ] App Store and Play Store encryption compliance declarations are answered accurately.
- [ ] Public open-source notifications are filed if required by EAR § 742.15.
- [ ] Export geofencing blocks distribution to comprehensively sanctioned jurisdictions.

## Related skills
- consulting-qualified-legal-counsel-boundaries
- applied-cryptography
- devops-cloud-and-infrastructure
- defensive-security-soc-dfir
