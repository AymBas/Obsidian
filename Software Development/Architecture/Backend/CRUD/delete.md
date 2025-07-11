
---
tags: ['software-development', 'crud', 'http-delete']
---

# DELETE

### Code Snippet
```python
@app.delete("/items/{item_id}", status_code=204)
async def delete_item(item_id: int):
    return None
```

Backlinks: [[CRUD]] • [[FastAPI]]
