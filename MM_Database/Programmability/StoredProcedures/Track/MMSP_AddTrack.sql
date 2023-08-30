CREATE PROCEDURE [dbo].[MMSP_AddTrack]
	@Title NVARCHAR(50),
	@Length INT, 
	@Explicit BIT, --mettre 1 pour True et 0 pour False
    @ArtistName NVARCHAR(80),
	@ArtistId INT OUTPUT -- On ajoute OUTPUT pour retourner l'ID de l'artiste correspondant
AS
BEGIN
    -- Vérifier si l'artiste existe en fonction du nom et récupérer l'ID
    SET @ArtistId = (SELECT Id FROM Artist WHERE ArtistName = @ArtistName)

    -- Si l'artiste n'existe pas, insérer un nouvel artiste
    IF @ArtistId IS NULL
    BEGIN
        INSERT INTO Artist (ArtistName) VALUES (@ArtistName)
        SET @ArtistId = SCOPE_IDENTITY() -- Récupérer l'ID de l'artiste inséré
    END

    -- Insérer la nouvelle piste
    INSERT INTO Track (Title, Length, Explicit, ArtistName, ArtistId)
    VALUES (@Title, @Length, @Explicit, @ArtistName, @ArtistId)
END



