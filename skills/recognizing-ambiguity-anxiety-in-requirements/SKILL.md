---
name: recognizing-ambiguity-anxiety-in-requirements
description: Use this skill when identifying anxiety and paralysis caused by vague, conflicting, or shifting technical specifications, guiding stakeholders to clarity.
---
# Recognizing Ambiguity Anxiety in Technical Requirements

## When to use
Use this skill when engineers freeze, procrastinate, over-engineer, or express intense anxiety when faced with vague feature briefs, shifting product roadmaps, or unstated business assumptions.

## Core principles
- **Ambiguity Generates Severe Cognitive Threat**: The human brain perceives ambiguity as risk. In engineering, vague requirements ("Make the search fast and intuitive") trigger analysis paralysis, fear of building the wrong thing, and burnout.
- **Procrastination is an Emotional Regulation Problem**: When an engineer stalls on starting a ticket for 4 days, they are rarely lazy; they are terrified of investing days of work into an architecture that will be rejected due to unwritten expectations.
- **Concrete Strawmen Force Decision-Making**: Stakeholders rarely know what they want in the abstract, but they immediately know what they *don't* want when presented with a concrete prototype or API contract.
- **Scope Fencing**: Defining what is explicitly *out of scope* provides more psychological safety than trying to specify an infinite feature list.

## Step-by-step workflow
1. **Detect ambiguity paralysis**: Look for endless architecture debates, zero code progress, excessive research rabbit holes, or expressions of dread.
2. **Normalize the difficulty**: Reassure the team that the confusion stems from incomplete problem definitions, not their technical capability.
3. **Draft a rapid "Strawman" contract**: Write a 1-page mock JSON schema, CLI interface, or user flow representing one concrete interpretation.
4. **Conduct a collaborative boundary-setting session**:
   - What must this system do in v1?
   - What will this system explicitly *refuse* to do in v1?
5. **Establish rapid feedback loops**: Agree on daily 5-minute check-ins to validate assumptions before code solidifies.

## Behavioral guidelines & dialogue examples
- **Dialogue Example (Unfreezing an Anxious Developer)**:
  - *Stuck Developer*: "Product gave me this 2-sentence ticket: 'Integrate AI recommendations into customer checkout'. I've spent three days reading vector database whitepapers, looking at Redis modules, thinking about latency... I haven't written a single line of code. I feel completely overwhelmed."
  - *Clarity Guide*: "It makes total sense that you're stuck—that ticket isn't a specification; it's a wish. Trying to build a vector search engine when Product might just want 'show the top 3 popular items in the category' is terrifying.
  
  Let's stop reading whitepapers. Together, we are going to write a 5-line JSON mock showing 3 hardcoded product recommendations returned over a simple `/recommendations` endpoint. We will take that mock to the Product Manager at 2:00 PM and ask: 'If the API returns this, does it satisfy your goal for v1?' That will instantly force them to define what they actually need."

## Common mistakes & pitfalls
- Berating an engineer for missing a deadline on a ticket whose acceptance criteria were never defined.
- Spending three months building an elaborate, over-engineered system to cover every conceivable ambiguous interpretation.
- Waiting in silent frustration for stakeholders to spontaneously produce perfect technical specifications.

## Verification checklist
- [ ] Ambiguity paralysis is recognized as an emotional reaction to missing specifications.
- [ ] Vague requirements are intercepted and clarified using concrete strawman proposals.
- [ ] Explicit "Out of Scope" boundaries are defined and agreed upon in writing.
- [ ] The engineer is unblocked with a minimal, validated v1 milestone.

## Related skills
- active-listening-paraphrasing-clarification
- gentle-redirection-unrealistic-expectations
- cognitive-overload-simplification-support
- psychological-safety-in-technical-dialogue
