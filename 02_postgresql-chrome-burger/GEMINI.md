# GEMINI.md - Restaurant Management System (PostgreSQL)

## Project Overview
This project is a practical PostgreSQL database implementation for a restaurant management system, specifically tailored for a burger shop. It models the core operations of a restaurant, including inventory management (suppliers and ingredients), staff tracking, menu management (with recipes), and order processing.

### Key Features
*   **Inventory Tracking:** Manages suppliers and ingredient stock levels.
*   **Menu & Recipes:** Defines menu items and their constituent ingredients (recipes) using a join table.
*   **Order Management:** Captures customer orders, associating them with specific staff members and menu items.
*   **Relational Integrity:** Implements primary keys, foreign keys, and cascading truncates for robust data management.

## Directory Structure
*   `create-tables.sql`: The primary schema definition file containing `CREATE TABLE` statements for the entire system.
*   `01_suppliers.sql` through `07_order_items.sql`: Numbered SQL scripts designed to be executed in sequence to populate the database with mock data.
*   `query.sql`: A playground for testing and running SQL queries against the populated database.

## Schema Architecture
The database consists of the following relational tables:
1.  **Suppliers:** Name, contact info, and phone numbers of ingredient providers.
2.  **Staff:** Employee details and roles.
3.  **Ingredients:** Stock levels and units, linked to a supplier.
4.  **MenuItems:** Product details, descriptions, and pricing.
5.  **RecipeItems:** A many-to-many join table linking `MenuItems` to `Ingredients` with specific quantities.
6.  **Orders:** Transactional headers recording date, total price, and the staff member responsible.
7.  **OrderItems:** A join table linking `Orders` to `MenuItems` to record specific items and quantities per order.

## Usage & Execution
To set up the database environment:

1.  **Create Schema:** Execute `create-tables.sql` in your PostgreSQL client.
2.  **Seed Data:** Run the data insertion scripts in their numerical order to ensure foreign key constraints are satisfied:
    ```bash
    psql -f 01_suppliers.sql
    psql -f 02_staff.sql
    psql -f 03_ingredients.sql
    psql -f 04_menu_items.sql
    psql -f 05_recipe_items.sql
    psql -f 06_orders.sql
    psql -f 07_order_items.sql
    ```
3.  **Verify & Query:** Use `query.sql` to run test queries and verify the data state.

## Development Conventions
*   **Naming:** Tables and columns use `Snake_Case` or `CamelCase` as established in the schema (e.g., `MenuItems`, `supplier_id`).
*   **Data Integrity:** Each seed file begins with a `TRUNCATE ... RESTART IDENTITY CASCADE` to allow for clean re-runs without duplicate entries.
*   **Types:** Uses standard PostgreSQL types like `SERIAL`, `TIMESTAMP`, `DECIMAL`, and `TEXT`.
