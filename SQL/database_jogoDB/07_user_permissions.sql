-- (execute esses comandos como admin no SQL Server Management Studio)
CREATE LOGIN LeitorDoJogo WITH PASSWORD = 'SenhaSegura123!';
GO
CREATE USER LeitorDoJogo FOR LOGIN LeitorDoJogo;
GO
GRANT SELECT ON Personagem TO LeitorDoJogo;
GRANT SELECT ON Missao TO LeitorDoJogo;
-- Este usuário só pode visualizar dados nessas tabelas
GO
