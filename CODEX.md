# CODEX.md - Working Memory

## Project Scope
This workspace contains Week 02 coursework with two SQL contexts:

1. `my-ecommerce/`
   Shoe e-commerce schema and seed data for PostgreSQL.
2. `postgresql/`
   Restaurant management schema and seed data.

This file is for Codex-specific working memory and should be updated when workflow or project conventions change.

## Current Focus
The current active area is `my-ecommerce/`.

Key files:
- `my-ecommerce/create-tables.sql`
- `my-ecommerce/insert-into.sql`
- `my-ecommerce/01_categories.sql` through `my-ecommerce/07_order_items.sql`

## SQL Workflow
Use this order when setting up `my-ecommerce`:

1. Run `my-ecommerce/create-tables.sql`
2. Run `my-ecommerce/insert-into.sql` with `psql`, or run `01` through `07` manually in order

## Seed File Rules
The seed files in `my-ecommerce/` were adjusted to be rerunnable:

- `01_categories.sql`
  Uses `ON CONFLICT DO NOTHING`
- `02_products.sql`
  Resolves `category_id` from `category_name` and uses upsert on `product_id`
- `03_users.sql`
  Uses upsert on `email`
- `04_carts.sql`
  Resolves `user_id` from `users.email`
- `05_cart_items.sql`
  Resolves `cart_id` from the user's cart and updates quantity on conflict
- `06_orders.sql`
  Resolves `user_id` from `users.email` and avoids duplicate order inserts
- `07_order_items.sql`
  Resolves `order_id` from the seeded order and avoids duplicate order item inserts

## Important Constraints
- Do not hardcode `cart_id = 1` or `order_id = 1` in seed files
- Prefer natural lookups such as `email`, `category_name`, and `product_id`
- `create-tables.sql` should not execute `CREATE DATABASE` automatically in query tools
- Prefer `CREATE TABLE IF NOT EXISTS` for repeatable setup scripts

## Known Limitation
Codex could not run PostgreSQL seed scripts directly from the terminal because local `psql` required a password and no connection credentials were present in the workspace.

Observed error:
- `fe_sendauth: no password supplied`

## If Continuing Later
Before running database commands from terminal, confirm:

- host
- port
- username
- password or environment-based auth
- target database name

Current database name in this project:
- `ecommerce_adidas`
