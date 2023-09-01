CREATE PROCEDURE [dbo].[MMSP_GetMashupbyId]
	@MashupId int
AS
BEGIN
SELECT [PathFile]
FROM [dbo].Mashup
WHERE [Id] = @MashupId

END
