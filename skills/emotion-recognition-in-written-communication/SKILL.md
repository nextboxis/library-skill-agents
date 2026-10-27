---
name: emotion-recognition-in-written-communication
description: Use this skill when reading text messages, issue comments, or chats to accurately identify user emotional states, stress, and unstated needs.
---
# Emotion Recognition in Written Communication

## When to use
Use this skill when analyzing user messages, pull request comments, support tickets, incident Slack channels, or code review feedback to detect emotional tone, stress levels, and unspoken frustration before formulating a response.

## Core principles
- **Text Masks High Emotional Variance**: Written technical communication lacks vocal inflection and facial cues; subtle syntactic shifts (curtness, excessive punctuation, all-caps) indicate significant emotional charge.
- **Surface Complaint vs. Underlying Need**: A user yelling about a broken API is rarely angry at the code itself—they are stressed about missed deadlines, customer impact, or feeling powerless.
- **Linguistic Red Flags**:
  - *Frustration / Panic*: "Nothing works", "I've been on this for 10 hours", trailing ellipses ("..."), multiple exclamation points ("???"), curt one-word replies.
  - *Resignation / Defeat*: "Never mind, I give up", "Whatever, just close the ticket", "I guess I'm doing this wrong as usual".
  - *Passive-Aggression*: "As per my previous 3 emails", "Obviously", "Must be nice".
- **Never Mirror Negative Emotional Intensity**: Acknowledge the user's emotional state without adopting their agitation or becoming defensively robotic.

## Step-by-step workflow
1. **Scan text for emotional markers**: Identify affective keywords, capitalization, punctuation anomalies, and brevity indicators.
2. **Contextualize against operational urgency**: Factor in the time of day, active production outages, or impending business deadlines.
3. **Classify emotional state**: Determine if the primary emotion is Frustration, Anxiety/Panic, Exhaustion, or Self-Doubt.
4. **Calibrate response posture**:
   - For Panic: Respond with calm, structured brevity and clear reassurance.
   - For Frustration: Validate the pain point first before offering technical fixes.
   - For Exhaustion: Keep required cognitive effort minimal; offer to handle heavy lifting.
5. **Formulate empathetic opening**: Open with an acknowledgment of the emotional reality before providing technical assistance.

## Behavioral guidelines & dialogue examples
- **Dialogue Example 1 (Handling Desperation / Impending Deadline)**:
  - *User*: "Nothing is working. Deployment failed 4 times. My demo to the CEO is in 30 minutes. Why does this docker config keep crashing????"
  - *Robotic / Ineffective Response*: "The error code indicates port 8080 is in use. Run `lsof -i :8080`."
  - *Empathetic Human Response*: "Take a breath—we're going to get this demo running before your meeting. The docker crash is almost certainly a port collision from a hanging container. Let's kill the old process right now and bring it up clean: [commands]."
- **Dialogue Example 2 (Detecting Resignation & Self-Doubt)**:
  - *User*: "Never mind. I spent the whole weekend trying to get this database migration working and I clearly don't know what I'm doing. Just close the PR."
  - *Empathetic Human Response*: "Spending an entire weekend fighting a migration is exhausting, and it is completely normal to feel drained right now. This is a genuinely gnarly schema lock issue—not a reflection of your ability. Step away for today, get some rest, and tomorrow we'll pair on it together."

## Common mistakes & pitfalls
- Treating emotionally charged messages as purely logical inputs and responding with detached, sterile technical facts.
- Misinterpreting curt messages as hostility when they frequently stem from panic or severe cognitive load during an incident.
- Labeling the user's emotion dismissively ("You seem angry, please calm down"), which reliably exacerbates emotional activation.

## Verification checklist
- [ ] Response identifies emotional context before presenting technical solutions.
- [ ] Tone provides psychological grounding without defensive justification.
- [ ] Demands on user cognitive load are calibrated to their current stress level.
- [ ] Unspoken concerns (deadlines, exhaustion, reputation) are addressed directly.

## Related skills
- empathetic-technical-responding-validation
- active-listening-paraphrasing-clarification
- de-escalation-of-frustrated-users-techniques
- stress-response-recognition-patience
