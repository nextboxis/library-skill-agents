---
name: web-speech-api
description: Use this skill when implementing in-browser voice recognition (SpeechRecognition) and text-to-speech synthesis (SpeechSynthesis) via the Web Speech API.
---
# Web Speech API

## When to use
Use this skill when building voice search, hands-free accessibility controls, in-browser speech dictation, or natural-sounding voice prompts.

## Prerequisites
- Supported browser environment (Chromium browsers, Safari for basic speech).
- User microphone permissions granted over secure HTTPS origins.

## Step-by-step workflow
1. **Detect browser support**: Verify availability of `window.SpeechRecognition` or `window.webkitSpeechRecognition`.
2. **Configure speech recognition**: Set `continuous: true`, `interimResults: true`, and specify target language (`recognition.lang = 'en-US'`).
3. **Listen for transcription events**: Process real-time transcription chunks inside `onresult` checking `event.results[i].isFinal`.
4. **Configure speech synthesis**: Instantiate `SpeechSynthesisUtterance`, select voice from `speechSynthesis.getVoices()`, and adjust pitch/rate.
5. **Handle permission and errors**: Gracefully trap `not-allowed`, `no-speech`, and `network` events in `onerror`.

## Commands / code examples
```ts
export class VoiceController {
  private recognition: any = null;

  constructor(private onTranscript: (text: string, isFinal: boolean) => void) {
    const SpeechRecognition =
      (window as any).SpeechRecognition || (window as any).webkitSpeechRecognition;

    if (SpeechRecognition) {
      this.recognition = new SpeechRecognition();
      this.recognition.continuous = true;
      this.recognition.interimResults = true;
      this.recognition.lang = 'en-US';

      this.recognition.onresult = (event: any) => {
        for (let i = event.resultIndex; i < event.results.length; i++) {
          const transcript = event.results[i][0].transcript;
          const isFinal = event.results[i].isFinal;
          this.onTranscript(transcript, isFinal);
        }
      };
    }
  }

  public speak(text: string): void {
    if (!('speechSynthesis' in window)) return;
    window.speechSynthesis.cancel(); // Stop active utterances

    const utterance = new SpeechSynthesisUtterance(text);
    utterance.rate = 1.0;
    utterance.pitch = 1.0;
    window.speechSynthesis.speak(utterance);
  }

  public startListening(): void {
    if (this.recognition) this.recognition.start();
  }

  public stopListening(): void {
    if (this.recognition) this.recognition.stop();
  }
}
```

## Common mistakes & pitfalls
- Expecting full cross-browser parity without vendor prefix fallbacks (`webkitSpeechRecognition`).
- Calling `speechSynthesis.speak()` without canceling previous pending speech, causing queued speech backlog.
- Not providing clear visual feedback when microphone listening is actively recording.

## Verification checklist
- [ ] Checks for both standard and vendor-prefixed speech recognition interfaces.
- [ ] Distinguishes interim results from final transcripts for responsive UI updates.
- [ ] Handles microphone permission denial with helpful user guidance.
- [ ] Previous speech utterances are canceled before speaking new alerts.

## Related skills
- audio-stt-whisper-local-transcription
- tts-speech-synthesis-chatterbox-elevenlabs
- wcag-22-guidelines-conformance-levels
- browser-dom-manipulation-events
