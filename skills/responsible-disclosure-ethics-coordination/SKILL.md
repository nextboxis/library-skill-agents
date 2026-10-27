---
name: responsible-disclosure-ethics-coordination
description: Use this skill when coordinating vulnerability disclosures, negotiating remediation timelines, and balancing public safety with vendor transparency.
---
# Responsible Vulnerability Disclosure & Ethical Coordination

## When to use
Use this skill when discovering security vulnerabilities, coordinating with vendor security teams, submitting bug bounty reports, or preparing public CVE disclosures.

## Core principles
- **Primacy of Public Safety**: The ultimate goal of vulnerability research is protecting users, not personal prestige or extorting vendors.
- **The Standard 90-Day Policy (Google Project Zero)**: Vendors are granted 90 days to patch before public disclosure, with a 14-day grace period if a patch is actively being finalized.
- **Active Exploitation Exception**: If a zero-day is actively being weaponized in the wild, the timeline compresses to 7 days to protect the broader ecosystem.
- **No Extortion, No Coercion**: Demanding payment or threatening public release before a reasonable remediation window violates security ethics and federal law.

## Step-by-step workflow
1. **Document the vulnerability rigorously**: Create a non-destructive Proof of Concept (PoC) demonstrating impact without exfiltrating customer data.
2. **Locate established security intake channels**: Check `security.txt`, vulnerability disclosure policies (VDP), or security contacts.
3. **Submit encrypted report**: Use vendor PGP keys or secure intake portals to share reproduction steps, CVSS vector, and suggested fixes.
4. **Establish mutual communication cadence**: Check in every 14–30 days for engineering progress and patch release schedules.
5. **Coordinate synchronized release**: Publish technical advisories only after the vendor's patch has been deployed to users.

## Behavioral guidelines & dialogue examples
- **Dialogue Example (Professional Disclosure Opening)**:
  - *Extortionist (Unethical)*: "I found a remote code execution bug in your payment API. Pay me $10,000 in Bitcoin or I dump the database on Twitter tomorrow."
  - *Responsible Researcher (Ethical Mastery)*:
    "Dear Security Team,
    
    I have identified an authorization bypass vulnerability affecting your customer billing portal (endpoint `/v1/invoices/{id}`). A non-destructive PoC demonstrates that authenticated users can view arbitrary tenant invoices by altering the parameter.
    
    I have safely tested this only against my own test account. In accordance with standard coordinated disclosure practices, I am granting a 90-day window (until January 15) for remediation before publishing an advisory. Please confirm receipt of this encrypted report."

## Common mistakes & pitfalls
- Exfiltrating thousands of real customer database records to "prove" a SQL injection vulnerability.
- Dropping 0-day exploits on social media out of frustration with slow vendor replies without exhausting escalation paths.
- Demanding bounties from companies that do not operate a commercial bug bounty program.

## Verification checklist
- [ ] Proof of Concept is non-destructive and accesses zero unauthorized personal data.
- [ ] Initial report is transmitted securely via PGP or verified vendor portals.
- [ ] A reasonable remediation timeline (typically 90 days) is granted.
- [ ] Public disclosure is coordinated synchronously with vendor patch releases.

## Related skills
- application-and-api-security
- offensive-security-pentesting
- consulting-qualified-legal-counsel-boundaries
- safe-handling-of-personally-identifiable-information
