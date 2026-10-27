---
name: publishing-ctf-writeups-security-portfolio
description: Use this skill when documenting Capture The Flag solutions and security vulnerability research into a professional offensive/defensive portfolio.
---
# Publishing CTF Writeups & Security Research Portfolio

## When to use
Use this skill after solving complex CTF challenges, uncovering CVEs, or building defensive detections to demonstrate practical cybersecurity capabilities to employers.

## Core principles
- **Pedagogical Clarity over Flexing**: Great security writeups teach the underlying vulnerability mechanism, explain the attacker's mental model, and detail defensive remediations.
- **Responsible Disclosure Ethics**: Never publish writeups on active, live CTF competitions or unpatched zero-day vulnerabilities in production software.
- **The 'Failed Attempts' Narrative**: Documenting hypotheses that failed and how you pivoted demonstrates realistic penetration-testing grit and analytical reasoning.
- **Reproducible Exploit Proofs**: Include sanitized, well-commented exploit scripts and network packet captures allowing readers to verify findings locally.

## Step-by-step workflow
1. Confirm the CTF competition has concluded or official embargo has lifted.
2. Structure writeup: Challenge Overview, Reconnaissance, Vulnerability Identification, Exploit Development, Flag Capture, Remediation.
3. Document tool commands (`nmap`, `ghidra`, `burpsuite`, `pwntools`) with exact command flags.
4. Provide the complete, sanitized Python exploit script.
5. Add a 'Defensive Takeaway' section explaining how the application should have been secured.
6. Publish on a personal technical blog or GitHub repository with clean markdown.

## Specifics & examples
- **Writeup Structure Header**:
  ```markdown
  # HTB: FormatStringMaster (Hard - Binary Exploitation)
  - **Target**: x86_64 ELF binary, Full RELRO, Canary, NX enabled, No PIE.
  - **Vulnerability**: Unchecked `printf(user_input)` format string vulnerability.
  - **Exploitation Path**: Leaked stack canary -> Overwrote GOT entry via `%n` -> Executed `system('/bin/sh')`.
  - **Remediation**: Use `printf("%s", user_input)` to treat input strictly as string literal.
  ```

## Common mistakes & pitfalls
- Posting raw exploit scripts without explaining why the exploit works.
- Publishing solutions during active competitions, violating competitive ethics.
- Omitting the defensive fix and remediation section.

## Verification checklist
- [ ] Competition is closed and embargo is officially lifted.
- [ ] Exploit methodology and underlying vulnerability are thoroughly explained.
- [ ] Defensive remediation instructions are included.

## Related skills
- technical-project-case-study-showcase
- personal-developer-portfolio-website-design
- building-public-devlog-in-public
- talks-meetups-technical-speaking-slides
