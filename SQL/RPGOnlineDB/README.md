# 📚 RPGOnlineDB
**RPGOnlineDB** is a complete database project for a multiplayer online RPG game.  
It manages players, characters, missions, inventory, and rewards with a professional SQL Server structure.

This project applies best practices of database design, stored procedures, functions, security, backup/restore, and clean querying.

---

# 🛠️ Project Structure

```
RPGOnlineDB/
│
├── schema/
│   ├— create_database.sql          → Create the database
│   ├— tables.sql                   → Create all tables
│   ├— functions.sql                → Create utility functions
│   ├— stored_procedures.sql        → Create stored procedures
│   ├— views.sql                    → Create database views
│   └— indexes.sql                  → Create database indexes
│
├── data/
    ├— data.sql                     → Insert sample data (players, characters, missions, items, inventory)
    ├— queries.sql                  → Example SELECT queries
    ├— security.sql                 → Create a restricted user (read-only access)
    └— backup_restore.sql           → Scripts for backup and restore of the database
```

---

# 📋 Setup Instructions

> ✅ Follow these steps to fully set up the RPGOnlineDB database:

### 1. Execute `/schema/` scripts (in this order):
- `create_database.sql`
- `tables.sql`
- `functions.sql`
- `stored_procedures.sql`
- `views.sql`
- `indexes.sql`
  
📌 *This will create the entire database structure (tables, procedures, functions, and views).*

---

### 2. Execute `/data/` scripts (in this order):
- `data.sql`
- `queries.sql`
- `security.sql`
- `backup_restore.sql` *(optional: only if you want to back up or restore your database)*

📌 *This will populate the database with initial players, characters, missions, and inventory data.*

---

# 🛡️ Requirements
- **SQL Server** installed (Developer or Express Edition is enough)
- A SQL Client like **SQL Server Management Studio (SSMS)** or **Azure Data Studio**

---

# 🧹 Features
- 🎮 Players and characters management
- 🚀 Missions based on programming languages (Python, JavaScript, Solidity, C++, SQL)
- 🧪 Smart use of Stored Procedures and Functions
- 🔒 SQL Server Security: Read-only user creation
- 📀 Full database Backup & Restore ready
- 📊 Pre-built Queries to validate and explore the data

---

# 🚀 Quick Start Example

```sql
-- After building and inserting data, you can check all characters and players:
SELECT * FROM vw_character_full_info;
```

---

# 📊 About the Author

Developed as part of a high-school SQL learning project focused on **professional real-world practices**.

---

# ⚡ Notes
- The folder structure is optimized for simplicity and clarity.
- If needed, folders can be expanded later (e.g., separating backups, advanced procedures, triggers).

