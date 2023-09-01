CREATE PROCEDURE [dbo].[MMSP_AddMashup]
 @Title NVARCHAR(80),
 @PathFile NVARCHAR(384),
 @Length INT ,
 @TrackIds TrackId READONLY,
 @MasherId INT 
AS
BEGIN
    DECLARE @MashupId INT;
    BEGIN TRANSACTION AddMashupTransaction;

    BEGIN TRY
        INSERT INTO Mashup ([Title] , [PathFile] , [Length] , [MasherId] ) VALUES (@Title , @PathFile , @Length, @MasherId);

        SET @MashupId = SCOPE_IDENTITY();

        INSERT INTO MashupTrack (MashupId, TrackId) 
        SELECT DISTINCT @MashupId, TrackId
        FROM @TrackIds

        COMMIT TRANSACTION AddMashupTransaction
    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR (4000) = ERROR_MESSAGE()
        RAISERROR (@ErrorMessage, 16, 1)
        ROLLBACK TRANSACTION AddMashupTransaction
    END CATCH

    IF @@TRANCOUNT = 1
    BEGIN
        COMMIT TRANSACTION AddMashupTransaction
    END
END


