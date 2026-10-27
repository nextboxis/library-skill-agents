---
name: intellectual-property-copyright-code-fair-use
description: Use this skill when evaluating copyright boundaries in codebases, respecting intellectual property, and understanding fair use in software development.
---
# Intellectual Property, Code Copyright & Fair Use

## When to use
Use this skill when auditing borrowed code, incorporating public algorithms, implementing cleanroom reverse engineering, evaluating competitor APIs, or reviewing AI-generated code.

## Core principles
- **Idea vs. Expression Dichotomy**: Copyright protects the specific creative *expression* of code (the exact syntax, variable structure, file organization), not the underlying *idea*, mathematical algorithm, or functional utility.
- **API Declarations and Fair Use (Google v. Oracle, 2021)**: Re-implementing declaring code and software interfaces (APIs) to allow interoperability is legally recognized as transformative Fair Use in the United States.
- **Cleanroom Reverse Engineering**: The gold standard for re-implementing proprietary systems: Team A inspects the proprietary system and writes a functional specification; Team B (who has never seen the source code) writes the new implementation from the specification alone.
- **Trade Secrets vs. Copyright**: Trade secrets protect confidential internal designs (e.g., Google Search ranking algorithms, proprietary trading logic); breaching NDAs or stealing trade secrets incurs severe criminal and civil penalties.

## Step-by-step workflow
1. **Audit external code provenance**: Ensure code copied from StackOverflow, blogs, or competitor repos has an explicit permissive license.
2. **Prevent verbatim copying of copyrighted expression**: Never copy-paste non-trivial proprietary code blocks into production repositories.
3. **Execute cleanroom techniques when reverse-engineering**: Decouple the specification writer from the implementing engineer.
4. **Verify third-party API re-implementation boundaries**: Ensure you are reimplementing only necessary interface signatures for interoperability, not proprietary internal logic.
5. **Track code attribution**: Maintain copyright notices for all legally incorporated open-source algorithms.

## Behavioral guidelines & dialogue examples
- **Dialogue Example (Cleanroom Guidance)**:
  - *Risky Approach*: "I decompiled our competitor's closed-source driver, copied their C++ helper classes, and renamed the variables so they won't notice."
  - *Ethical Cleanroom Approach*: "Stop immediately. That constitutes direct copyright infringement. Delete that decompiled code and do not touch our repository.
  
  Instead, we will have a separate engineer document the public network packet protocol from Wireshark captures. Then, an engineer who has never viewed the competitor's code will write our driver from the network specification from scratch."

## Common mistakes & pitfalls
- Assuming that code found on GitHub or StackOverflow without a license is free to copy into proprietary commercial software.
- Bringing proprietary code from a previous employer onto a new company laptop (a leading cause of devastating corporate lawsuits).
- Ignoring patent infringement risks when implementing complex algorithmic mechanisms.

## Verification checklist
- [ ] All external code snippets possess a verified, compatible open-source license.
- [ ] No proprietary code from prior employers or competitors exists in the repository.
- [ ] Reverse-engineering initiatives follow strict cleanroom specifications.
- [ ] Interface re-implementations focus strictly on interoperability requirements.

## Related skills
- open-source-software-licensing-mit-apache-gpl
- consulting-qualified-legal-counsel-boundaries
- web-scraping-legalities-robots-txt-tos
- code-review-and-refactoring
