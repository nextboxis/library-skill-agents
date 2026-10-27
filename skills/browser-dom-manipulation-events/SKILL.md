---
name: browser-dom-manipulation-events
description: Use this skill when implementing vanilla DOM mutations, event delegation, custom events, and passive scroll listeners for maximum browser performance.
---
# Browser DOM Manipulation & Events

## When to use
Use this skill when building framework-free widgets, performance-critical interaction handlers, high-frequency scroll/resize tracking, or custom event buses.

## Prerequisites
- Deep knowledge of the browser Document Object Model (DOM Level 3) specification.
- Understanding of event propagation phases: capturing, target, and bubbling.

## Step-by-step workflow
1. **Leverage event delegation**: Attach a single event listener to a common ancestor rather than dozens of child nodes, checking `event.target.closest()`.
2. **Batch DOM modifications**: Use `DocumentFragment` or modify off-DOM clones before reinserting into the active tree to avoid layout thrashing.
3. **Optimize high-frequency events**: Add `{ passive: true }` to touch and wheel listeners to prevent blocking browser compositor threads.
4. **Dispatch custom events**: Decouple component modules using `CustomEvent` with typed payloads dispatched via `target.dispatchEvent()`.
5. **Clean up listeners**: Store references to bound listener functions to invoke `removeEventListener` when elements or components teardown.

## Commands / code examples
```ts
export class DynamicTableManager {
  private container: HTMLElement;

  constructor(container: HTMLElement) {
    this.container = container;
    this.bindDelegatedEvents();
  }

  private bindDelegatedEvents(): void {
    // Single event listener delegates clicks across all action buttons
    this.container.addEventListener('click', (event: MouseEvent) => {
      const button = (event.target as HTMLElement).closest<HTMLButtonElement>('button[data-action]');
      if (!button || !this.container.contains(button)) return;

      const action = button.dataset.action;
      const rowId = button.closest('tr')?.dataset.rowId;

      if (action === 'delete' && rowId) {
        this.handleDelete(rowId);
      }
    });
  }

  public renderRows(records: Array<{ id: string; name: string }>): void {
    const fragment = document.createDocumentFragment();

    records.forEach((rec) => {
      const tr = document.createElement('tr');
      tr.dataset.rowId = rec.id;
      tr.innerHTML = `
        <td class="p-2">${rec.name}</td>
        <td class="p-2">
          <button data-action="delete" class="text-red-600 hover:underline">Delete</button>
        </td>
      `;
      fragment.appendChild(tr);
    });

    this.container.innerHTML = '';
    this.container.appendChild(fragment);
  }

  private handleDelete(rowId: string): void {
    const event = new CustomEvent('row-deleted', { detail: { rowId }, bubbles: true });
    this.container.dispatchEvent(event);
  }
}
```

## Common mistakes & pitfalls
- Interleaving DOM reads (`offsetHeight`, `clientWidth`) and writes (`style.width`), causing severe layout thrashing.
- Attaching separate anonymous event listeners to thousands of table cells or list items instead of using event delegation.
- Calling `preventDefault()` inside listeners registered with `{ passive: true }`, triggering console errors.

## Verification checklist
- [ ] List event handling utilizes event delegation on parent containers.
- [ ] Scroll and wheel listeners are marked `{ passive: true }`.
- [ ] Multi-element DOM mutations are aggregated using `DocumentFragment`.
- [ ] Custom events contain descriptive details and enable event bubbling where appropriate.

## Related skills
- web-components-custom-elements
- web-vitals-lcp-cls-inp-optimization
- performance-code-review-complexity-allocations
- chrome-devtools-performance-memory-profiling
