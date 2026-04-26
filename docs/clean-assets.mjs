// Pre-build/pre-dev step. Vite's outDir is the docs/ root (so GitHub Pages
// can serve the built files directly), and `vite build` rewrites the source
// `index.html` in place to inject hashed asset refs. To keep dev working and
// avoid stale asset references between builds, we restore index.html from
// `index.template.html` and wipe the previous build's assets/ before each run.
import { rmSync, copyFileSync } from 'node:fs';

rmSync('assets', { recursive: true, force: true });
copyFileSync('index.template.html', 'index.html');
