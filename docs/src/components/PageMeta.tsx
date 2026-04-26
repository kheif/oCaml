import { useEffect } from 'react';

type Props = { title: string; description?: string };

export default function PageMeta({ title, description }: Props) {
  useEffect(() => {
    document.title = title;
    if (description) {
      let tag = document.querySelector<HTMLMetaElement>('meta[name="description"]');
      if (!tag) {
        tag = document.createElement('meta');
        tag.name = 'description';
        document.head.appendChild(tag);
      }
      tag.content = description;
    }
  }, [title, description]);
  return null;
}
