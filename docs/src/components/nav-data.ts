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
      { num: '1.', label: 'Bindings', path: '/concepts/bindings' },
      { num: '2.', label: 'Currying', path: '/concepts/currying' },
      { num: '3.', label: 'Abstractions', path: '/concepts/abstractions' },
      { num: '4.', label: 'Lexical Scope', path: '/concepts/lexical-scope' },
      { num: '5.', label: 'Type Inference', path: '/concepts/type-inference' },
      { num: '6.', label: 'Polymorphism', path: '/concepts/polymorphism' },
      { num: '7.', label: 'Pattern Matching', path: '/concepts/pattern-matching' },
      { num: '8.', label: 'Lists', path: '/concepts/lists' },
      { num: '9.', label: 'Higher-Order Functions', path: '/concepts/higher-order' },
      { num: '10.', label: 'Tail Recursion', path: '/concepts/tail-recursion' },
      { num: '11.', label: 'Iteration', path: '/concepts/iteration' },
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
  { label: 'Concepts', path: '/concepts/bindings', matchPrefix: '/concepts/' },
  { label: 'Playground', path: '/playground' },
];
