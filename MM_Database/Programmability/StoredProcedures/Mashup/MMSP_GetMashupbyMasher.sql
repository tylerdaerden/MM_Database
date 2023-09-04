CREATE PROCEDURE [dbo].[MMSP_GetMashupbyMasher]
	@MasherName NVARCHAR(100)
AS
BEGIN
SELECT DISTINCT MasherName as [Masher] , mm.PathFile as [Mashup]
FROM [dbo].Masher as m
JOIN [Mashup] as mm on mm.MasherId = m.Id
WHERE [MasherName] = @MasherName

END