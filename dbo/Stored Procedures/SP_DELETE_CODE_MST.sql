CREATE PROCEDURE [dbo].[SP_DELETE_CODE_MST]
	@codeId char(4),
	@categoryId varchar(30)
AS
BEGIN
	DELETE FROM TB_CODE_MST
	      WHERE CODE_ID = @codeId
		    AND CATEGORY_ID = @categoryId

	--UPDATE TB_CODE_MST
	--   SET ACTIVE_YN = 'N'
	-- WHERE CODE_ID = @codeId
	--   AND CATEGORY_ID = @categoryId
END

