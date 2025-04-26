CREATE PROCEDURE RegistrarMissao
    @PersonagemID INT,
    @MissaoID INT
AS
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM PersonagemMissao
        WHERE PersonagemID = @PersonagemID AND MissaoID = @MissaoID
    )
    BEGIN
        INSERT INTO PersonagemMissao (PersonagemID, MissaoID, DataInicio)
        VALUES (@PersonagemID, @MissaoID, GETDATE());
    END
    ELSE
    BEGIN
        PRINT 'Missão já registrada para este personagem.';
    END
END;

CREATE PROCEDURE SubirNivelPersonagem
    @PersonagemID INT
AS
BEGIN
    DECLARE @XPAtual INT;
    DECLARE @NivelAtual INT;

    SELECT @XPAtual = Experiencia, @NivelAtual = Nivel
    FROM Personagem
    WHERE PersonagemID = @PersonagemID;

    IF @XPAtual >= @NivelAtual * 300
    BEGIN
        UPDATE Personagem
        SET Nivel = Nivel + 1,
            Experiencia = 0
        WHERE PersonagemID = @PersonagemID;

        PRINT 'Personagem subiu de nível!';
    END
    ELSE
    BEGIN
        PRINT 'Experiência insuficiente para subir de nível.';
    END
END;
