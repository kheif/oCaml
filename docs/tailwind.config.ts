import type { Config } from 'tailwindcss';

// Variables here mirror the ones in src/index.css :root block, exposed to
// Tailwind so new components can use utility classes like bg-bg-warm,
// text-accent, font-serif. Existing pages keep their semantic classes.
const config: Config = {
  content: ['./index.html', './src/**/*.{ts,tsx}'],
  theme: {
    extend: {
      colors: {
        bg: 'var(--bg)',
        'bg-warm': 'var(--bg-warm)',
        'bg-code': 'var(--bg-code)',
        border: 'var(--border)',
        'border-dk': 'var(--border-dk)',
        text: 'var(--text)',
        muted: 'var(--muted)',
        dim: 'var(--dim)',
        accent: 'var(--accent)',
        'accent-bg': 'var(--accent-bg)',
        link: 'var(--link)',
      },
      fontFamily: {
        serif: 'var(--serif)',
        sans: 'var(--sans)',
        mono: 'var(--mono)',
      },
    },
  },
  plugins: [],
};

export default config;
