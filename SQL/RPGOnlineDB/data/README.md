# /data/

This folder contains all operational SQL scripts for the RPGOnlineDB project.


---
## 📂 Contents

- `data.sql` → Scripts to insert initial data (players, characters, missions, items, inventory).
- `queries.sql` → Sample SQL queries (JOINs, GROUP BY, ORDER BY, WHERE, etc.).
- `backup_restore.sql` → Scripts to backup and restore the RPGOnlineDB database.
- `security.sql` → Scripts to create SQL users and assign permissions.
---
## 🛠️ Purpose

The `/data/` folder concentrates all actions needed after the database structure is created.

1. Populate the database (`data.sql`).
2. Test queries (`queries.sql`).
3. Perform administrative tasks (`backup_restore.sql`, `security.sql`).
---
# 📅 Execution Order

Run the scripts in this order:

1. `data.sql`
   - Inserts sample data (players, characters, items, missions, inventory).

2. `queries.sql`
   - Provides sample queries to explore the data (using JOIN, GROUP BY, ORDER BY, WHERE, and aggregations).

3. `security.sql`
   - Creates a read-only SQL user and grants SELECT permissions on specific tables.

4. `backup_restore.sql`
   - Provides scripts to perform a full backup and a restore of the database.

---

# 🔎 Tips
- Execute each script separately to ensure that the previous data is properly inserted before running queries.
- Only run `backup_restore.sql` after inserting and verifying that all data is correct.
- If you encounter foreign key errors, verify that characters and missions are inserted before inserting inventory items.

---

# 🌐 Related
Make sure you have already executed all scripts from the `/schema/` folder **before** running these.
The `/data/` folder completes your database with real working content and prepares it for production or testing environments.
