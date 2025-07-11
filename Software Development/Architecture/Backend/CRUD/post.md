
---
tags: ['software-development', 'crud', 'http-post']
---

# POST

### Code Snippet
```python
@app.post("/items", status_code=201)
async def create_item(item: Item):
    return item
```

Backlinks: [[CRUD]] • [[FastAPI]]
