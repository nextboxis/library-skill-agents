---
name: web-components-custom-elements
description: Use this skill when authoring framework-agnostic Custom Elements, Shadow DOM encapsulations, and HTML templates using the Web Components standard.
---
# Web Components and Custom Elements

## When to use
Use this skill when building reusable, framework-independent UI widgets, micro-frontend building blocks, or shared enterprise component libraries.

## Prerequisites
- Deep familiarity with modern JavaScript (ES6+ classes, lifecycle callbacks).
- Understanding of the DOM tree, events, and CSS encapsulation.

## Step-by-step workflow
1. **Extend HTMLElement**: Create an ES6 class extending `HTMLElement`.
2. **Attach Shadow DOM**: In the `constructor`, call `super()` and attach a shadow root using `this.attachShadow({ mode: 'open' })`.
3. **Implement lifecycle methods**: Connect behaviors inside `connectedCallback`, `disconnectedCallback`, and `attributeChangedCallback`.
4. **Declare observed attributes**: Provide a static `get observedAttributes()` getter returning an array of tracked attribute strings.
5. **Register the custom element**: Call `customElements.define('my-element', MyElement)` ensuring the tag name contains a mandatory hyphen.

## Commands / code examples
```ts
class StatusBadge extends HTMLElement {
  static get observedAttributes() {
    return ['status'];
  }

  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
  }

  connectedCallback() {
    this.render();
  }

  attributeChangedCallback(name: string, oldValue: string, newValue: string) {
    if (oldValue !== newValue) {
      this.render();
    }
  }

  render() {
    if (!this.shadowRoot) return;
    const status = this.getAttribute('status') || 'offline';
    const isOnline = status === 'online';

    this.shadowRoot.innerHTML = `
      <style>
        :host { display: inline-block; font-family: system-ui, sans-serif; }
        .badge {
          display: inline-flex; align-items: center; gap: 0.375rem;
          padding: 0.25rem 0.5rem; border-radius: 9999px; font-size: 0.75rem; font-weight: 500;
          background: ${isOnline ? '#dcfce7' : '#f3f4f6'};
          color: ${isOnline ? '#166534' : '#374151'};
        }
        .dot { width: 6px; height: 6px; border-radius: 50%; background: ${isOnline ? '#22c55e' : '#9ca3af'}; }
      </style>
      <span class="badge">
        <span class="dot"></span>
        <slot>${status}</slot>
      </span>
    `;
  }
}

customElements.define('status-badge', StatusBadge);
```

## Common mistakes & pitfalls
- Forgetting the required hyphen in custom element tag names (e.g., using `<badge>` instead of `<status-badge>`).
- Performing DOM rendering or accessing child elements inside the `constructor` instead of `connectedCallback`.
- Forgetting to clean up global event listeners attached outside the shadow root in `disconnectedCallback`.

## Verification checklist
- [ ] Element tag name contains at least one hyphen (`-`).
- [ ] Shadow DOM is initialized in `constructor` and rendered in `connectedCallback`.
- [ ] Tracked attributes are listed in `static get observedAttributes()`.
- [ ] Component cleans up timers and listeners when disconnected from the DOM.

## Related skills
- browser-dom-manipulation-events
- html5-semantic-web
- micro-frontends-module-federation
- javascript-es2024-deep-dive
