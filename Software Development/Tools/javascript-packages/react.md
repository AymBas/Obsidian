---
tags: ['software-development', 'tool', 'react', 'frontend']
---

# React

## Definition
*React* is a tool commonly used in modern development workflows.

### Code Snippet
```tsx
import { useState } from 'react';

export function Counter() {
  const [count, setCount] = useState(0);
  return <button onClick={() => setCount(count + 1)}>Count: {count}</button>;
}
```

See also: [[Frontend]] • [[TypeScript]] • [[Mantine UI]]
