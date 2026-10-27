---
name: framer-motion-animations
description: Use this skill when implementing declarative physics-based micro-interactions, layout transitions, gestures, and exit animations in React.
---
# Framer Motion Animations

## When to use
Use this skill when building fluid UI animations in React, handling enter/exit transitions, animating modal dialogs, or creating drag-and-drop gestures.

## Prerequisites
- React 18+ project environment.
- `framer-motion` package installed (`npm install framer-motion`).

## Step-by-step workflow
1. **Convert to motion elements**: Replace standard HTML tags with motion equivalents (e.g., `motion.div`, `motion.button`).
2. **Define animate states**: Use `initial`, `animate`, and `exit` props or named `variants` for clean state transitions.
3. **Configure physics transitions**: Set `transition={{ type: 'spring', stiffness: 300, damping: 25 }}` for natural movement.
4. **Handle exit animations**: Wrap conditional components with `<AnimatePresence>` providing a unique `key` to each child.
5. **Respect reduced motion**: Check user system preferences with `useReducedMotion()` and suppress motion for sensitive users.

## Commands / code examples
```tsx
import React from 'react';
import { motion, AnimatePresence, useReducedMotion } from 'framer-motion';

interface ToastProps {
  id: string;
  message: string;
  onDismiss: () => void;
}

export const Toast: React.FC<ToastProps> = ({ message, onDismiss }) => {
  const shouldReduceMotion = useReducedMotion();

  const variants = {
    initial: { opacity: 0, y: shouldReduceMotion ? 0 : 20, scale: 0.95 },
    animate: { opacity: 1, y: 0, scale: 1 },
    exit: { opacity: 0, scale: 0.9, transition: { duration: 0.15 } },
  };

  return (
    <motion.div
      variants={variants}
      initial="initial"
      animate="animate"
      exit="exit"
      transition={{ type: 'spring', stiffness: 400, damping: 30 }}
      className="bg-gray-900 text-white p-4 rounded-lg shadow-xl flex items-center justify-between"
    >
      <span>{message}</span>
      <button onClick={onDismiss} className="ml-4 text-sm text-gray-400 hover:text-white">
        Close
      </button>
    </motion.div>
  );
};
```

## Common mistakes & pitfalls
- Forgetting to provide a stable, unique `key` to children of `<AnimatePresence>`, breaking exit animation detection.
- Animating non-performant properties like `width`, `height`, or `top` instead of GPU-accelerated `transform` and `opacity`.
- Neglecting `useReducedMotion()`, triggering vestibular disorders for sensitive users.

## Verification checklist
- [ ] Animations primarily animate `transform` and `opacity` properties.
- [ ] Exit transitions are wrapped inside `<AnimatePresence>`.
- [ ] Reduced motion preferences are checked via `useReducedMotion()`.
- [ ] Spring physics parameters produce natural, non-oscillating settling.

## Related skills
- react-fundamentals
- react-hooks-patterns
- shadcn-ui-radix-primitives
- wcag-22-guidelines-conformance-levels
