-- Index to speed up JOINs on Personagem.JogadorID
CREATE INDEX IDX_Personagem_JogadorID ON Personagem(JogadorID);

-- Index to speed up joins/queries on Inventario.PersonagemID
CREATE INDEX IDX_Inventario_PersonagemID ON Inventario(PersonagemID);

-- Index to speed up joins/queries on Inventario.ItemID
CREATE INDEX IDX_Inventario_ItemID ON Inventario(ItemID);

-- Index to help performance on PersonagemMissao
CREATE INDEX IDX_PersonagemMissao_PersonagemID ON PersonagemMissao(PersonagemID);
CREATE INDEX IDX_PersonagemMissao_MissaoID ON PersonagemMissao(MissaoID);
