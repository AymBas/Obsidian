---
tags: ['software-development', 'concept', 'security', 'cors']
checked: false
last_updated: 2025-07-11
---

# CORS – Cross‑Origin Resource Sharing

Browsers block requests to a different *origin* unless the server opts in with **CORS** headers.

```python
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)
```

Related: [[API]] • [[FastAPI]]
