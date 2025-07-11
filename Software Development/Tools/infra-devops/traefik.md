---
tags: ['software-development', 'tool', 'traefik', 'reverse-proxy']
checked: false
last_updated: 2025-07-11
---

# Traefik

## Definition
*Traefik* is a tool commonly used in modern development workflows.

### Code Snippet
```toml
[entryPoints.web]
  address = ":80"

[http.routers]
  [http.routers.api]
    rule = "Host(`api.example.com`)"
    service = "api"
```

See also: [[Docker]] • [[Service]]
