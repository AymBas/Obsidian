---
tags: ['software-development', 'testing', 'e2e-test']
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
