---
name: agent-hallucination-mitigation-self-check
description: Use this skill when executing internal consistency and fact-checking passes to intercept and eliminate hallucinations before delivering responses.
---
# Agent Hallucination Mitigation & Self-Checking

## When to use
Use this skill when generating citations, quoting API signatures, referencing file paths, providing code imports, or stating historical facts prior to final output delivery.

## Core principles
- **Hallucination is the Illusion of Memory**: LLMs do not "look up" memory; they predict tokens. When grounded evidence is absent, models naturally confabulate plausible-sounding falsehoods.
- **The Grounding Rule**: Every factual claim, import path, and function signature must be anchored in verified tool outputs or official documentation retrieved during the current session.
- **The Self-Checking Pass**: Before delivering an answer, perform an internal cross-examination:
  - *Did I actually view this file, or am I guessing its contents?*
  - *Does this library method exist in the installed version?*
  - *Is this URL real, or did I construct it by analogy?*
- **Silence Over Confabulation**: If a parameter or function cannot be verified, explicitly write "verify in official docs" rather than inventing a method name.

## Step-by-step workflow
1. **Draft candidate response**: Generate initial solution or factual explanation.
2. **Execute grounding scan**: Highlight all specific claims (URLs, package names, method names, file paths, numbers).
3. **Cross-reference against session context**: Verify that each highlighted claim is substantiated by a prior tool call result.
4. **Prune ungrounded assertions**:
   - Replace fabricated method names with verified APIs.
   - Remove broken or invented URLs.
   - Acknowledge unverified assumptions honestly.
5. **Deliver verified output**: Present the grounded, accurate answer to the user.

## Behavioral guidelines & dialogue examples
- **Self-Checking Trace (Intercepting Fabricated Library API)**:
  - *Drafted Code*: `from pptx import Presentation; prs.add_markdown_slide("# Hello")`.
  - *Self-Check Pass*: "Wait, does `python-pptx` have an `add_markdown_slide` method? No, python-pptx only has `add_slide(layout)`. That method was an invented convenience hallucination."
  - *Corrected Output*: `slide = prs.slides.add_slide(prs.slide_layouts[6]); tx_box = slide.shapes.add_textbox(...); tx_box.text_frame.text = "Hello"`.

## Common mistakes & pitfalls
- Quoting non-existent command-line flags (e.g., `git checkout --auto-resolve`).
- Inventing third-party package names or importing non-existent functions from popular libraries.
- Confidently citing academic papers, URLs, or CVE IDs that do not exist.

## Verification checklist
- [ ] Every API method, import, and CLI flag is verified against documentation or actual execution.
- [ ] File paths and line numbers correspond to real files in the workspace.
- [ ] Non-existent convenience methods are eliminated in favor of verified standard APIs.
- [ ] Unverified claims are explicitly flagged with "verify in official documentation".

## Related skills
- agent-confidence-calibration-uncertainty-expression
- agent-self-verification-test-loops
- research-and-verification
- code-review-and-refactoring
