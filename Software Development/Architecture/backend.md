---
tags: ['software-development', 'architecture', 'backend']
---

# Backend

The *backend* handles business logic, data access, and integrations.

### Typical Stack
- Web framework (e.g., [[FastAPI]])
- [[Database]] such as [[PostgreSQL]]
- Message queues, caches, and background workers

### Snippet (FastAPI endpoint)

```python
from fastapi import FastAPI

app = FastAPI()

@app.get("/health")
def health():
    return {{"status": "ok"}}
```

See also: [[CORS]] • [[CRUD]]
