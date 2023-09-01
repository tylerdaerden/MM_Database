CREATE TABLE [dbo].[Mashup]
(
	[Id] INT IDENTITY(1,1) NOT NULL ,
	[Title] NVARCHAR(80) NOT NULL ,
	[PathFile] NVARCHAR(384) NOT NULL ,
	[Length] INT NOT NULL,
	[MasherId] INT

	CONSTRAINT [PK_Mashup] PRIMARY KEY ([Id]),
	CONSTRAINT [FK_Mashup] FOREIGN KEY ([MasherId]) REFERENCES [Masher](Id)

)
