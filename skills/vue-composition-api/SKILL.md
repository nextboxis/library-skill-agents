---
name: vue-composition-api
description: Use this skill when building reactive applications with Vue 3 Composition API, <script setup>, ref, reactive, computed, and composables.
---
# Vue Composition API

## When to use
Use this skill when building modular, scalable Vue 3 applications, writing reusable composables, or refactoring legacy Options API components.

## Prerequisites
- Node.js 18+ and Vite with `@vitejs/plugin-vue`.
- Understanding of Vue 3 template syntax and reactivity system.

## Step-by-step workflow
1. **Adopt `<script setup>` syntax**: Structure Single-File Components (SFCs) using `<script setup lang="ts">` for concise, type-safe code.
2. **Declare reactive state**: Use `ref()` for primitive values and references; use `reactive()` for unified state objects.
3. **Derive computed state**: Wrap pure derived calculations with `computed()` to leverage automatic caching.
4. **Extract custom composables**: Create reusable `useFeature()` functions returning reactive refs and methods.
5. **Manage component lifecycle**: Hook into `onMounted`, `onUnmounted`, or `watchEffect` for side-effect synchronization.

## Commands / code examples
```vue
<script setup lang="ts">
import { ref, computed, onMounted, onUnmounted } from 'vue';

const count = ref(0);
const doubleCount = computed(() => count.value * 2);

function increment() {
  count.value++;
}

const timer = ref<number | null>(null);

onMounted(() => {
  timer.value = window.setInterval(() => count.value++, 1000);
});

onUnmounted(() => {
  if (timer.value) clearInterval(timer.value);
});
</script>

<template>
  <div class="counter-card">
    <p>Current count: {{ count }} (Double: {{ doubleCount }})</p>
    <button @click="increment">Increment</button>
  </div>
</template>
```

## Common mistakes & pitfalls
- Destructuring a `reactive()` object directly, which breaks reactivity (use `toRefs()` or `toRef()` instead).
- Forgetting `.value` when accessing or modifying `ref` variables in JavaScript/TypeScript script blocks.
- Creating memory leaks by neglecting to clean up event listeners or timers in `onUnmounted`.

## Verification checklist
- [ ] State is defined using `ref()` or `reactive()` with proper TypeScript typing.
- [ ] Composable functions return explicit objects with reactive properties.
- [ ] Computed properties are side-effect free.
- [ ] Subscriptions and event listeners are cleaned up on unmount.

## Related skills
- nuxt-fullstack
- javascript-es2024-deep-dive
- typescript-advanced-type-system
- unit-testing-principles-aaa-pattern
