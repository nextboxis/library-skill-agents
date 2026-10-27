---
name: forms-validation-react-hook-form
description: Use this skill when building performant, type-safe web forms using React Hook Form, uncontrolled inputs, and Zod schema validation.
---
# Forms Validation with React Hook Form

## When to use
Use this skill when building complex web forms, enterprise data-entry workflows, dynamic form arrays, and validating inputs with Zod schemas.

## Prerequisites
- React 18+ and TypeScript installed.
- Packages: `react-hook-form`, `zod`, and `@hookform/resolvers`.

## Step-by-step workflow
1. **Define validation schema**: Create a strict runtime validation schema using Zod describing all form fields, limits, and regex patterns.
2. **Derive TypeScript types**: Infer type contracts directly from the schema with `z.infer<typeof FormSchema>`.
3. **Initialize useForm**: Pass `zodResolver(FormSchema)` into `useForm` with explicit `defaultValues`.
4. **Register form inputs**: Register native inputs using `{...register('fieldName')}` for uncontrolled, render-optimized inputs.
5. **Handle submission and errors**: Process valid payloads inside `handleSubmit(onSubmit)` and render accessible field error alerts.

## Commands / code examples
```tsx
import React from 'react';
import { useForm } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import { z } from 'zod';

const RegistrationSchema = z.object({
  fullName: z.string().min(2, 'Name must be at least 2 characters').max(50),
  email: z.string().email('Please enter a valid email address'),
  age: z.coerce.number().min(18, 'Must be at least 18 years old'),
});

type RegistrationFormData = z.infer<typeof RegistrationSchema>;

export const RegistrationForm: React.FC = () => {
  const {
    register,
    handleSubmit,
    formState: { errors, isSubmitting },
  } = useForm<RegistrationFormData>({
    resolver: zodResolver(RegistrationSchema),
    defaultValues: { fullName: '', email: '', age: 18 },
  });

  const onSubmit = async (data: RegistrationFormData) => {
    await fetch('/api/register', {
      method: 'POST',
      body: JSON.stringify(data),
      headers: { 'Content-Type': 'application/json' },
    });
  };

  return (
    <form onSubmit={handleSubmit(onSubmit)} className="space-y-4 max-w-md">
      <div>
        <label htmlFor="fullName" className="block text-sm font-medium">Full Name</label>
        <input id="fullName" {...register('fullName')} className="border p-2 w-full rounded" />
        {errors.fullName && <p className="text-red-600 text-sm">{errors.fullName.message}</p>}
      </div>

      <div>
        <label htmlFor="email" className="block text-sm font-medium">Email</label>
        <input id="email" type="email" {...register('email')} className="border p-2 w-full rounded" />
        {errors.email && <p className="text-red-600 text-sm">{errors.email.message}</p>}
      </div>

      <button type="submit" disabled={isSubmitting} className="bg-blue-600 text-white px-4 py-2 rounded">
        {isSubmitting ? 'Submitting...' : 'Register'}
      </button>
    </form>
  );
};
```

## Common mistakes & pitfalls
- Forgetting `defaultValues`, causing inputs to transition from uncontrolled to controlled and triggering React warnings.
- Using controlled state (`useState`) on every keystroke in large forms, causing unnecessary re-rendering.
- Omitting `z.coerce.number()` on number inputs, causing string-to-number validation mismatches.

## Verification checklist
- [ ] Form schema is validated via Zod with inferred TypeScript types.
- [ ] All inputs have explicit `defaultValues` set in `useForm`.
- [ ] Validation errors map directly to accessible `<label>` and error messages.
- [ ] Submit button disables during `isSubmitting` to prevent duplicate submissions.

## Related skills
- react-fundamentals
- accessible-form-controls-error-validation
- typescript-advanced-type-system
- shadcn-ui-radix-primitives
