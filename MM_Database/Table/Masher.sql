﻿CREATE TABLE [dbo].[Masher]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[MasherName] NVARCHAR(100) NOT NULL , 
	[WebLink] NCHAR(80) NULL

    CONSTRAINT [PK_Masher] PRIMARY KEY ([Id])
)
