CREATE FUNCTION [dbo].[FN_GET_CODE_ID](@categoryId varchar(30))
RETURNS char(4)
AS
BEGIN
	DECLARE @abbrCode char(2);
	DECLARE @codeSeq char(2);

	SELECT @abbrCode = ABBR_CD 
	  FROM TB_CATEGORY_MST 
	 WHERE CATEGORY_ID = @categoryId;

	SELECT @codeSeq = FORMAT(MAX(SUBSTRING(CODE_ID, 3,2)) + 1, '0#')
      FROM TB_CODE_MST
     WHERE CODE_ID LIKE @abbrCode + '%'
	   AND SUBSTRING(CODE_ID, 3,2) < 90

	RETURN @abbrCode + @codeSeq
END