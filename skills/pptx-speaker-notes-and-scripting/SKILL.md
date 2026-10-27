---
name: pptx-speaker-notes-and-scripting
description: Use this skill when authoring structured speaker notes, talk tracks, pacing cues, and Q&A backup details in presentation slides.
---
# Speaker Notes and Presentation Scripting

## When to use
Use this skill when preparing presenter talk tracks, rehearsing high-stakes keynotes, providing handover context for colleagues, or storing Q&A backup data.

## Design principles
- **Slide Minimal, Notes Substantive**: Keep slide text minimal (the "what") and put full verbal explanation, evidence, and nuance in the notes (the "why").
- **Structured Three-Part Note Format**:
  - `[CUE]`: Timing, transition prompt, or slide build direction.
  - `[TALK TRACK]`: Verbatim or bulleted speaking script in natural conversational voice.
  - `[Q&A BACKUP]`: Exact numbers, technical citations, and defense for tough questions.
- **Pacing Cues**: Include estimated elapsed time markers (`[Time: 04:30]`) to help the speaker stay on track.
- **Scannable Formatting**: Use line breaks, bold phrases, and short bullets so the speaker can glance down and resume instantly.

## Step-by-step workflow
1. **Access slide notes slide**: Access `notes_slide = slide.notes_slide`.
2. **Draft the transition hook**: Write a 1-sentence verbal hook connecting the previous slide to this one.
3. **Outline the talk track**:
   - Write 3–4 bulleted speaking points expanding on the slide's action title.
   - Emphasize the strategic implication rather than describing what is on screen.
4. **Compile Q&A defense points**: Add underlying data sources, methodology notes, and answers to foreseeable objections.
5. **Add timing markers**: Note target duration (e.g., "Spend: 90 seconds").

## Specifics & examples
- **python-pptx Speaker Notes Implementation**:
  ```python
  # Add structured speaker notes to a slide
  notes_slide = slide.notes_slide
  text_frame = notes_slide.notes_text_frame
  text_frame.text = (
      "[TIME: 03:00 | SPEND: 90s]

"
      "[TALK TRACK]:
"
      "Notice how our MTTR dropped immediately following the Q3 rollout. "
      "While manual triage previously cost us 42 minutes per incident, the autonomous "
      "agent cluster now isolates root causes in under 8 minutes.

"
      "[Q&A BACKUP]:
"
      "- Source: Datadog telemetry logs, August-October 2026.
"
      "- If asked about edge cases: Database lock contention incidents still require "
      "human approval before automated kill commands are dispatched."
  )
  ```

## Common mistakes
- Reading the slide bullet points verbatim aloud, boring the audience.
- Leaving notes blank, forcing the presenter to memorize complex statistical citations.
- Writing notes as an unbroken monolithic wall of text that is impossible to glance at while speaking.

## Review checklist
- [ ] Every substantive content slide contains structured speaker notes.
- [ ] Notes follow the structured format (Cue, Talk Track, Q&A Backup).
- [ ] Speaker notes explain the underlying "why" rather than reading slide bullets.
- [ ] Complex data points have exact source citations in the backup section.

## Related skills
- pptx-turning-notes-into-slides
- pptx-one-message-per-slide
- pptx-action-titles-and-takeaways
- pptx-narrative-arc-for-presentations
