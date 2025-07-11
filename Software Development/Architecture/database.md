---
tags: ['software-development', 'architecture', 'database']
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
