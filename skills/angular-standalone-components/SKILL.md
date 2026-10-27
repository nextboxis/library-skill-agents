---
name: angular-standalone-components
description: Use this skill when developing Angular applications using standalone components, signals reactivity, inject() dependency injection, and modern routing.
---
# Angular Standalone Components

## When to use
Use this skill when scaffolding new Angular applications, refactoring legacy NgModule architectures, or implementing fine-grained signals reactivity.

## Prerequisites
- Node.js 18.19+ and Angular CLI 17+ installed (`npm i -g @angular/cli`).
- Familiarity with TypeScript decorators and reactive streams (RxJS).

## Step-by-step workflow
1. **Generate standalone components**: Generate components using `ng g c <name> --standalone` (the default in modern Angular).
2. **Explicitly import dependencies**: Import required directives (`CommonModule`, `RouterLink`, custom components) into component `imports` arrays.
3. **Adopt Angular Signals**: Replace local state with `signal()` and derived properties with `computed()` for fine-grained reactivity.
4. **Use functional dependency injection**: Replace constructor injection with modern `inject(ServiceClass)` tokens.
5. **Configure standalone routing**: Define route trees using `provideRouter()` and standalone route files without AppRoutingModule.

## Commands / code examples
```ts
import { Component, signal, computed, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { UserService } from '../services/user.service';

@Component({
  selector: 'app-user-profile',
  standalone: true,
  imports: [CommonModule],
  template: `
    <div class="user-card">
      <h2>{{ displayName() }}</h2>
      <p>Role: {{ userRole() }}</p>
      <button (click)="refresh()">Reload Profile</button>
    </div>
  `
})
export class UserProfileComponent {
  private userService = inject(UserService);

  user = signal({ firstName: 'Jane', lastName: 'Doe', role: 'Engineer' });
  displayName = computed(() => `${this.user().firstName} ${this.user().lastName}`);
  userRole = computed(() => this.user().role);

  refresh() {
    this.user.set({ firstName: 'Jane', lastName: 'Doe', role: 'Lead Architect' });
  }
}
```

## Common mistakes & pitfalls
- Forgetting to import necessary directives (like `CommonModule` or `NgIf`) in component `imports`, causing runtime template errors.
- Calling signals without parentheses in templates (`user` instead of `user()`).
- Maintaining unnecessary NgModules in new projects, complicating dependency graphs.

## Verification checklist
- [ ] Component decorator sets `standalone: true`.
- [ ] All required sub-components and directives are declared in the `imports` array.
- [ ] `inject()` function is used for clean dependency injection.
- [ ] Signals are used for local reactive state instead of manual RxJS BehaviorSubjects where appropriate.

## Related skills
- typescript-advanced-type-system
- unit-testing-principles-aaa-pattern
- forms-validation-react-hook-form
- modern-css-layout-grid-flexbox
