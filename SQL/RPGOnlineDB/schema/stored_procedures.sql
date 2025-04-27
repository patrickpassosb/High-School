CREATE PROCEDURE sp_insert_character_by_name
    @player_id INT,
    @character_name NVARCHAR(50),
    @class_name NVARCHAR(50),
    @language_name NVARCHAR(35),
    @experience INT = 0,
    @level INT = 1
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @class_id INT;
    DECLARE @language_id INT;

    -- Find class_id
    SELECT @class_id = class_id
    FROM class
    WHERE name = @class_name;

    -- Find language_id
    SELECT @language_id = language_id
    FROM language
    WHERE name = @language_name;

    -- Insert into character
    INSERT INTO character (player_id, name, class_id, language_id, experience, level)
    VALUES (@player_id, @character_name, @class_id, @language_id, @experience, @level);
END;
GO
--
CREATE PROCEDURE sp_level_up_character
    @character_id INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE character
    SET 
        level = level + 1,
        experience = 0 -- reset experience after level up (optional)
    WHERE 
        character_id = @character_id;
END;
GO
