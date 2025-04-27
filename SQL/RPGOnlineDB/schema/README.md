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

# 📅 Execution Order

Run the scripts in this order:

1. `create_database.sql`
   - Creates the database `RPGOnlineDB`.

2. `tables.sql`
   - Creates all necessary tables (players, characters, items, missions, etc.).

3. `functions.sql`
   - Creates utility functions (e.g., calculating experience needed for the next level).

4. `stored_procedures.sql`
   - Creates stored procedures (e.g., inserting characters by name, leveling up characters).

5. `views.sql`
   - Creates database views for easier querying (e.g., view full character information).
  

# 🔎 Tips
- Always run scripts **one by one** to easily track errors if they occur.
- Make sure you are connected to the correct SQL Server instance.
- After executing this folder, the database structure will be ready for inserting data.

---

# 🌐 Related
After finishing this step, move to the `/data/` folder to insert sample data, configure security, and perform backup/restore operations.
