CREATE PROCEDURE [dbo].[MMSP_GetMashupbyTitle]
	@Title NVARCHAR(80)
AS
BEGIN
SELECT [PathFile]
FROM [dbo].Mashup
WHERE [Title] = @Title

END
