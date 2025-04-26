CREATE FUNCTION CalcularXPProximoNivel (@NivelAtual INT)
RETURNS INT
AS
BEGIN
    RETURN (@NivelAtual * 300);  -- Regra: precisa de 300 XP vezes o nível atual
END;
GO
