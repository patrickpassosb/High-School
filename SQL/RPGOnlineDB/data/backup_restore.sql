-- Backup the RPGOnlineDB database
BACKUP DATABASE RPGOnlineDB
TO DISK = 'C:\SQLBackups\RPGOnlineDB_backup.bak'
WITH FORMAT, 
     MEDIANAME = 'RPGOnlineDBBackup',
     NAME = 'Full Backup of RPGOnlineDB';
GO

-- Restore the RPGOnlineDB database
RESTORE DATABASE RPGOnlineDB_Restore
FROM DISK = 'C:\SQLBackups\RPGOnlineDB_backup.bak'
WITH MOVE 'RPGOnlineDB' TO 'C:\SQLBackups\RPGOnlineDB_Restore.mdf',
     MOVE 'RPGOnlineDB_log' TO 'C:\SQLBackups\RPGOnlineDB_Restore.ldf',
     REPLACE;
GO
