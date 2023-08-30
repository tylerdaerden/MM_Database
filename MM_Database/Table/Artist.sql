﻿CREATE TABLE [dbo].[Artist]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[ArtistName] NVARCHAR(100) NOT NULL , 
	[Genres] NVARCHAR(80) NOT NULL,

	CONSTRAINT [PK_Artist_Id] PRIMARY KEY ([Id]),
	CONSTRAINT [UK_Artist_Name] UNIQUE ([ArtistName])


)

