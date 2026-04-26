import type { ReactNode } from 'react';
import { Link, useLocation } from 'react-router-dom';
import { topbarLinks } from './nav-data';

// Playground is a separate, script-tag-driven app — link to/from it always
// triggers a full page load so its module-scope globals never collide.
function NavLink({
  to,
  active,
  fromPlayground,
  className,
  children,
}: {
  to: string;
  active?: boolean;
  fromPlayground: boolean;
  className?: string;
  children: ReactNode;
}) {
  const needsReload = to.startsWith('/playground') || fromPlayground;
  const cls = [className, active ? 'active' : ''].filter(Boolean).join(' ');
  if (needsReload) {
    return (
      <a href={to} className={cls || undefined}>
        {children}
      </a>
    );
  }
  return (
    <Link to={to} className={cls || undefined}>
      {children}
    </Link>
  );
}

type Props = { onMenuClick: () => void };

export default function Topbar({ onMenuClick }: Props) {
  const { pathname } = useLocation();

  const isActive = (link: { path: string; matchPrefix?: string }) => {
    if (link.matchPrefix) return pathname.startsWith(link.matchPrefix);
    if (link.path === '/') return pathname === '/' || pathname === '/index.html';
    return pathname === link.path || pathname === link.path + '.html';
  };

  const fromPlayground = pathname === '/playground' || pathname === '/playground.html';

  return (
    <div className="topbar">
      <NavLink to="/" fromPlayground={fromPlayground} className="site-name">
        <img
          src="/flaticon.png"
          alt=""
          style={{
            height: 24,
            width: 24,
            display: 'inline-block',
            verticalAlign: 'middle',
            marginRight: 8,
            position: 'relative',
            top: -1,
            flexShrink: 0,
          }}
        />
        o<span>Caml</span>Case
      </NavLink>
      <nav className="topbar-nav">
        {topbarLinks.map((link) => (
          <NavLink
            key={link.label}
            to={link.path}
            active={isActive(link)}
            fromPlayground={fromPlayground}
          >
            {link.label}
          </NavLink>
        ))}
      </nav>
      <button className="menu-btn" onClick={onMenuClick}>
        ☰
      </button>
    </div>
  );
}
