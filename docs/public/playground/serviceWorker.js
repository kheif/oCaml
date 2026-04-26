// Kill-switch: the legacy BetterOCaml standalone page used to register a
// service worker here whose `cacheFirst` handler was buggy (missing `await`
// caches.match) and made every navigation under /playground/ fail with
// ERR_FAILED. This replacement unregisters itself and clears the old caches
// so affected browsers heal on next load. The new playground lives at the
// SPA route /playground (no trailing slash) and does not use a SW.
self.addEventListener('install', (event) => {
  self.skipWaiting();
});

self.addEventListener('activate', (event) => {
  event.waitUntil(
    (async () => {
      const keys = await caches.keys();
      await Promise.all(keys.map((k) => caches.delete(k)));
      const clients = await self.clients.matchAll();
      await self.registration.unregister();
      clients.forEach((c) => c.navigate(c.url));
    })(),
  );
});
