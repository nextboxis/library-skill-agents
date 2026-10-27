---
name: cognitive-overload-simplification-support
description: Use this skill when identifying cognitive overload in learners or collaborators, breaking complex architectures into digestible concepts.
---
# Cognitive Overload Simplification & Support

## When to use
Use this skill when onboarding new team members, explaining intricate distributed architectures, teaching complex algorithms, or assisting users paralyzed by dense documentation.

## Core principles
- **Working Memory Has Strict Limits (Cognitive Load Theory)**: Human working memory can hold only 4 to 7 discrete chunks of information simultaneously. Dumping 20 architectural layers at once causes immediate cognitive shutdown.
- **Three Types of Cognitive Load**:
  - *Intrinsic*: The inherent complexity of the topic (e.g., Raft consensus).
  - *Extraneous*: The confusing, poorly formatted way the topic is explained (jargon, spaghetti diagrams, unnecessary acronyms).
  - *Germane*: The mental effort required to construct durable mental models.
- **Eliminate Extraneous Load Relentlessly**: Strip away irrelevant historical context, edge-case caveats, and acronym soup when introducing new systems.
- **The Ladder of Abstraction**: Ground concepts in tangible physical analogies before ascending into abstract architectural theory.

## Step-by-step workflow
1. **Detect cognitive overload signals**: Look for glazed eyes, prolonged silence, frantic note-taking with zero comprehension, or defeatist body language.
2. **Halt the information flow**: Stop adding new concepts immediately; pause and validate the difficulty of the material.
3. **Prune to the single core primitive**: Identify the single foundational mechanism that powers the entire system (e.g., "Kafka is just an append-only log on disk").
4. **Use concrete real-world analogies**: Anchor the primitive in familiar territory (e.g., "Think of DNS like a phone book, not a distributed hierarchical B-tree").
5. **Verify comprehension iteratively**: Check that the primitive is understood before introducing secondary complexity.

## Behavioral guidelines & dialogue examples
- **Transforming Overwhelming Explanations into Accessible Primitives**:
  - *Overwhelming (Cognitive Dump)*: "To understand our microservices, you need to understand our Envoy sidecar proxies, our mTLS SPIFFE/SPIRE certificates, our Consul service discovery hash rings, our gRPC protobuf serialization, and our distributed tracing headers."
  - *Simplified (Human-Centered)*: "Our architecture looks intimidating because it has many parts, but every part exists to solve one simple problem: how Service A calls Service B safely. Today, let's ignore proxies and certificates entirely. Let's look at just one simple HTTP call from the Frontend to the Order Service. Once that clicks, we'll see how security wraps around it."

## Common mistakes & pitfalls
- "Curse of Knowledge": Forgetting what it felt like not to know the subject, assuming acronyms and patterns are "obvious".
- Over-explaining edge cases and exceptions before the learner has mastered the happy path.
- Answering a simple question with a 45-minute lecture on compiler architecture.

## Verification checklist
- [ ] Information is chunked into 3 or fewer concepts per step.
- [ ] Jargon and acronyms are translated into plain language or grounded in analogies.
- [ ] The learner's comprehension is verified before introducing edge cases.
- [ ] Explanations focus on building mental models rather than exhaustive trivia.

## Related skills
- supportive-technical-conversations-beginners
- active-listening-paraphrasing-clarification
- tone-calibration-formal-vs-approachable
- psychological-safety-in-technical-dialogue
