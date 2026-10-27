---
name: solidjs-reactivity
description: Use this skill when building ultra-high-performance reactive web interfaces using SolidJS fine-grained signals, memos, and createEffect.
---
# SolidJS Reactivity

## When to use
Use this skill when building user interfaces where virtual DOM diffing overhead must be eliminated, or when working on high-frequency real-time dashboards.

## Prerequisites
- Node.js 18+ and Vite with `vite-plugin-solid`.
- Understanding of reactive programming and JavaScript closures.

## Step-by-step workflow
1. **Understand execution model**: SolidJS components run exactly once during setup; only the reactive primitives re-evaluate when dependencies change.
2. **Create signals**: Use `createSignal()` to store state; invoke the getter as a function (`count()`) to read value and track dependencies.
3. **Derive cached values**: Use `createMemo()` for computationally expensive derivations.
4. **Handle side effects**: Employ `createEffect()` for DOM manipulations or external side-effect synchronizations.
5. **Control control-flow**: Use Solid's built-in `<For>`, `<Show>`, and `<Switch>` primitives rather than JavaScript array `.map()` in JSX.

## Commands / code examples
```tsx
import { createSignal, createMemo, createEffect, For } from 'solid-js';

interface StockItem {
  ticker: string;
  price: number;
}

export function StockTicker() {
  const [stocks, setStocks] = createSignal<StockItem[]>([
    { ticker: 'AAPL', price: 180 },
    { ticker: 'MSFT', price: 420 },
  ]);

  const totalValue = createMemo(() =>
    stocks().reduce((acc, stock) => acc + stock.price, 0)
  );

  createEffect(() => {
    console.log(`Portfolio updated. New aggregate valuation: $${totalValue()}`);
  });

  return (
    <div class="p-4 border">
      <h3 class="font-bold">Total Portfolio: ${totalValue()}</h3>
      <ul>
        <For each={stocks()}>
          {(stock) => (
            <li>{stock.ticker}: ${stock.price}</li>
          )}
        </For>
      </ul>
    </div>
  );
}
```

## Common mistakes & pitfalls
- Destructuring props in component signatures (`function Comp({ name })`), which permanently severs prop reactivity.
- Treating component bodies as render loops (putting mutable initialization code directly in the function body).
- Using native array `.map()` instead of `<For>` or `<Index>`, forcing unneeded DOM recreations.

## Verification checklist
- [ ] Props are accessed via property getters without destructuring.
- [ ] Signals are called as functions when accessed (`signal()`).
- [ ] Built-in control flow components (`<Show>`, `<For>`) manage dynamic lists.
- [ ] Component bodies contain only setup logic, recognizing they execute once.

## Related skills
- react-fundamentals
- web-vitals-lcp-cls-inp-optimization
- browser-dom-manipulation-events
- performance-code-review-complexity-allocations
