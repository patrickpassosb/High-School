-- Create a login for the SQL Server
CREATE LOGIN game_reader
WITH PASSWORD = 'StrongPassword123!';
GO

-- Create a user inside the database
USE RPGOnlineDB;
GO

CREATE USER game_reader FOR LOGIN game_reader;
GO

-- Grant only SELECT permission on specific tables
GRANT SELECT ON player TO game_reader;
GRANT SELECT ON mission TO game_reader;
GO
