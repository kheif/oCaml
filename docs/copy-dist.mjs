// Post-build step. Vite emits to docs/dist/ (Vite 5 forbids outDir == root),
// but GitHub Pages serves from docs/. Copy the build artifacts up one level,
// then remove dist/.
import { cpSync, rmSync, existsSync } from 'node:fs';

if (!existsSync('dist')) {
  console.error('[copy-dist] dist/ not found — did vite build run?');
  process.exit(1);
}

// Wipe stale built assets at docs/ root before copying fresh ones in.
rmSync('assets', { recursive: true, force: true });

cpSync('dist', '.', { recursive: true });
rmSync('dist', { recursive: true, force: true });
