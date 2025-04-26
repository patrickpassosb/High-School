-- Index to speed up JOINs on Personagem.JogadorID
IF NOT EXISTS (SELECT name FROM sys.indexes WHERE name = 'IDX_Personagem_JogadorID')
BEGIN
    CREATE INDEX IDX_Personagem_JogadorID ON Personagem(JogadorID);
END
GO

-- Index to speed up JOINs/queries on Inventario.PersonagemID
IF NOT EXISTS (SELECT name FROM sys.indexes WHERE name = 'IDX_Inventario_PersonagemID')
BEGIN
    CREATE INDEX IDX_Inventario_PersonagemID ON Inventario(PersonagemID);
END
GO

-- Index to speed up JOINs/queries on Inventario.ItemID
IF NOT EXISTS (SELECT name FROM sys.indexes WHERE name = 'IDX_Inventario_ItemID')
BEGIN
    CREATE INDEX IDX_Inventario_ItemID ON Inventario(ItemID);
END
GO

-- Index to help performance on LinguagemMissao.PersonagemID
IF NOT EXISTS (SELECT name FROM sys.indexes WHERE name = 'IDX_LinguagemMissao_Linguagem')
BEGIN
    CREATE INDEX IDX_LinguagemMissao_Linguagem ON LinguagemMissao(Linguagem);
END
GO

-- Index to help performance on LinguagemMissao.MissaoID
IF NOT EXISTS (SELECT name FROM sys.indexes WHERE name = 'IDX_LinguagemMissao_MissaoID')
BEGIN
    CREATE INDEX IDX_LinguagemMissao_MissaoID ON LinguagemMissao(MissaoID);
END
GO
