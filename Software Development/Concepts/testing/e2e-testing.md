---
tags: ['software-development', 'testing', 'e2e-test']
checked: false
last_updated: 2025-07-11
---

# E2E Testing

### Code Snippet
```ts
import {{ test, expect }} from '@playwright/test';

test('can place order', async ({ page }) => {{
  await page.goto('/');
  await page.click('text=Buy');
  await expect(page.locator('text=Thank you')).toBeVisible();
}});
```

Related: [[Playwright]]
