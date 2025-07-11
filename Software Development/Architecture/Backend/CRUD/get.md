
---
tags: ['software-development', 'crud', 'http-get']
---

# GET

### Code Snippet
```python
@app.get("/items/{item_id}")
async def read_item(item_id: int):
    return {"item_id": item_id}
```

Backlinks: [[CRUD]] • [[FastAPI]]
