# /schema/

This folder contains all the SQL scripts responsible for creating the RPGOnlineDB database structure.

## 📂 Contents

- `create_database.sql` → Script to create the RPGOnlineDB database.
- `tables.sql` → Script to create all tables (player, character, mission, item, inventory, etc.).
- `views.sql` → Script to create database views (example: vw_character_full_info).
- `stored_procedures.sql` → Script to create stored procedures (example: sp_insert_character_by_name, sp_level_up_character).
- `functions.sql` → Script to create user-defined functions (example: fn_experience_to_next_level).

## 🏗️ Purpose

The `/schema/` folder defines the entire **database structure**, including:

- Tables (entities and relationships)
- Views (predefined data queries)
- Stored Procedures (reusable operations)
- Functions (custom calculations)

## 🚀 Usage Order

1. Run `create_database.sql` to create the database.
2. Run `tables.sql` to create all the tables.
3. Run `functions.sql` to create functions.
4. Run `stored_procedures.sql` to create procedures.
5. Run `views.sql` to create views.

## 📚 Notes

- The creation order matters because views, functions, and procedures depend on the tables.
- After creating the structure, you can proceed to insert data and use the system.
