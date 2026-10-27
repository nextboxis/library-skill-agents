---
name: rich-text-editors-contenteditable
description: Use this skill when embedding and customizing headless rich text editors, markdown editors, and contenteditable engines using TipTap or Lexical.
---
# Rich Text Editors & ContentEditable

## When to use
Use this skill when building WYSIWYG article editors, comment boxes with @mentions, collaborative text editing, or formatted document builders.

## Prerequisites
- Node.js 18+ and modern React/Vue environment.
- Headless editor library installed (e.g., `@tiptap/react`, `@tiptap/starter-kit`).

## Step-by-step workflow
1. **Choose headless architecture**: Prefer headless engines (TipTap, Lexical) over raw `contenteditable` to avoid cross-browser DOM quirks.
2. **Configure core extensions**: Initialize editor extensions: StarterKit (paragraphs, bold, headings), Placeholder, and History (undo/redo).
3. **Build custom toolbars**: Connect custom toolbar buttons to editor commands using `editor.chain().focus().toggleBold().run()`.
4. **Sanitize HTML input/output**: Sanitize exported HTML strings using DOMPurify before storing in databases or rendering to users.
5. **Handle collaborative updates**: Connect Yjs or WebSocket providers where real-time multiplayer editing is required.

## Commands / code examples
```tsx
import React from 'react';
import { useEditor, EditorContent } from '@tiptap/react';
import StarterKit from '@tiptap/starter-kit';
import Placeholder from '@tiptap/extension-placeholder';

interface EditorProps {
  initialContent?: string;
  onChange: (html: string) => void;
}

export const RichTextEditor: React.FC<EditorProps> = ({ initialContent = '', onChange }) => {
  const editor = useEditor({
    extensions: [
      StarterKit,
      Placeholder.configure({ placeholder: 'Draft your technical post here...' }),
    ],
    content: initialContent,
    onUpdate: ({ editor }) => {
      onChange(editor.getHTML());
    },
  });

  if (!editor) return null;

  return (
    <div className="border rounded-md overflow-hidden">
      <div className="bg-gray-100 p-2 flex gap-2 border-b">
        <button
          type="button"
          onClick={() => editor.chain().focus().toggleBold().run()}
          className={`px-2 py-1 rounded text-sm ${editor.isActive('bold') ? 'bg-gray-300 font-bold' : ''}`}
        >
          Bold
        </button>
        <button
          type="button"
          onClick={() => editor.chain().focus().toggleHeading({ level: 2 }).run()}
          className={`px-2 py-1 rounded text-sm ${editor.isActive('heading', { level: 2 }) ? 'bg-gray-300 font-bold' : ''}`}
        >
          H2
        </button>
        <button
          type="button"
          onClick={() => editor.chain().focus().toggleBulletList().run()}
          className={`px-2 py-1 rounded text-sm ${editor.isActive('bulletList') ? 'bg-gray-300 font-bold' : ''}`}
        >
          List
        </button>
      </div>
      <EditorContent editor={editor} className="p-4 min-h-[200px] prose focus:outline-none" />
    </div>
  );
};
```

## Common mistakes & pitfalls
- Relying on raw `document.execCommand`, which is deprecated and produces inconsistent markup across browsers.
- Rendering raw editor HTML output on pages without DOMPurify sanitization, exposing Cross-Site Scripting (XSS) risks.
- Forgetting to destroy editor instances on component unmount, causing browser memory leaks.

## Verification checklist
- [ ] Editor is built using an established headless model (TipTap / Lexical).
- [ ] Output HTML is sanitized before storage or display.
- [ ] Keyboard shortcuts (Ctrl+B, Ctrl+Z) function predictably.
- [ ] Editor cleans up resources on component unmount.

## Related skills
- cross-site-scripting-xss-defense-dompurify
- browser-dom-manipulation-events
- react-fundamentals
- forms-validation-react-hook-form
