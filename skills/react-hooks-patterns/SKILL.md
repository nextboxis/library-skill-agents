---
name: react-hooks-patterns
description: Use this skill when implementing custom hooks or managing side effects with useState, useEffect, useMemo, useCallback, and useRef in React.
---
# React Hooks Patterns

## When to use
Use this skill when encapsulating reusable stateful logic, synchronizing with external APIs or browser events, and optimizing expensive calculations.

## Prerequisites
- React 18+ project environment.
- Familiarity with React component lifecycle and JavaScript closures.

## Step-by-step workflow
1. **Identify stateful behavior**: Extract common side effects or reactive state into a function prefixed with `use`.
2. **Follow rules of hooks**: Call hooks only at the top level of React functions; never inside loops, conditions, or nested functions.
3. **Declare accurate dependencies**: Include every reactive value referenced inside `useEffect`, `useMemo`, or `useCallback` in the dependency array.
4. **Implement effect cleanups**: Always return a cleanup function from `useEffect` to unsubscribe listeners, clear timers, or abort Fetch requests.
5. **Differentiate memoization vs refs**: Use `useRef` for mutable values that do not trigger re-renders; reserve `useMemo` for expensive computations.

## Commands / code examples
```tsx
import { useState, useEffect } from 'react';

export function useWindowDimensions() {
  const [dimensions, setDimensions] = useState(() => ({
    width: typeof window !== 'undefined' ? window.innerWidth : 0,
    height: typeof window !== 'undefined' ? window.innerHeight : 0,
  }));

  useEffect(() => {
    const handleResize = () => {
      setDimensions({ width: window.innerWidth, height: window.innerHeight });
    };

    window.addEventListener('resize', handleResize);
    return () => window.removeEventListener('resize', handleResize);
  }, []);

  return dimensions;
}
```

## Common mistakes & pitfalls
- Omitting values from the dependency array, resulting in stale closures.
- Overusing `useMemo` and `useCallback` for trivial operations, adding memory overhead without performance benefits.
- Setting state synchronously inside `useEffect` without guards, triggering infinite re-render loops.

## Verification checklist
- [ ] Every hook name begins with the `use` prefix.
- [ ] Cleanup functions are returned for all event listeners, timers, and abort controllers.
- [ ] ESLint plugin `react-hooks/exhaustive-deps` passes with zero warnings.
- [ ] Hooks are called strictly at top-level execution scope.

## Related skills
- react-fundamentals
- react-state-management
- performance-code-review-complexity-allocations
- browser-dom-manipulation-events
