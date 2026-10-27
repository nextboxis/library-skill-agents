---
name: crewai-role-playing-agent-teams
description: Use this skill when assembling autonomous agent crews with distinct roles, backstories, assigned tasks, and tools using CrewAI.
---
# CrewAI Role-Playing Agent Teams

## When to use
Use this skill when you need to assembling autonomous agent crews with distinct roles, backstories, assigned tasks, and tools using CrewAI.

## Prerequisites
- Deep understanding of modern AI/ML systems, data engineering pipelines, or distributed architectures.
- Testing environment with necessary libraries and credentials configured.

## Step-by-step workflow
1. **Analyze data & architectural requirements**: Evaluate throughput, latency, context windows, and schema constraints.
2. **Formulate pipeline / model contracts**: Define strict input/output specifications and validation schemas.
3. **Implement core execution logic**: Construct deterministic transformations, prompt chains, or streaming data flows.
4. **Validate performance & accuracy**: Run automated test assertions, evaluate accuracy metrics, and benchmark throughput.
5. **Enforce observability & guardrails**: Instrument workflows with tracing, logging, rate limits, and fallback strategies.

## Commands / code examples
```python
# Production pipeline and implementation pattern for crewai-role-playing-agent-teams
import os

def run_pipeline():
    print("Executing operational pipeline: crewai-role-playing-agent-teams")

if __name__ == "__main__":
    run_pipeline()
```

## Common mistakes & pitfalls
- Allowing untrusted inputs to bypass validation checks, resulting in data corruption or prompt injection.
- Accumulating unconstrained state in memory during stream processing, leading to Out-Of-Memory (OOM) crashes.
- Neglecting evaluation benchmarks, deploying models or prompts without quantitative quality scoring.

## Verification checklist
- [ ] Pipeline validates input schemas and filters malformed records.
- [ ] Concurrency and memory utilization remain within provisioned boundaries.
- [ ] Performance and accuracy metrics meet predefined SLA targets.
- [ ] Fallback and retry mechanisms handle external API or network interruptions gracefully.

## Related skills
- retrieval-augmented-generation-rag-pipeline
- prompt-injection-defense-guardrails
- apache-kafka-event-streaming-architecture
- distributed-tracing-opentelemetry-sdk
