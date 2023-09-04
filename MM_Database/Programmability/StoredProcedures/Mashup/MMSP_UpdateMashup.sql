CREATE PROCEDURE [dbo].[MMSP_UpdateMashup]
    @MashupId INT,
    @Title NVARCHAR(80),
    @PathFile NVARCHAR(384)
AS
BEGIN
    UPDATE [dbo].[Mashup]
    SET [Title] = @Title
    WHERE [Id] = @MashupId;
END


BEGIN
    UPDATE [dbo].[Mashup]
    SET [PathFile] = @Pathfile
    WHERE [Id] = @MashupId;
END

