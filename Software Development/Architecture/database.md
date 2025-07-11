---
tags: ['software-development', 'architecture', 'database']
checked: false
last_updated: 2025-07-11
---

# Database

A *database* stores and organises data for persistent access.

```sql
-- PostgreSQL example table
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email TEXT UNIQUE NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

Related: [[PostgreSQL]] • [[CRUD]]
