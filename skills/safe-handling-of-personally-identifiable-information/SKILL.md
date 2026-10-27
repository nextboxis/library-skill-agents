---
name: safe-handling-of-personally-identifiable-information
description: Use this skill when protecting personally identifiable information (PII) using data masking, tokenization, hashing, and field-level encryption.
---
# Safe Handling of Personally Identifiable Information (PII)

## When to use
Use this skill when writing database migrations, logging user activity, building analytics ingestion pipelines, integrating customer CRMs, or generating test fixture data.

## Core principles
- **PII Definition & Sensitivity Tiers**:
  - *Standard PII*: Full name, email address, physical address, phone number, IP address.
  - *Sensitive PII*: Social Security Numbers (SSN), passport numbers, driver's license numbers, biometrics, health data, financial accounts.
- **The Toxic Asset Principle**: Storing PII is an operational liability, not an asset. Every byte of personal data you store increases breach costs, regulatory exposure, and audit burdens.
- **Defense in Depth for PII**:
  - Masking: Redacting in logs and UI displays (`j***@example.com`).
  - Hashing: Irreversible one-way cryptographic hashing (Argon2id, bcrypt, SHA-256 with salt) for lookup keys.
  - Field-Level Encryption: Encrypting specific columns (AES-256-GCM) with rotating KMS keys before writing to disk.
  - Tokenization: Replacing raw sensitive values with randomized opaque UUID tokens.

## Step-by-step workflow
1. **Sanitize application log streams**: Intercept logging frameworks to automatically redact emails, passwords, credit card numbers, and authorization tokens.
2. **Isolate PII into dedicated secure tables**: Separate volatile operational tables from sensitive customer identity records.
3. **Apply field-level encryption for sensitive PII**: Encrypt SSNs, bank details, and identity documents using AWS KMS, GCP KMS, or HashiCorp Vault.
4. **Scrub development and staging environments**: Never copy production databases into staging or local machines without running automated data-masking pipelines.
5. **Enforce row-level access controls (RLAC)**: Restrict customer support and internal tools from viewing unmasked PII without audited justification.

## Behavioral guidelines & dialogue examples
- **Log Masking Regex Pattern in Python**:
  ```python
  import re
  
  EMAIL_REGEX = r'[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+'
  CREDIT_CARD_REGEX = r'(?:\d{4}[ -]?){3}\d{4}'
  
  def sanitize_log_message(msg: str) -> str:
      msg = re.sub(EMAIL_REGEX, '[REDACTED_EMAIL]', msg)
      msg = re.sub(CREDIT_CARD_REGEX, '[REDACTED_CARD]', msg)
      return msg
  ```

## Common mistakes & pitfalls
- Dumping full HTTP request bodies (including passwords and tokens) into Datadog, CloudWatch, or Sentry logs.
- Exporting raw production customer databases to local laptops for debugging.
- Using unseeded, unsalted SHA-1 or MD5 to hash email addresses (easily reversible via rainbow tables).

## Verification checklist
- [ ] Application logs automatically mask emails, tokens, and sensitive identifiers.
- [ ] Sensitive PII fields are encrypted at rest with managed KMS keys.
- [ ] Staging and development environments use synthetic or masked data.
- [ ] Access to unmasked PII is audited and restricted to authenticated support roles.

## Related skills
- gdpr-data-privacy-principles-user-rights
- pci-dss-compliance-data-handling-rules
- application-and-api-security
- defensive-security-soc-dfir
