CREATE TABLE [dbo].[Mashup]
(
	[Id] INT IDENTITY(1,1) NOT NULL ,
	[Title] NVARCHAR(80) NOT NULL ,
	[PathFile] NVARCHAR(384) NOT NULL , 
	[Length] INT NOT NULL,
	[ArtistsNames] NVARCHAR(100) NOT NULL,
	[TracksNames] NVARCHAR(100) NOT NULL , 
	[MasherName] NVARCHAR(100) NOT NULL,
	[Tag] NVARCHAR(100) NOT NULL 

	CONSTRAINT [PK_Mashup] PRIMARY KEY ([Id]),
	CONSTRAINT [FK_Mashup_Artist] FOREIGN KEY ([ArtistsNames]) REFERENCES [Artist] (ArtistName),
	CONSTRAINT [FK_Mashup_Track] FOREIGN KEY ([TracksNames]) REFERENCES [Track](Title) ,
	CONSTRAINT [FK_Mashup_Masher] FOREIGN KEY ([MasherName]) REFERENCES [Masher] (MasherName),
)
