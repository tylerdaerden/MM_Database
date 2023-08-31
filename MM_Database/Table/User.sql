CREATE TABLE [dbo].[User]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[FirstName] NVARCHAR(50) NOT NULL,
	[LastName] NVARCHAR(50) NOT NULL,
	[UserName] NVARCHAR(50) NOT  NULL,
	[Email] NVARCHAR(384) NOT NULL,
	[BirthDate] DATE NOT NULL,
	[Password] BINARY(64) NOT NULL, 
	[IsAdmin] BIT NOT NULL DEFAULT 0

	CONSTRAINT [PK_User] PRIMARY KEY ([Id]) ,
	CONSTRAINT [UK_User_Email] UNIQUE ([Email]),
	--Ajout d'une contrainte d'âge de 13+ ans pour User 👇👇👇
	CONSTRAINT [CK_User_Birthdate] CHECK (DATEDIFF(YEAR,[BirthDate], GETDATE()) >=13 )
)
