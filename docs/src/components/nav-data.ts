export type NavLink = {
  num: string;
  label: string;
  path: string;
};

export type NavGroup = {
  label: string;
  links: NavLink[];
};

export const navGroups: NavGroup[] = [
  {
    label: 'Start here',
    links: [
      { num: '·', label: 'Home', path: '/' },
      { num: '·', label: 'Cheat Sheet', path: '/cheatsheet' },
    ],
  },
  {
    label: 'Concepts',
    links: [
      { num: '1.', label: 'Currying', path: '/concepts/currying' },
      { num: '2.', label: 'Abstractions', path: '/concepts/abstractions' },
      { num: '3.', label: 'Pattern Matching', path: '/concepts/pattern-matching' },
      { num: '4.', label: 'Higher-Order Functions', path: '/concepts/higher-order' },
      { num: '5.', label: 'Tail Recursion', path: '/concepts/tail-recursion' },
      { num: '6.', label: 'Iteration', path: '/concepts/iteration' },
    ],
  },
  {
    label: 'Exercises',
    links: [
      { num: 'E1.', label: 'Bank Account', path: '/exercises/bank' },
      { num: 'E2.', label: 'Playlist', path: '/exercises/playlist' },
      { num: 'E3.', label: 'Search', path: '/exercises/search' },
    ],
  },
];

export const topbarLinks: { label: string; path: string; matchPrefix?: string }[] = [
  { label: 'Home', path: '/' },
  { label: 'Cheat Sheet', path: '/cheatsheet' },
  { label: 'Concepts', path: '/concepts/currying', matchPrefix: '/concepts/' },
  { label: 'Playground', path: '/playground' },
];
