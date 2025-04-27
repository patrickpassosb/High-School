CREATE FUNCTION fn_experience_to_next_level
(
    @current_level INT
)
RETURNS INT
AS
BEGIN
    RETURN (@current_level * 200); -- simple formula (example)
END;
GO
