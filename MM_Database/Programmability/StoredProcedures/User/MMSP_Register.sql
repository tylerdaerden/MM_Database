CREATE PROCEDURE [dbo].[MMSP_Register]
	@FirstName NVARCHAR(50),
	@LastName NVARCHAR(80),
	@UserName NVARCHAR(80),
	@Email NVARCHAR(80),
	@BirthDate DATE,
	@Password NVARCHAR(30)
AS
BEGIN
	-- Insertion des données dans la table User
	INSERT INTO [User] ([FirstName], [LastName], [UserName], [Email], [BirthDate], [Password])
	VALUES (@FirstName, @LastName, @UserName, @Email, CONVERT(DATE, @BirthDate, 103), dbo.MMSF_HashPassword(@Password))

	-- Vérification du résultat de l'insertion
	IF @@ROWCOUNT > 0
	BEGIN
		PRINT 'User Enregistré avec Succès'
		RETURN 0
	END
	ELSE
	BEGIN
		PRINT 'Erreur Enregistrement User'
		RETURN 1
	END
END
