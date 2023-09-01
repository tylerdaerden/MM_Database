CREATE PROCEDURE UpdateMashup
    @MashupId INT,
    @Title NVARCHAR(80),
    @Length INT,
    @PathFile NVARCHAR(384)
AS
BEGIN
    UPDATE [dbo].[Mashup]
    SET [Title] = @Title
    WHERE [Id] = @MashupId;
END
BEGIN
    UPDATE [dbo].[Mashup]
    SET [Length] = @Length
    WHERE [Id] = @MashupId;
END;
BEGIN
    UPDATE [dbo].[Mashup]
    SET [PathFile] = @Pathfile
    WHERE [Id] = @MashupId;
END
