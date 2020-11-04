
CREATE FUNCTION [dbo].[FN_GET_WORSHIP_ID](@worshipDate DateTime)
RETURNS char(14)
AS
BEGIN
	DECLARE @idSuffix int;

	SELECT @idSuffix = count(*)
	  FROM TB_WORSHIP_INFO 
	 WHERE FORMAT(WORSHIP_DATE, 'yyyyMMdd') = FORMAT(@worshipDate, 'yyyyMMdd')

	IF @idSuffix > 0	
		SELECT @idSuffix = SUBSTRING(MAX(WORSHIP_ID), 13, 2) 
		  FROM TB_WORSHIP_INFO 
		 WHERE FORMAT(WORSHIP_DATE, 'yyyyMMdd') = FORMAT(@worshipDate, 'yyyyMMdd')	
	ELSE	
		SELECT @idSuffix = 0

	RETURN FORMAT(@worshipDate, 'yyyyMMddHHmm') + FORMAT(@idSuffix + 1, '0#')

END
