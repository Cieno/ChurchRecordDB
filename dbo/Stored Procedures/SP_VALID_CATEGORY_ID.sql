CREATE PROCEDURE [dbo].[SP_VALID_CATEGORY_ID]
	@categoryId varchar(30)
   ,@itemCount int output
AS
BEGIN
	SELECT COUNT(CATEGORY_ID)
	  FROM TB_CATEGORY_MST
	 WHERE CATEGORY_ID = @categoryId

	 SET @itemCount = @@ROWCOUNT
END
