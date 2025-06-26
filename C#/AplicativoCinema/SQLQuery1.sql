CREATE DATABASE SolucaoCinema;
GO
USE SolucaoCinema;
GO
 
CREATE TABLE Usuario (
   idUsuario INT    IDENTITY (1, 1) NOT NULL,
   Usuario VARCHAR (10) NOT NULL,
   Senha VARCHAR (10),

   PRIMARY KEY CLUSTERED (idUsuario ASC)
);
GO