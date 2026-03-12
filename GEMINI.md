# GEMINI.md - Project Context

## Project Overview
This repository contains coursework and project planning materials for **Week 02** of the **JSD12** program. It serves as a dual-context learning environment covering e-commerce business analysis, system design, JavaScript data modeling, and relational database schema design.

The repository is divided into two primary contexts:
1.  **Performance Shoe E-commerce:** A conceptual project focusing on business requirements, user stories, and basic JavaScript implementation for an Adidas running shoe store.
2.  **Restaurant Management System:** A practical database implementation project using PostgreSQL to manage a burger restaurant's inventory, staff, and orders.

---

## Directory & File Structure

### 1. E-Commerce Planning (Performance Shoes)
These files outline the business logic and initial data structures for an e-commerce platform specializing in high-performance running shoes (e.g., Adidas Evo SL and Adios Pro 4).

*   `01_my-ecommerce.md`: Defines the problem statement (difficulty in finding performance gear) and proposed solutions.
*   `02_bussiness-model-canvas.excalidraw`: Visual business strategy (Business Model Canvas).
*   `03_use-case-diagram.excalidraw`: Diagrams mapping user interactions with the system.
*   `04_er-diagram.excalidraw`: Entity-Relationship diagram for the e-commerce database.
*   `05_product-backlog.md`: A comprehensive list of user stories for both Customers (searching, purchasing, tracking) and Administrators (inventory management, sales reports).
*   `06_bring-it-to-javascript.js`: A foundational JavaScript file demonstrating how to represent product and cart data using objects and arrays.

### 2. Database Implementation (Restaurant System)
The `postgresql/` directory contains a complete relational database schema and seed data for a restaurant (specifically a burger shop).

*   `postgresql/create-tables.sql`: The primary schema definition file. It establishes tables for `Suppliers`, `Staff`, `Ingredients`, `MenuItems`, `RecipeItems`, `Orders`, and `OrderItems`.
*   `postgresql/01_suppliers.sql` through `07_order_items.sql`: Modular SQL scripts used to populate the tables with mock data for testing.
*   `postgresql/query.sql`: A playground for testing SQL queries against the database.

---

## Technical Context

### Technologies Used
*   **Documentation:** Markdown
*   **Design:** Excalidraw (Diagrams)
*   **Programming:** JavaScript (ES6+ for data modeling)
*   **Database:** PostgreSQL (SQL-based relational modeling)

### Key Concepts
*   **User Stories:** Following the "As a [role], I want [action], so that [value]" format.
*   **Data Modeling:** Mapping real-world objects (shoes, burgers) into code (JS objects) and database records (SQL tables).
*   **Relational Design:** Utilizing primary keys, foreign keys, and join tables (e.g., `RecipeItems`, `OrderItems`) to handle many-to-many relationships.

---

## Usage Instructions

### Reviewing Design
*   Use [Excalidraw](https://excalidraw.com/) to open and edit the `.excalidraw` files.
*   Read `05_product-backlog.md` to understand the functional requirements before reviewing code or schemas.

### Database Setup
1.  Run `create-tables.sql` in a PostgreSQL-compatible environment.
2.  Execute the numbered scripts (`01_...` to `07_...`) in sequence to populate the database with mock data.
3.  Use `query.sql` to verify the data was inserted correctly.

### JavaScript Exploration
*   The `06_bring-it-to-javascript.js` file can be run using Node.js to see the logged product and cart objects:
    ```bash
    node 06_bring-it-to-javascript.js
    ```

---

## TODO / Future Work
- [ ] Align the SQL schema in `postgresql/` with the Shoe E-commerce project requirements (currently it follows a restaurant model).
- [ ] Implement actual logic for the shopping cart (e.g., total price calculation, adding/removing items) in the JS file.
- [ ] Add more complex SQL queries for sales analysis in `query.sql`.
