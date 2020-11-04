CREATE PROCEDURE [dbo].[SP_INSERT_CODE_MST]
	@codeId char(4) output,
	@categoryId varchar(30),
	@codeDescr nvarchar(50),
	@sortOrder int
AS
BEGIN
DECLARE @newId char(4) = dbo.FN_GET_CODE_ID(@categoryId);
	INSERT INTO TB_CODE_MST
	(	
		 CODE_ID
	    ,CATEGORY_ID
		,CODE_DESCR
		,SORT_ORDER
		,ACTIVE_YN
		,CREATE_DT
	)
	VALUES(
		    @newId
	       ,@categoryId
		   ,@codeDescr
		   ,@sortOrder
		   ,1
		   ,GETDATE()
		  )
	SET @codeId = @newId
END

