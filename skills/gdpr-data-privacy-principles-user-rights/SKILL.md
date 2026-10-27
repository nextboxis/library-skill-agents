---
name: gdpr-data-privacy-principles-user-rights
description: Use this skill when designing data pipelines, handling EU user data, and implementing GDPR core principles and data subject rights.
---
# GDPR Data Privacy Principles & User Rights

## When to use
Use this skill when designing user databases, logging infrastructure, data retention policies, or implementing GDPR Article 15–20 Data Subject Access Requests (DSARs).

## Core principles
- **Privacy by Design and by Default (Article 25)**: Data protection cannot be bolted on as an afterthought; it must be an intrinsic architectural requirement.
- **The Core Seven GDPR Principles**:
  1. *Lawfulness, Fairness, Transparency*: Clear consent or legitimate interest.
  2. *Purpose Limitation*: Collect data only for declared purposes.
  3. *Data Minimization*: Collect only the absolute minimum data required.
  4. *Accuracy*: Keep records up-to-date and correctable.
  5. *Storage Limitation*: Delete data as soon as the purpose expires.
  6. *Integrity & Confidentiality*: Encrypt at rest and in transit.
  7. *Accountability*: Maintain auditable records of processing activities (ROPA).
- **Core Data Subject Rights**: Right to Access (Art 15), Right to Rectification (Art 16), Right to Erasure / "Be Forgotten" (Art 17), Right to Portability (Art 20).

## Step-by-step workflow
1. **Map personal data flows**: Identify every database table, log file, analytics stream, and third-party vendor handling EU citizen data.
2. **Establish lawful processing bases**: Tag data collections with explicit legal grounds (Consent, Contractual Necessity, Legal Obligation).
3. **Implement automated erasure routines (Right to be Forgotten)**:
   - Hard-delete or cryptographically shred user records upon verified request.
   - Propagate deletions to replicas, backups, and analytics warehouses.
4. **Enforce retention TTLs**: Configure automated table TTLs to purge stale logs and sessions after 30–90 days.
5. **Implement DSAR Export Handler**: Provide machine-readable JSON exports for portability requests.

## Behavioral guidelines & dialogue examples
- **Architectural Implementation (Right to Erasure)**:
  - *Flawed Design*: Soft-deleting by setting `is_deleted = true` in the user table, leaving PII forever visible to database dumps and backups.
  - *Compliant Architecture*: Anonymizing or overwriting PII:
    `UPDATE users SET name = 'DELETED', email = concat('anon_', id, '@deleted.local'), ip_address = NULL WHERE id = $1;`
    And executing key-shredding for encrypted blobs associated with that user UUID.

## Common mistakes & pitfalls
- Dumping user email addresses, IP addresses, or device IDs into unencrypted application log files.
- Assuming GDPR applies only to companies physically located inside Europe (it applies to any entity processing EU residents' data).
- Failing to sign Data Processing Agreements (DPAs) with cloud and SaaS sub-processors.

## Verification checklist
- [ ] Data collection is strictly minimized to necessary functional fields.
- [ ] Explicit consent or contractual lawful bases are documented.
- [ ] Automated workflows handle user data export and deletion requests within 30 days.
- [ ] Logs and analytics are scrubbed of unhashed PII and IP addresses.

## Related skills
- safe-handling-of-personally-identifiable-information
- ccpa-cpra-california-privacy-rights
- india-dpdp-act-digital-data-protection-compliance
- consulting-qualified-legal-counsel-boundaries
