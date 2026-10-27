---
name: resolving-interpersonal-technical-disagreements
description: Use this skill when mediating fierce architectural debates, language wars, or technical conflicts, focusing on objective criteria and mutual goals.",
---
# Resolving Interpersonal Technical Disagreements

## When to use
Use this skill when team members lock horns over architectural patterns (e.g., GraphQL vs. REST, Monolith vs. Microservices, SQL vs. NoSQL), PR approvals stall, or technical disputes turn personal.

## Core principles
- **Separate Identity from Architecture**: Technical disagreements turn toxic when engineers view their preferred pattern as an extension of their personal intelligence and identity.
- **Steelmanning the Counterargument**: You do not truly understand an architectural dispute until you can articulate the opposing engineer's argument better than they can.
- **Focus on Constraints, Not Ideology**: There are no universally "right" architectures—only trade-offs calibrated to specific constraints (team size, read/write ratios, latency SLAs, budget).
- **Disagree and Commit (Andy Grove / Amazon)**: Healthy teams debate vigorously, evaluate empirical data, make a decision, and then commit 100%—even those who advocated for an alternative.

## Step-by-step workflow
1. **De-escalate emotional tension**: Pause the debate and explicitly affirm mutual respect and shared organizational goals.
2. **Define the objective evaluation matrix**: Agree in advance on the concrete decision criteria (e.g., Latency < 50ms, Maintenance overhead, Time-to-market).
3. **Steelman both proposals**: Have each side explain the genuine strengths of the competing approach.
4. **Run a time-boxed spike / benchmark**: Instead of arguing in circles, build a minimal POC and test against the agreed criteria with real numbers.
5. **Formalize the decision in an ADR (Architecture Decision Record)**: Document the chosen path, rejected alternatives, and explicitly thank both sides for the rigor.

## Behavioral guidelines & dialogue examples
- **Dialogue Example (Mediating a Fierce Architectural Dispute)**:
  - *Engineer A*: "Microservices are the only modern way to build this. A monolith is legacy garbage."
  - *Engineer B*: "Microservices will drown our 4-person team in Kubernetes yaml and network latency. It's reckless resume-driven development."
  - *Mediator (Mastery)*: "Let's step back. We all want the same thing: a service that handles 10k RPS reliably without burning out our on-call rotation.
  
  Engineer B makes a crucial point: our team of 4 cannot afford the operational overhead of 8 independent CI/CD pipelines right now. And Engineer A is completely right that decoupling the payment engine from the catalog is essential so billing failures don't kill search.
  
  What if we build a modular monolith with strict internal package boundaries? We get the simplicity of single deployment today, with clean interfaces so we can spin out payments into a microservice next quarter when our team expands. How does that trade-off sound to both of you?"

## Common mistakes & pitfalls
- Forcing a compromise that creates a "Frankenstein" architecture combining the worst flaws of both options.
- Allowing debates to drag on for months in PR comments, paralyzing team progress.
- Harboring lingering resentment after a decision is made and undermining the chosen path.

## Verification checklist
- [ ] The disagreement is reframed from personal rivalry to shared optimization.
- [ ] An objective criteria matrix or empirical benchmark spike is used to evaluate options.
- [ ] An Architecture Decision Record (ADR) formalizes the rationale and trade-offs.
- [ ] All parties commit fully to the agreed path without passive-aggressive sabotage.

## Related skills
- active-listening-paraphrasing-clarification
- constructive-feedback-delivery-non-defensive
- building-rapport-trust-with-collaborators
- gentle-redirection-unrealistic-expectations
