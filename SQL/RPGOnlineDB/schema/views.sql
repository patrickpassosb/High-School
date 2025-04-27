CREATE VIEW vw_character_full_info AS
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
JOIN language l ON c.language_id = l.language_id;
GO
