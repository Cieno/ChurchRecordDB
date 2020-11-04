CREATE PROCEDURE [dbo].[SP_INSERT_CATEGORY_MST]
	@categoryId varchar(30) output,
	@categoryDescr nvarchar(50),
	@abbreviationCode char(2)
AS
BEGIN
	INSERT INTO TB_CATEGORY_MST
	VALUES(
	        @categoryId
		   ,@categoryDescr		   
		   ,1
		   ,@abbreviationCode
		   ,GETDATE()
		  )
END
