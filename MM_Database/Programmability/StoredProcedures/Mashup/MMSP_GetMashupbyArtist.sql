CREATE PROCEDURE [dbo].[MMSP_GetMashupbyArtist]
	@MashupArtist NVARCHAR(100)
AS
BEGIN
SELECT PathFile as [Mashups] 
FROM [dbo].Mashup
UNION
SELECT ArtistName
FROM [dbo].Track
WHERE [ArtistName] = @MashupArtist

END
