---
tags: ['software-development', 'tool', 'fastapi', 'backend', 'python']
checked: false
last_updated: 2025-07-11
---

# FastAPI

## Definition
*FastAPI* is a tool commonly used in modern development workflows.

### Code Snippet
```python
from fastapi import FastAPI
app = FastAPI()
@app.get("/")
def read_root():
    return {"hello": "world"}
```

See also: [[Backend]] • [[Uvicorn]] • [[CORS]]
