---
name: web-audio-api
description: Use this skill when synthesizing sounds, analyzing audio frequencies, processing spatial audio, or applying filters in browsers using Web Audio API.
---
# Web Audio API

## When to use
Use this skill when developing browser audio synthesizers, real-time audio visualizers, interactive games, notification chimes, or audio processing tools.

## Prerequisites
- Modern browser supporting `AudioContext` and web audio nodes.
- Basic understanding of signal processing, frequency (Hz), gain, and oscillators.

## Step-by-step workflow
1. **Initialize AudioContext**: Create an `AudioContext` inside a user-gesture handler (click/keydown) to satisfy browser autoplay policies.
2. **Create audio sources**: Generate synthetic tones using `OscillatorNode` or decode recorded audio files via `context.decodeAudioData()`.
3. **Assemble routing graph**: Chain audio nodes from source through processing nodes (`GainNode`, `BiquadFilterNode`, `AnalyserNode`) to `context.destination`.
4. **Schedule parameter changes**: Use `setValueAtTime`, `linearRampToValueAtTime`, or `exponentialRampToValueAtTime` for click-free volume transitions.
5. **Manage context lifecycle**: Call `context.suspend()` and `context.close()` when audio playback completes to free hardware resources.

## Commands / code examples
```ts
export class SoundEffectsEngine {
  private ctx: AudioContext | null = null;

  private ensureContext(): AudioContext {
    if (!this.ctx) {
      this.ctx = new (window.AudioContext || (window as unknown as { webkitAudioContext: typeof AudioContext }).webkitAudioContext)();
    }
    if (this.ctx.state === 'suspended') {
      this.ctx.resume();
    }
    return this.ctx;
  }

  public playNotificationChime(): void {
    const ctx = this.ensureContext();
    const now = ctx.currentTime;

    const osc = ctx.createOscillator();
    const gain = ctx.createGain();

    osc.type = 'sine';
    osc.frequency.setValueAtTime(587.33, now); // D5
    osc.frequency.exponentialRampToValueAtTime(880.00, now + 0.15); // A5

    // Prevent audio clipping using smooth envelope
    gain.gain.setValueAtTime(0, now);
    gain.gain.linearRampToValueAtTime(0.3, now + 0.02);
    gain.gain.exponentialRampToValueAtTime(0.0001, now + 0.4);

    osc.connect(gain);
    gain.connect(ctx.destination);

    osc.start(now);
    osc.stop(now + 0.4);
  }
}
```

## Common mistakes & pitfalls
- Instantiating `AudioContext` on page load before user interaction, triggering browser autoplay policy warnings.
- Changing gain or frequency instantly without ramp functions, resulting in audible audio pops and clicks.
- Failing to disconnect unused audio nodes, causing audio graph memory leaks.

## Verification checklist
- [ ] `AudioContext` initializes or resumes exclusively in response to user interaction.
- [ ] Gain adjustments utilize smooth exponential/linear ramps.
- [ ] Audio nodes disconnect cleanly after playback finishes.
- [ ] Volume levels are balanced to avoid clipping distortion.

## Related skills
- canvas-api-2d-graphics
- browser-dom-manipulation-events
- performance-code-review-complexity-allocations
- web-workers-multithreading
