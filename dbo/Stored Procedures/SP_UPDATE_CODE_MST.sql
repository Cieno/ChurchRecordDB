CREATE PROCEDURE [dbo].[SP_UPDATE_CODE_MST]
	@codeId char(4),
	@categoryId varchar(30),
	@codeDescr nvarchar(50),
	@sortOrder int,
	@activeYn bit
AS
BEGIN
		UPDATE TB_CODE_MST
		   SET CODE_DESCR  = @codeDescr
		      ,SORT_ORDER  = @sortOrder
			  ,ACTIVE_YN   = @activeYn
		 WHERE CODE_ID     = @codeId
		   AND CATEGORY_ID = @categoryId
END
