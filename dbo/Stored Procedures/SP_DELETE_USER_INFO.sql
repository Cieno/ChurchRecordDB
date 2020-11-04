CREATE PROCEDURE [dbo].[SP_DELETE_USER_INFO]
	@id nvarchar(450)
AS
BEGIN
	DELETE FROM [AspNetUsers]
	 WHERE Id = @id;

	DELETE FROM AspNetUserRoles
	 WHERE UserId = @id;
END