﻿CREATE TABLE [dbo].[Track]
(
	[Id] INT NOT NULL IDENTITY (1,1),
	[Title] NVARCHAR(100) NOT NULL,
	[Length] INT NOT NULL , 
	[Explicit] BIT NOT NULL,
	[ArtistName] NVARCHAR(80) NOT NULL,
	[ArtistId] INT NOT NULL



	CONSTRAINT [PK_Track] PRIMARY KEY ([Id]) ,
	CONSTRAINT [FK_Track] FOREIGN KEY ([ArtistId])
	REFERENCES [Artist](Id)
	--CONSTRAINT [CK_Track] CHECK 
)
