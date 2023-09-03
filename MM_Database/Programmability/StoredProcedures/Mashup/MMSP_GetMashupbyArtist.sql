CREATE PROCEDURE [dbo].[MMSP_GetMashupbyArtist]
	@MashupArtist NVARCHAR(100)
AS
BEGIN
SELECT DISTINCT PathFile as [Mashups] , t.ArtistName as [Artist]
FROM [dbo].Mashup as m
LEFT JOIN [Track] as t ON m.Id = t.ArtistId
END
