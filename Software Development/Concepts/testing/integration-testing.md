---
tags: ['software-development', 'testing', 'integration-test']
checked: false
last_updated: 2025-07-11
---

# Integration Testing

### Code Snippet
```python
from httpx import AsyncClient
from main import app

async def test_create_item():
    async with AsyncClient(app=app, base_url="http://test") as ac:
        response = await ac.post("/items", json={"name": "foo", "price": 1})
    assert response.status_code == 201
```

Related: [[FastAPI]] • [[Database]]
