import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

// Build output is emitted into docs/dist/ then copied up to docs/ by the
// `postbuild` script, so GitHub Pages keeps serving from docs/. Vite 5 forbids
// outDir being the same as (or an ancestor of) root, so we can't point outDir
// at docs/ directly. publicDir is `public/` — playground engine assets live
// there and get copied verbatim, preserving `/playground/...` URLs that the
// legacy editor JS hard-codes.
export default defineConfig({
  plugins: [react()],
  base: '/',
  publicDir: 'public',
  build: {
    outDir: 'dist',
    emptyOutDir: true,
    assetsDir: 'assets',
  },
});
