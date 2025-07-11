
---
tags: ['software-development', 'crud', 'http-put']
---

# PUT

### Code Snippet
```python
@app.put("/items/{item_id}")
async def update_item(item_id: int, item: Item):
    return item
```

Backlinks: [[CRUD]] • [[FastAPI]]
