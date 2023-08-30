CREATE PROCEDURE [dbo].[MMSP_AddArtist]
	@ArtistName NVARCHAR(80),
	@Genres NVARCHAR(80)

AS
BEGIN

INSERT INTO [Artist] ( [ArtistName], [Genres])
VALUES ( @ArtistName , @Genres )

	IF @@ROWCOUNT > 0
	BEGIN
		PRINT ' Artiste Ajouté avec Succès '
		RETURN 0
		END

	ELSE
	BEGIN
		PRINT ' Erreur Ajout Artist '
		RETURN 1
		END

END

