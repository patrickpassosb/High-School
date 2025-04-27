# RPGOnlineDB - SQL Database Project

## 📋 Project Overview
This project is a database for an online RPG game. It handles players, characters, missions, items, and inventory management.

## 🏗️ Folder Structure
- `/schema/` - Database creation scripts (tables, views, procedures, functions)
- `/data/` - Scripts to insert initial data (players, characters, missions, items)
- `/security` - Scripts to create users and grant permissions
- `/backup_restore` - Scripts for backing up and restoring the database
- `/queries` - Example queries (JOIN, GROUP BY, etc.)

## 🛠️ How to Use
1. Create the database (`create_database.sql` inside `/schema/`)
2. Run all table creation scripts (`/schema/tables.sql`)
3. Run stored procedures and functions (`/schema/stored_procedures.sql` and `/schema/functions.sql`)
4. Insert seed data (`/data/data.sql`)
5. Execute security setup (`/data/security.sql`)
6. Backup or restore the database (`/data/backup_restore.sql`)

## 📚 Features
- Manage players and characters
- Assign missions by programming language
- Use items and manage inventory
- Track Bitcoin balance inside the game

## 🔒 Security
- Created `game_reader` user with restricted read-only access to players and missions.

## 🧹 Notes
- Designed using professional GitHub and database organization best practices.
- Developed with SQL Server.
