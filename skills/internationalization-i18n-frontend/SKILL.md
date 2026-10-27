---
name: internationalization-i18n-frontend
description: Use this skill when localizing web applications across languages, currencies, dates, pluralization rules, and RTL layouts using i18next or FormatJS.
---
# Internationalization (i18n) Frontend

## When to use
Use this skill when preparing web apps for global audiences, supporting dynamic language switching, formatting local dates and currencies, or handling RTL text.

## Prerequisites
- Node.js 18+ and modern frontend project.
- Packages: `i18next`, `react-i18next`, and language detector plugins.

## Step-by-step workflow
1. **Initialize i18n instance**: Configure `i18next` with supported languages, default fallbacks, and interpolation settings.
2. **Organize translation catalogs**: Split translations into JSON namespaces (`common.json`, `auth.json`) to allow incremental loading.
3. **Format numbers & dates**: Utilize standard `Intl.NumberFormat` and `Intl.DateTimeFormat` APIs instead of custom format strings.
4. **Support complex pluralization**: Follow CLDR plural rules (zero, one, two, few, many, other) within translation keys.
5. **Support Bidirectional (RTL) Layouts**: Set `document.documentElement.dir = 'rtl'` and use CSS logical properties (`margin-inline-start`).

## Commands / code examples
```ts
// src/i18n/config.ts
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';

i18n.use(initReactI18next).init({
  fallbackLng: 'en',
  lng: 'en',
  resources: {
    en: {
      translation: {
        welcome: 'Welcome back, {{name}}!',
        items_count_one: 'You have {{count}} item in your cart.',
        items_count_other: 'You have {{count}} items in your cart.',
      },
    },
    es: {
      translation: {
        welcome: '¡Bienvenido de nuevo, {{name}}!',
        items_count_one: 'Tienes {{count}} artículo en tu carrito.',
        items_count_other: 'Tienes {{count}} artículos en tu carrito.',
      },
    },
  },
  interpolation: { escapeValue: false },
});

export default i18n;
```

```tsx
// src/components/CartSummary.tsx
import React from 'react';
import { useTranslation } from 'react-i18next';

export const CartSummary: React.FC<{ name: string; count: number; total: number }> = ({ name, count, total }) => {
  const { t, i18n } = useTranslation();

  const formattedTotal = new Intl.NumberFormat(i18n.language, {
    style: 'currency',
    currency: i18n.language === 'es' ? 'EUR' : 'USD',
  }).format(total);

  return (
    <div className="p-4 border rounded">
      <h2>{t('welcome', { name })}</h2>
      <p>{t('items_count', { count })}</p>
      <p>Total: {formattedTotal}</p>
    </div>
  );
};
```

## Common mistakes & pitfalls
- Hardcoding currency symbols (`$`) instead of using `Intl.NumberFormat`, which fails for currencies with trailing symbols.
- Using physical CSS properties (`left`, `right`) instead of logical properties (`inset-inline-start`, `margin-inline-end`) for RTL layouts.
- Concatenating translated string fragments, breaking grammar and sentence structure across languages.

## Verification checklist
- [ ] All customer-facing text is managed via translation keys.
- [ ] Dates, numbers, and currencies format through standard `Intl` APIs.
- [ ] Pluralization rules handle singular and plural variants accurately.
- [ ] RTL languages flip layout orientations and text alignments automatically.

## Related skills
- react-fundamentals
- modern-css-layout-grid-flexbox
- wcag-22-guidelines-conformance-levels
- html5-semantic-web
