---
tags: ['software-development', 'tool', 'playwright', 'testing', 'e2e']
---

# Playwright

## Definition
*Playwright* is a tool commonly used in modern development workflows.

### Code Snippet
```ts
import { test, expect } from '@playwright/test';

test('homepage has title', async ({ page }) => {
  await page.goto('/');
  await expect(page).toHaveTitle(/My App/);
});
```

See also: [[E2E Testing]]
