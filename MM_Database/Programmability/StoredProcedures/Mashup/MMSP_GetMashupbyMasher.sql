CREATE PROCEDURE [dbo].[MMSP_GetMashupbyMasher]
	@MasherName NVARCHAR(100)
AS
BEGIN
SELECT DISTINCT MasherName as [Masher] , mm.PathFile as [Mashup]
FROM [dbo].Masher as m
JOIN [Mashup] as mm on mm.MasherId = m.Id
WHERE [MasherName] = @MasherName
--SELECT PathFile as [Mashups] 
--FROM [dbo].Mashup


END





--CREATE PROCEDURE [dbo].[MMSP_GetMashupbyArtist]
--	@MashupArtist NVARCHAR(100)
--AS
--BEGIN
--SELECT DISTINCT PathFile as [Mashups] , t.ArtistName as [Artist]
--FROM [dbo].Mashup as m
--LEFT JOIN [Track] as t ON m.Id = t.ArtistId
--END