CREATE PROCEDURE [dbo].[MMSP_GetMashupbyMasher]
	@MasherName NVARCHAR(100)
AS
BEGIN
SELECT MasherName 
FROM [dbo].Masher
WHERE [MasherName] = @MasherName
UNION
SELECT PathFile as [Mashups] 
FROM [dbo].Mashup


END
