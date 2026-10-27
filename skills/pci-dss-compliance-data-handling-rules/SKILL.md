---
name: pci-dss-compliance-data-handling-rules
description: Use this skill when architecting payment flows, complying with PCI DSS rules, minimizing Cardholder Data Environment (CDE) scope, and tokenizing cards.
---
# PCI DSS Compliance & Payment Data Architecture

## When to use
Use this skill when designing e-commerce checkout flows, processing credit card transactions, integrating payment gateways (Stripe, Adyen, Braintree), or preparing for PCI audits.

## Core principles
- **The Golden Rule of PCI DSS: Reduce CDE Scope to Zero**: Never let raw Primary Account Numbers (PAN), CVVs, or expiration dates touch your application servers, memory, or databases. Outsource collection to PCI-certified iframes and tokenizers.
- **Cardholder Data vs. Sensitive Authentication Data (SAD)**:
  - *Cardholder Data (PAN, Cardholder Name, Expiration)*: Can be stored if strongly encrypted, hashed, or truncated.
  - *Sensitive Authentication Data (CVV/CVC, Full Magnetic Stripe Data, PINs)*: **NEVER STORE AFTER AUTHORIZATION UNDER ANY CIRCUMSTANCES**, even if encrypted.
- **Hosted Fields / iFrames (SAQ A vs. SAQ D)**: Using hosted payment iframes qualifies the business for SAQ A (minimal self-assessment); touching raw card data subjects the entire infrastructure to SAQ D (massive annual audit costing hundreds of thousands of dollars).

## Step-by-step workflow
1. **Integrate client-side hosted payment fields**: Use Stripe Elements, Braintree Drop-in, or Adyen Web Components to collect card data directly inside a third-party iframe.
2. **Receive opaque payment tokens**: Ensure your server receives only a safe token (e.g., `tok_1N3k...`) representing the card.
3. **Never log raw card parameters**: Audit nginx logs, application middleware, and error trackers to confirm PANs and CVVs never appear.
4. **Truncate PANs for display**: If displaying card history, show only the last 4 digits (e.g., `Visa ending in 4242`).
5. **Verify annual SAQ self-assessment**: Complete the appropriate Self-Assessment Questionnaire matching your scoped architecture.

## Behavioral guidelines & dialogue examples
- **Correct Zero-Scope Architecture**:
  1. User enters card into Stripe Elements iframe (hosted on Stripe's PCI Level 1 servers).
  2. Stripe returns token `pm_12345` to customer browser.
  3. Customer browser sends `pm_12345` to your application backend.
  4. Your backend calls Stripe API with token to charge $50.
  5. Your database stores only: `stripe_customer_id`, `last4: "4242"`, `brand: "Visa"`.
  6. **Result**: Your servers never touched raw card data; CDE scope is completely eliminated.

## Common mistakes & pitfalls
- Storing CVV security codes in a database "temporarily" to retry failed charges.
- Accepting credit card numbers over plain HTML form inputs posted directly to application backends.
- Taking credit card details over unrecorded customer support telephone calls or chat logs.

## Verification checklist
- [ ] Raw PANs and CVVs are collected exclusively via certified third-party hosted iframes.
- [ ] Sensitive Authentication Data (CVV) is never stored after transaction authorization.
- [ ] Application servers and databases handle only opaque tokens and masked last-4 digits.
- [ ] Logging systems are audited to ensure zero credit card numbers appear in log streams.

## Related skills
- safe-handling-of-personally-identifiable-information
- application-and-api-security
- consulting-qualified-legal-counsel-boundaries
- devops-cloud-and-infrastructure
