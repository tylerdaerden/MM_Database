CREATE PROCEDURE [dbo].[MMSP_AddMasher]
	@MasherName NVARCHAR(50),
	@Weblink NVARCHAR(80)

AS
BEGIN
INSERT INTO [Masher] ( [MasherName] , [WebLink]  )
VALUES ( @MasherName , @Weblink )

IF @@ROWCOUNT > 0 
BEGIN 
	PRINT ' Masher Ajouté avec succès '
	RETURN 0
	END

ELSE
BEGIN 
	PRINT ' Erreur dans ajout du Masher '
	RETURN 1
	END

END