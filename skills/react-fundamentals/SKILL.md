---
name: react-fundamentals
description: Use this skill when designing, building, or refactoring React component hierarchies. Covers declarative JSX, props contracts, state, and unidirectional data flow.
---
# React Fundamentals

## When to use
Use this skill when creating new React applications, structuring reusable component trees, establishing prop interfaces, or debugging unidirectional rendering issues.

## Prerequisites
- Node.js 18+ and npm/pnpm installed.
- Understanding of modern JavaScript (ES6+), object destructuring, and closures.

## Step-by-step workflow
1. **Deconstruct the UI mockup**: Break the target interface into atomic components following single-responsibility principles.
2. **Define props interfaces**: Write explicit TypeScript interfaces or PropTypes for input contracts, marking optional vs required properties.
3. **Establish unidirectional flow**: Keep state as high as necessary (lifting state up) and pass down data via props and callbacks via event handlers.
4. **Enforce pure rendering**: Ensure render logic produces identical JSX for identical inputs without mutating existing variables or objects.
5. **Optimize keys**: Provide stable, unique string/number keys for iterated list elements (never use array indexes for dynamic lists).

## Commands / code examples
```tsx
import React, { useState } from 'react';

interface TaskItemProps {
  id: string;
  title: string;
  completed: boolean;
  onToggle: (id: string) => void;
}

export const TaskItem: React.FC<TaskItemProps> = ({ id, title, completed, onToggle }) => {
  return (
    <li className="flex items-center gap-2 p-2 border-b">
      <input
        type="checkbox"
        checked={completed}
        onChange={() => onToggle(id)}
        aria-label={`Mark ${title} as ${completed ? 'incomplete' : 'complete'}`}
      />
      <span className={completed ? 'line-through text-gray-500' : 'text-gray-900'}>
        {title}
      </span>
    </li>
  );
};
```

## Common mistakes & pitfalls
- Mutating state directly (`state.items.push(newItem)`) instead of returning a new array or object copy.
- Using array index as list `key`, causing state leakage across re-ordered list elements.
- Defining components inside other components, causing unmounting and lost state on every render.

## Verification checklist
- [ ] Components are pure functions with respect to props and render output.
- [ ] List renders use stable, unique IDs as keys.
- [ ] Props interfaces are strictly typed with TypeScript.
- [ ] State mutations use immutable updater patterns.

## Related skills
- react-hooks-patterns
- react-state-management
- forms-validation-react-hook-form
- typescript-advanced-type-system
