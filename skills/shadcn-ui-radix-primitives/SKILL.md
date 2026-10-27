---
name: shadcn-ui-radix-primitives
description: Use this skill when assembling accessible, unstyled, composable UI components with Radix UI primitives and shadcn/ui Tailwind patterns.
---
# shadcn/ui & Radix UI Primitives

## When to use
Use this skill when building modern React web apps that require fully accessible UI components (dialogs, dropdowns, popovers, tabs) with complete source code ownership.

## Prerequisites
- Next.js, Vite, or Remix project with Tailwind CSS configured.
- Installed `radix-ui` primitive packages and utility helpers (`clsx`, `tailwind-merge`).

## Step-by-step workflow
1. **Initialize component structure**: Run the `shadcn-ui` CLI (`npx shadcn@latest init`) to configure `components.json` and utility helpers.
2. **Install required primitives**: Add specific components (e.g., `dialog`, `dropdown-menu`, `tabs`) to copy source files directly into your codebase.
3. **Compose compound primitives**: Wire Radix components (`Dialog.Root`, `Dialog.Trigger`, `Dialog.Portal`, `Dialog.Content`) with keyboard navigation.
4. **Customize variants with CVA**: Use `class-variance-authority` (cva) to define clean, type-safe visual variants and sizes.
5. **Ensure accessible labeling**: Verify components include appropriate `Dialog.Title`, `Dialog.Description`, or ARIA labeling props.

## Commands / code examples
```tsx
// components/ui/dialog.tsx (Radix UI composition)
import * as React from 'react';
import * as DialogPrimitive from '@radix-ui/react-dialog';
import { cn } from '@/lib/utils';

export const Dialog = DialogPrimitive.Root;
export const DialogTrigger = DialogPrimitive.Trigger;

export const DialogContent = React.forwardRef<
  React.ElementRef<typeof DialogPrimitive.Content>,
  React.ComponentPropsWithoutRef<typeof DialogPrimitive.Content>
>(({ className, children, ...props }, ref) => (
  <DialogPrimitive.Portal>
    <DialogPrimitive.Overlay className="fixed inset-0 z-50 bg-black/50 backdrop-blur-sm" />
    <DialogPrimitive.Content
      ref={ref}
      className={cn(
        "fixed left-[50%] top-[50%] z-50 translate-x-[-50%] translate-y-[-50%]",
        "w-full max-w-lg bg-white p-6 shadow-lg rounded-lg focus:outline-none",
        className
      )}
      {...props}
    >
      {children}
    </DialogPrimitive.Content>
  </DialogPrimitive.Portal>
));
DialogContent.displayName = DialogPrimitive.Content.displayName;
```

## Common mistakes & pitfalls
- Omitting `DialogTitle` inside `DialogContent`, causing screen reader accessibility violations.
- Merging classes with standard string concatenation instead of `twMerge` / `cn()`, causing Tailwind utility class conflicts.
- Treating shadcn/ui as an immutable node_modules package rather than owned, customizable source code.

## Verification checklist
- [ ] Dialogs, popovers, and menus trap focus correctly and close on Escape key press.
- [ ] Utility classes are merged using `cn()` (`clsx` + `tailwind-merge`).
- [ ] Accessible titles and descriptions exist for all modal overlays.
- [ ] Component source resides directly within the project repository for full control.

## Related skills
- tailwindcss-architecture
- react-fundamentals
- keyboard-navigation-focus-management-traps
- accessible-modal-dialogs-popovers-accordions
