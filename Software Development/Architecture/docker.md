---
tags: ['software-development', 'architecture', 'docker']
checked: false
last_updated: 2025-07-11
---

# Docker

Docker packages apps and their dependencies into containers.

```dockerfile
# minimal Python image
FROM python:3.12-slim
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
```

Related: [[Traefik]] • [[Fly.io]]
