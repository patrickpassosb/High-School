# /data/

This folder contains all operational SQL scripts for the RPGOnlineDB project.

## 📂 Contents

- `data.sql` → Scripts to insert initial data (players, characters, missions, items, inventory).
- `queries.sql` → Sample SQL queries (JOINs, GROUP BY, ORDER BY, WHERE, etc.).
- `backup_restore.sql` → Scripts to backup and restore the RPGOnlineDB database.
- `security.sql` → Scripts to create SQL users and assign permissions.

## 🛠️ Purpose

The `/data/` folder concentrates all actions needed after the database structure is created.

1. Populate the database (`data.sql`).
2. Test queries (`queries.sql`).
3. Perform administrative tasks (`backup_restore.sql`, `security.sql`).

## 🚀 Usage Order

1. Run `data.sql` to insert initial records.
2. Run `queries.sql` to explore and validate data.
3. Run `security.sql` to configure access restrictions.
4. Run `backup_restore.sql` to create or recover backups.

## 📚 Notes

- This structure is kept **simple** for easy access and project clarity.
- If the project grows bigger, these scripts can later be split into individual folders (`/queries/`, `/security/`, etc.).
