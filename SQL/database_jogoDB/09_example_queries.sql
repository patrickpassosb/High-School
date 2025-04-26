-- 1. JOIN: Listar todos os personagens com nome e email do jogador
SELECT 
    p.PersonagemID, p.Nome AS NomePersonagem, p.Classe, p.Linguagem,
    j.Nome AS NomeJogador, j.Email
FROM Personagem p
JOIN Jogador j ON p.JogadorID = j.JogadorID;

-- 2. WHERE: Personagens com saldo em BTC maior que 0.002
SELECT Nome, Nivel, SaldoBTC
FROM Personagem
WHERE SaldoBTC > 0.002;

-- 3. ORDER BY: Missões ordenadas por nível recomendado (descendente)
SELECT MissaoID, Nome, NivelRecomendado
FROM Missao
ORDER BY NivelRecomendado DESC;

-- 4. GROUP BY + COUNT: Quantidade de personagens por linguagem
SELECT Linguagem, COUNT(*) AS TotalPersonagens
FROM Personagem
GROUP BY Linguagem;

-- 5. GROUP BY + SUM: Total de BTC por classe de personagem
SELECT Classe, SUM(SaldoBTC) AS TotalBTC
FROM Personagem
GROUP BY Classe;
