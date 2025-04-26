-- Etapa 6: Backup e Restauração
-- Script para backup do banco de dados (execute como admin)
BACKUP DATABASE JogoOnlineDB
TO DISK = 'C:\Backups\JogoOnlineDB.bak'
WITH FORMAT,
     NAME = 'Backup Completo do JogoOnlineDB';
GO

-- Script para restaurar o banco de dados (execute como admin)
-- Certifique-se de que o banco atual esteja desconectado antes
RESTORE DATABASE JogoOnlineDB_Restaurado
FROM DISK = 'C:\Backups\JogoOnlineDB.bak'
WITH MOVE 'JogoOnlineDB' TO 'C:\SQLData\JogoOnlineDB_Restaurado.mdf',
     MOVE 'JogoOnlineDB_log' TO 'C:\SQLData\JogoOnlineDB_Restaurado_log.ldf',
     REPLACE;
GO
