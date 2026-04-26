import { BrowserRouter, Route, Routes, Navigate } from 'react-router-dom';
import Layout from './components/Layout';
import ContentPage from './components/ContentPage';
import Playground from './pages/Playground';
import { contentRoutes } from './pages/routes';

export default function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/playground" element={<Playground />} />
        <Route path="/playground.html" element={<Navigate to="/playground" replace />} />
        <Route element={<Layout />}>
          {contentRoutes.map((r) => (
            <Route
              key={r.path}
              path={r.path}
              element={
                <ContentPage
                  html={r.html}
                  title={r.title}
                  description={r.description}
                />
              }
            />
          ))}
          {contentRoutes
            .filter((r) => r.path !== '/')
            .map((r) => (
              <Route
                key={r.path + '.html'}
                path={r.path + '.html'}
                element={<Navigate to={r.path} replace />}
              />
            ))}
          <Route path="/index.html" element={<Navigate to="/" replace />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
}
