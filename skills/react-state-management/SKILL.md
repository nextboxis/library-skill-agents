---
name: react-state-management
description: Use this skill when architecting global or shared client state across React components using Context API, Zustand, or Redux Toolkit.
---
# React State Management

## When to use
Use this skill when component prop drilling exceeds two levels, multiple unrelated components need synchronized state, or managing complex domain stores.

## Prerequisites
- Working knowledge of React hooks (`useState`, `useContext`, `useReducer`).
- Installed state library (e.g., `zustand` or `@reduxjs/toolkit`).

## Step-by-step workflow
1. **Classify state scope**: Distinguish local UI state (form inputs, modal toggles) from shared global state (user session, cart, cached records).
2. **Select the tool**: Use React Context for low-frequency changes (theming, locale); choose Zustand or Redux Toolkit for high-frequency data stores.
3. **Define store slices**: Define typed state interfaces and pure reducer/action functions.
4. **Implement selective subscription**: Use selector functions to subscribe components only to the specific slices of state they render.
5. **Persist and hydrate**: Add local storage synchronization middleware where offline persistence is required.

## Commands / code examples
```ts
// store/useCartStore.ts (Zustand example)
import { create } from 'zustand';

interface CartItem {
  id: string;
  name: string;
  quantity: number;
}

interface CartState {
  items: CartItem[];
  addItem: (item: CartItem) => void;
  removeItem: (id: string) => void;
}

export const useCartStore = create<CartState>((set) => ({
  items: [],
  addItem: (item) =>
    set((state) => {
      const existing = state.items.find((i) => i.id === item.id);
      if (existing) {
        return {
          items: state.items.map((i) =>
            i.id === item.id ? { ...i, quantity: i.quantity + item.quantity } : i
          ),
        };
      }
      return { items: [...state.items, item] };
    }),
  removeItem: (id) =>
    set((state) => ({ items: state.items.filter((i) => i.id !== id) })),
}));
```

## Common mistakes & pitfalls
- Storing server cache in global client state instead of dedicated query libraries (e.g., TanStack Query).
- Placing high-frequency updates into a single React Context, causing whole-tree re-renders.
- Mutating nested objects inside actions without producing new object references.

## Verification checklist
- [ ] Components use targeted selectors to prevent unnecessary re-renders.
- [ ] State updates are immutable and predictable.
- [ ] Server-derived data is clearly separated from client UI state.
- [ ] TypeScript interfaces cover state, actions, and selectors completely.

## Related skills
- react-fundamentals
- react-hooks-patterns
- typescript-advanced-type-system
- performance-code-review-complexity-allocations
