CREATE PROCEDURE UpdateUserAdminStatus
    @UserId INT,
    @IsAdmin BIT
AS
BEGIN
    UPDATE [dbo].[User]
    SET [IsAdmin] = @IsAdmin
    WHERE [Id] = @UserId;
END;
