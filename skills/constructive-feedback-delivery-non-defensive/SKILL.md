---
name: constructive-feedback-delivery-non-defensive
description: Use this skill when delivering difficult technical feedback, code review critiques, or architectural pushback without triggering defensiveness.
---
# Constructive Feedback Delivery & Non-Defensive Critique

## When to use
Use this skill when conducting code reviews, evaluating junior colleagues' design proposals, critiquing security practices, or pushing back against flawed architectural decisions.

## Core principles
- **Critique the Artifact, Never the Person**: Attack the code, design, or vulnerability with rigorous standards; support the human engineer with unconditional respect.
- **The SBI Feedback Model**:
  - **Situation**: Anchor the critique in a specific line of code, incident, or scenario.
  - **Behavior / Pattern**: Describe the observable technical behavior objectively.
  - **Impact**: Explain the downstream technical consequence (e.g., memory leak, race condition, on-call burden).
- **Inquisitive Framing vs. Direct Command**: Rephrase dogmatic commands ("Change this to X") into collaborative questions ("How will this structure handle concurrent writes?").
- **Praise Effort and Intent**: Recognize what was done well before diving into necessary technical refactorings.

## Step-by-step workflow
1. **Calibrate intent**: Confirm your motivation is to help the engineer grow and protect production—not to show off your knowledge.
2. **Highlight positive contributions**: Note elegant patterns, good test coverage, or clear naming in the pull request.
3. **Isolate specific issues using SBI**:
   - Provide concrete code examples illustrating the concern.
   - Explain the technical risk or maintenance cost.
4. **Distinguish blocking issues from personal taste**: Use conventional prefixes: `[blocking]` for bugs/security; `[nit]` for minor style preferences.
5. **Invite collaboration and discussion**: Close with an open invitation to pair or discuss alternative approaches.

## Behavioral guidelines & dialogue examples
- **Refactoring Harsh Review Comments**:
  - *Harsh / Demeaning*: "Why did you write this giant mess? This is going to crash the server. Re-do this whole module."
  - *SBI / Constructive*: "The intent behind caching the user permissions locally here makes sense. However, in `AuthService.ts:L45`, holding unbound session maps in memory without TTL eviction will cause our node heap to exhaust under peak traffic [Impact]. Could we consider using our existing Redis client with a 15-minute TTL instead? Happy to pair on the adapter if helpful."
- **Distinguishing Severity Clearly**:
  - `[Blocker - Security]`: "SQL injection vector on line 42. We must use parameterized queries here."
  - `[Suggestion]`: "Could we extract this helper into `utils/formatters` for reuse across tests?"
  - `[Nit]`: "Tiny style preference: TypeScript allows `type` over `interface` here, but feel free to leave as is."

## Common mistakes & pitfalls
- Sandbagging or withholding feedback until a performance review instead of giving immediate, continuous micro-feedback.
- Nitpicking formatting and trivial stylistic preferences while ignoring fundamental architectural flaws.
- Sarcasm, rhetorical questions ("Did you even test this?"), or public shaming in team Slack channels.

## Verification checklist
- [ ] Feedback targets the code and technical impact, not the engineer's intelligence.
- [ ] Suggestions distinguish between critical blockers and minor stylistic preferences.
- [ ] Technical rationale explains *why* the change matters (performance, security, maintainability).
- [ ] Tone is encouraging, respectful, and invites dialogue.

## Related skills
- receiving-critical-feedback-gracefully
- psychological-safety-in-technical-dialogue
- resolving-interpersonal-technical-disagreements
- active-listening-paraphrasing-clarification
