SELECT 
    c.character_id,
    p.name AS player_name,
    c.name AS character_name,
    cl.name AS class_name,
    l.name AS language_name,
    c.level,
    c.experience
FROM 
    character c
JOIN player p ON c.player_id = p.player_id
JOIN class cl ON c.class_id = cl.class_id
JOIN language l ON c.language_id = l.language_id
ORDER BY p.name, c.name;
GO


SELECT 
    c.name AS character_name,
    c.level,
    p.name AS player_name
FROM 
    character c
JOIN player p ON c.player_id = p.player_id
WHERE 
    c.level >= 4
ORDER BY c.level DESC;
GO


SELECT 
    p.name AS player_name,
    COUNT(c.character_id) AS total_characters
FROM 
    player p
LEFT JOIN character c ON p.player_id = c.player_id
GROUP BY 
    p.name
ORDER BY total_characters DESC;
GO


SELECT 
    p.name AS player_name,
    SUM(c.balance_btc) AS total_btc_balance
FROM 
    player p
JOIN character c ON p.player_id = c.player_id
GROUP BY 
    p.name
ORDER BY total_btc_balance DESC;
GO

SELECT 
    c.name AS character_name,
    i.name AS item_name,
    inv.quantity
FROM 
    inventory inv
JOIN character c ON inv.character_id = c.character_id
JOIN item i ON inv.item_id = i.item_id
ORDER BY c.name, i.name;
GO
