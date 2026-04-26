import { Link, useLocation } from 'react-router-dom';
import { navGroups } from './nav-data';

type Props = { open: boolean; onClose: () => void };

export default function Sidebar({ open, onClose }: Props) {
  const { pathname } = useLocation();

  const isActive = (path: string) => {
    if (path === '/') return pathname === '/' || pathname === '/index.html';
    return pathname === path || pathname === path + '.html';
  };

  return (
    <aside className={`sidebar${open ? ' open' : ''}`} id="sidebar">
      <nav>
        {navGroups.map((group) => (
          <div className="nav-group" key={group.label}>
            <span className="nav-label">{group.label}</span>
            {group.links.map((link) => (
              <Link
                key={link.path}
                to={link.path}
                className={`nav-link${isActive(link.path) ? ' active' : ''}`}
                onClick={onClose}
              >
                <span className="nav-num">{link.num}</span>
                {link.label}
              </Link>
            ))}
          </div>
        ))}
      </nav>
    </aside>
  );
}
