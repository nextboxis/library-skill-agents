---
name: styled-components-emotion
description: Use this skill when managing component-scoped styles, dynamic theme props, and CSS-in-JS abstractions using styled-components or Emotion.
---
# Styled Components and Emotion

## When to use
Use this skill when developing design systems and dynamic React applications requiring runtime theme switching, prop-driven styling, and CSS-in-JS encapsulation.

## Prerequisites
- Node.js 18+ and `styled-components` or `@emotion/react` / `@emotion/styled` installed.
- Babel/SWC plugins configured for server-side rendering (SSR) style extraction.

## Step-by-step workflow
1. **Configure SSR style registry**: Ensure the server-side style sheet collector (e.g., `ServerStyleSheet` or Emotion Cache) injects styles on SSR passes.
2. **Define ThemeProvider**: Wrap root component with `ThemeProvider` delivering strongly typed design tokens.
3. **Author styled primitives**: Create styled tags with tagged template literals or object styles utilizing prop interpolation.
4. **Extend existing components**: Apply `styled(ExistingComponent)` to wrap and augment third-party or custom components with new styles.
5. **Optimize runtime rendering**: Extract static style declarations outside render functions to avoid recreating component definitions every frame.

## Commands / code examples
```tsx
import styled from 'styled-components';

interface ButtonProps {
  $variant?: 'primary' | 'danger';
  $fullWidth?: boolean;
}

export const StyledButton = styled.button<ButtonProps>`
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: 0.5rem 1rem;
  border-radius: ${(props) => props.theme.radii.md};
  font-weight: 600;
  width: ${(props) => (props.$fullWidth ? '100%' : 'auto')};
  transition: opacity 0.2s ease;

  background-color: ${(props) =>
    props.$variant === 'danger'
      ? props.theme.colors.danger
      : props.theme.colors.primary};
  color: #ffffff;
  border: none;
  cursor: pointer;

  &:hover {
    opacity: 0.9;
  }

  &:focus-visible {
    outline: 2px solid ${(props) => props.theme.colors.focus};
    outline-offset: 2px;
  }
`;
```

## Common mistakes & pitfalls
- Defining styled components inside a React component render function, causing recreation and loss of input focus on every re-render.
- Passing raw props directly to the DOM without using transient props (prefixed with `$`), causing invalid HTML attribute warnings.
- Missing SSR style extraction setup, leading to Flash of Unstyled Content (FOUC).

## Verification checklist
- [ ] Styled components are defined at file-level scope outside render functions.
- [ ] Transient props (`$propName`) prevent custom styling props from leaking into DOM attributes.
- [ ] Design tokens are accessed via `theme` context rather than hardcoded hex values.
- [ ] SSR style hydration produces zero FOUC on initial page load.

## Related skills
- react-fundamentals
- react-state-management
- css-modules-and-sass
- tailwindcss-architecture
