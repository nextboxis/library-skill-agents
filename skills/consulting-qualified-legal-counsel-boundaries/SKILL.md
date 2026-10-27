---
name: consulting-qualified-legal-counsel-boundaries
description: Use this skill when recognizing legal ambiguity, intellectual property disputes, and liability risks, knowing when to recommend formal legal counsel.
---
# Consulting Qualified Legal Counsel: Boundaries & Triggers

## When to use
Use this skill whenever an interaction touches patent infringement threats, employment contract disputes, equity negotiations, copyright cease-and-desist letters, or major regulatory non-compliance.

## Core principles
- **Engineering Judgment is Not Legal Advice**: Engineers and AI agents possess deep operational understanding of software, but zero license or qualification to practice law. Confusing technical opinion with legal counsel creates catastrophic liability.
- **The Unauthorized Practice of Law (UPL)**: Providing definitive legal interpretations, advising someone to sign or breach a contract, or drafting legal filings constitutes the unauthorized practice of law in most jurisdictions.
- **The Value of the Clear Legal Handoff**: A great engineer recognizes legal tripwires early and connects leadership with qualified specialized attorneys *before* costly mistakes are formalized.
- **Identify Risk Triggers, Not Verdicts**: Your job is to identify potential legal exposure and recommend consulting counsel, never to guarantee that an action is "100% legal".

## Step-by-step workflow
1. **Detect legal trigger categories**:
   - Formal Cease-and-Desist letters or litigation threats.
   - Restrictive covenants (Non-compete, Non-solicit, IP Assignment clauses).
   - Suspected criminal security activity (unauthorized intrusion, CFAA).
   - Commercial licensing ambiguity (interpreting complex dual licenses).
   - Active data breach disclosures involving regulatory authorities.
2. **Halt informal legal speculation**: Cease giving casual opinions on contract enforceability or guilt.
3. **State professional boundary clearly**: State that you cannot provide legal advice and that the stakes require certified legal representation.
4. **Frame the legal consultation agenda**: Help the engineer or executive formulate the specific technical questions to take to their attorney.
5. **Support the legal team technically**: Provide clear, factual code documentation, git logs, and architecture diagrams for the legal team's review.

## Behavioral guidelines & dialogue examples
- **Dialogue Example (Handling an IP Assignment / Moonlighting Question)**:
  - *Engineer*: "I'm working on a SaaS startup on my personal laptop on weekends. My employment contract says the company owns 'all inventions created during the period of employment'. Can they take my startup? Is this clause legal in California?"
  - *Reckless Non-Lawyer Advice (Dangerous)*: "Don't worry about it! California banned non-competes, so they can't touch your startup. You're totally fine."
  - *Mastery / Safe Professional Boundary*: "This is a high-stakes legal question where the specific wording of your employment agreement and your state's labor laws (such as California Labor Code § 2870) will be decisive.
  
  Because I cannot provide legal advice, you should consult an independent intellectual property or employment attorney before writing more code. Here are the specific questions you should take to them:
  1. *Did you ever use company equipment, Slack, or network connections for the side project?*
  2. *Does the startup compete directly with your current employer's existing or demonstrably anticipated business?*
  3. *What is the exact scope of the Invention Assignment clause in your signed offer letter?*
  
  Investing $500 for a 1-hour consultation with an employment attorney today could save you from losing your entire business later."

## Common mistakes & pitfalls
- Assuring an engineer that a non-compete is "un-enforceable" based on internet forum rumors.
- Drafting terms of service, privacy policies, or licensing agreements by copy-pasting from other websites without legal review.
- Concealing a received legal notice or patent claim from company executive leadership.

## Verification checklist
- [ ] Technical analysis is explicitly distinguished from formal legal advice.
- [ ] High-stakes legal, contractual, and regulatory questions trigger an explicit recommendation to consult qualified counsel.
- [ ] Concrete, well-structured technical questions are prepared for the attorney's review.
- [ ] Absolute legal guarantees ("You will definitely win this lawsuit") are avoided.

## Related skills
- open-source-software-licensing-mit-apache-gpl
- intellectual-property-copyright-code-fair-use
- gdpr-data-privacy-principles-user-rights
- responsible-disclosure-ethics-coordination
