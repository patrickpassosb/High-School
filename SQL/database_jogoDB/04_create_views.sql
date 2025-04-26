CREATE VIEW ViewJogadorPersonagem AS
SELECT 
    j.JogadorID,
    j.Nome AS NomeJogador,
    j.Email,
    p.PersonagemID,
    p.Nome AS NomePersonagem,
    p.Classe,
    p.Linguagem,
    p.Nivel,
    p.Experiencia,
    p.SaldoBTC
FROM Jogador j
JOIN Personagem p ON j.JogadorID = p.JogadorID;
GO
