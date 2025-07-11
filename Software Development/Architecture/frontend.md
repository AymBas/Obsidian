---
tags: ['software-development', 'architecture', 'frontend']
---

# Frontend

The *frontend* is the client‑side layer users interact with—typically rendered in the browser or a mobile shell.

### Key Responsibilities
- Render UI and handle user input.
- Call backend [[API]]s.
- Ensure performance and accessibility.

### Code Snippet (React + TypeScript)

```tsx
import {{ Button }} from '@mantine/core';

export function HelloButton() {{
  return <Button onClick={{() => alert('Hi')}}>Say Hi</Button>;
}}
```

Related: [[Backend]] • [[TypeScript]] • [[React]]
