---
name: progressive-web-apps
description: Use this skill when configuring web app manifests, service worker lifecycles, and installability criteria for progressive web apps (PWAs).
---
# Progressive Web Apps (PWAs)

## When to use
Use this skill when transforming standard web applications into installable, offline-capable Progressive Web Apps that run across desktop and mobile.

## Prerequisites
- Valid HTTPS deployment or `localhost` testing environment.
- Web application with a responsive viewport and favicon/icon assets.

## Step-by-step workflow
1. **Author Web App Manifest**: Create a valid `manifest.webmanifest` defining `name`, `short_name`, `start_url`, `display: "standalone"`, and icons.
2. **Link manifest in HTML**: Add `<link rel="manifest" href="/manifest.webmanifest">` and appropriate `<meta name="theme-color">` tags.
3. **Register Service Worker**: Register a service worker in the main application script once the window loads.
4. **Implement installation prompt**: Intercept the `beforeinstallprompt` browser event to trigger customized in-app install banners.
5. **Audit PWA installability**: Run Google Lighthouse PWA audits to verify required installability criteria and maskable icons.

## Commands / code examples
```json
// public/manifest.webmanifest
{
  "name": "Cloud Operations Dashboard",
  "short_name": "CloudOps",
  "description": "Real-time enterprise telemetry and infrastructure monitoring",
  "start_url": "/",
  "display": "standalone",
  "background_color": "#0f172a",
  "theme_color": "#2563eb",
  "icons": [
    {
      "src": "/icons/icon-192.png",
      "sizes": "192x192",
      "type": "image/png",
      "purpose": "any"
    },
    {
      "src": "/icons/icon-512.png",
      "sizes": "512x512",
      "type": "image/png",
      "purpose": "maskable"
    }
  ]
}
```

```ts
// src/register-sw.ts
export function registerServiceWorker() {
  if ('serviceWorker' in navigator && process.env.NODE_ENV === 'production') {
    window.addEventListener('load', async () => {
      try {
        const registration = await navigator.serviceWorker.register('/sw.js');
        console.log('ServiceWorker registered with scope:', registration.scope);
      } catch (err) {
        console.error('ServiceWorker registration failed:', err);
      }
    });
  }
}
```

## Common mistakes & pitfalls
- Serving the web application over unencrypted HTTP (PWAs strictly mandate secure HTTPS).
- Missing a `maskable` icon declaration, resulting in poor icon rendering on Android home screens.
- Failing to handle service worker cache updates, causing users to get stuck on stale app versions.

## Verification checklist
- [ ] Web app manifest validates with zero errors in Chrome DevTools Application tab.
- [ ] At least one 192x192 and one 512x512 icon with `maskable` purpose are present.
- [ ] Service worker registers successfully over HTTPS.
- [ ] Lighthouse PWA audit confirms installability requirements are fulfilled.

## Related skills
- service-workers-offline-caching
- web-vitals-lcp-cls-inp-optimization
- html5-semantic-web
- mobile-app-offline-first-sync
