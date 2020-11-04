CREATE FUNCTION [dbo].[FN_GET_MEMBER_ID]()
RETURNS char(10)
AS
BEGIN
	DECLARE @idSuffix int;

	SELECT @idSuffix = count(*)
	  FROM TB_MEMBER_INFO 
	 WHERE FORMAT(REGISTER_DATE, 'yyyyMMdd') = FORMAT(GETDATE(), 'yyyyMMdd')

	IF @idSuffix > 0	
		SELECT @idSuffix = SUBSTRING(MAX(MEMBER_ID), 9, 2) 
		  FROM TB_MEMBER_INFO 
		 WHERE FORMAT(REGISTER_DATE, 'yyyyMMdd') = FORMAT(GETDATE(), 'yyyyMMdd')	
	ELSE	
		SELECT @idSuffix = 0

	RETURN FORMAT(GETDATE(), 'yyyyMMdd') + FORMAT(@idSuffix + 1, '0#')
END