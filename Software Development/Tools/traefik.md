---
tags: ['software-development', 'tool', 'traefik', 'reverse-proxy']
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
