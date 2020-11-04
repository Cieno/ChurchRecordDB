CREATE PROCEDURE [dbo].[SP_UPDATE_CATEGORY_MST]
	@categoryId varchar(30) output,
	@categoryDescr nvarchar(50),
	@abbreviationCode char(2),
	@activeYn bit
AS
BEGIN
		UPDATE TB_CATEGORY_MST
		   SET CATEGORY_DESCR = @categoryDescr
		      ,ABBR_CD        = @abbreviationCode
			  ,ACTIVE_YN      = @activeYn
		 WHERE CATEGORY_ID    = @categoryId
END