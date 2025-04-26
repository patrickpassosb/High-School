create database JogoOnlineDB

create table Jogador (
JogadorID INT PRIMARY KEY IDENTITY,
NOME NVARCHAR(35) NOT NULL,
EMAIL NVARCHAR(50) NOT NULL UNIQUE,
DATA_CRIACAO DATETIME NOT NULL DEFAULT GETDATE(),
DATA_NASCIMENTO DATETIME NOT NULL
);

create table Personagem (
PersonagemID INT PRIMARY KEY IDENTITY,
JogadorID INT NOT NULL,
NOME NVARCHAR(35) NOT NULL,
Classe NVARCHAR(35) NOT NULL CHECK (CLASSE IN('DBA', 'Machine Learning Engineer', 'Software Engineer', 'Game Developer', 'Full Stack Developer', 'IoT Developer', 'Web3 Developer', 'Blockchain Developer', 'Data Scientist', 'Ethical Hacker', 'Data Analyst')),
Linguagem VARCHAR(35) NOT NULL CHECK (LINGUAGEM IN ('Python', 'JavaScript', 'Solidity', 'C++', 'SQL')),
Experiencia INT DEFAULT 0,
Nivel INT DEFAULT 1,
HP INT DEFAULT 100,
CPU INT DEFAULT 100,
STR INT DEFAULT 1,
VIT INT DEFAULT 1,
AGI INT DEFAULT 1,
INT INT DEFAULT 1,
PER INT DEFAULT 1,
SaldoBTC DECIMAL(16, 8) DEFAULT 0.00000000 CHECK (SaldoBTC <= 21000000.00000000),
DataCriacao DATETIME DEFAULT GETDATE(),
FOREIGN KEY (JogadorID) REFERENCES Jogador (JogadorID)
);

create table Missao (
MissaoID INT PRIMARY KEY IDENTITY,
Nome NVARCHAR(100) NOT NULL,
Descricao NVARCHAR(1000),
NivelRecomendado INT DEFAULT 1,
RecompensaBTC DECIMAL(16, 8) DEFAULT 0.00000000 CHECK (RecompensaBTC <= 21000000.00000000),
ExperienciaGanha INT DEFAULT 100,
DataCriacao DATETIME DEFAULT GETDATE()
);

create table LinguagemMissao (
Linguagem VARCHAR(35) NOT NULL CHECK (Linguagem IN ('Python', 'JavaScript', 'Solidity', 'C++')),
MissaoID INT NOT NULL,
PRIMARY KEY (Linguagem, MissaoID),
FOREIGN KEY (MissaoID) REFERENCES Missao(MissaoID)
);

create table Item (
ItemID INT PRIMARY KEY IDENTITY,
Nome NVARCHAR(50) NOT NULL,
Descricao NVARCHAR(1000),
Tipo NVARCHAR(35) NOT NULL CHECK (Tipo IN ('Consumivel', 'Equipamento', 'Especial')),
ValorBTC DECIMAL(16, 8) DEFAULT 0.00000000 CHECK (ValorBTC <= 21000000.00000000),
    BonusSTR INT DEFAULT 0,
    BonusVIT INT DEFAULT 0,
    BonusAGI INT DEFAULT 0,
    BonusINT INT DEFAULT 0,
    BonusPER INT DEFAULT 0,
    DataCriacao DATETIME DEFAULT GETDATE()
);

create table Inventario (
    InventarioID INT PRIMARY KEY IDENTITY,
    PersonagemID INT NOT NULL,
    ItemID INT NOT NULL,
    Quantidade INT DEFAULT 1 CHECK (Quantidade >= 0),
    DataAquisicao DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (PersonagemID) REFERENCES Personagem(PersonagemID),
    FOREIGN KEY (ItemID) REFERENCES Item(ItemID)
);
