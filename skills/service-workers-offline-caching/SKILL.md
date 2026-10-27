---
name: service-workers-offline-caching
description: Use this skill when implementing offline-first caching strategies, network fallbacks, and background sync using Service Workers and Cache API.
---
# Service Workers and Offline Caching

## When to use
Use this skill when building offline-resilient web apps, caching static build assets, implementing runtime cache strategies, or using Workbox.

## Prerequisites
- HTTPS environment or `localhost`.
- Understanding of the Service Worker lifecycle (`install`, `activate`, `fetch`).

## Step-by-step workflow
1. **Pre-cache static shell**: In the `install` event, open a versioned cache and add critical static assets (HTML shell, CSS, JS bundles).
2. **Clean obsolete caches**: In the `activate` event, iterate through cache keys and delete outdated versions to free client storage.
3. **Select caching strategies**:
   - *Cache First*: For immutable, content-hashed static assets (images, fonts, bundles).
   - *Network First*: For dynamic API data where freshness is paramount.
   - *Stale-While-Revalidate*: For frequently updated data where immediate response speed matters.
4. **Intercept network requests**: Listen to `fetch` events, apply the selected caching strategy, and provide an offline fallback response on network error.
5. **Communicate updates**: Prompt users when an updated service worker is waiting via `postMessage` and `skipWaiting()`.

## Commands / code examples
```js
// public/sw.js
const CACHE_NAME = 'app-cache-v1';
const PRECACHE_ASSETS = ['/', '/index.html', '/styles.css', '/app.js', '/offline.html'];

self.addEventListener('install', (event) => {
  event.waitUntil(
    caches.open(CACHE_NAME).then((cache) => cache.addAll(PRECACHE_ASSETS))
  );
  self.skipWaiting();
});

self.addEventListener('activate', (event) => {
  event.waitUntil(
    caches.keys().then((keys) =>
      Promise.all(
        keys.filter((key) => key !== CACHE_NAME).map((key) => caches.delete(key))
      )
    )
  );
  self.clients.claim();
});

self.addEventListener('fetch', (event) => {
  // Stale-While-Revalidate Strategy
  event.respondWith(
    caches.open(CACHE_NAME).then(async (cache) => {
      const cachedResponse = await cache.match(event.request);
      const networkFetch = fetch(event.request)
        .then((response) => {
          if (response.status === 200) {
            cache.put(event.request, response.clone());
          }
          return response;
        })
        .catch(() => cachedResponse || caches.match('/offline.html'));

      return cachedResponse || networkFetch;
    })
  );
});
```

## Common mistakes & pitfalls
- Setting long HTTP browser cache headers on `sw.js` itself, preventing the browser from ever detecting service worker updates.
- Caching `POST` or `PUT` state-changing mutations with the Cache API, which only supports `GET` requests.
- Forgetting to handle offline fallback gracefully when both cache and network fail.

## Verification checklist
- [ ] Service worker file `sw.js` is served with `Cache-Control: no-cache`.
- [ ] Outdated cache versions are pruned during the `activate` lifecycle phase.
- [ ] Offline navigation serves a functional fallback page when disconnected from the network.
- [ ] Network fetch failures do not result in unhandled promise rejections.

## Related skills
- progressive-web-apps
- web-streams-api
- web-vitals-lcp-cls-inp-optimization
- browser-dom-manipulation-events
