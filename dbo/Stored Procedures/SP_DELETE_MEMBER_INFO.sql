﻿CREATE PROCEDURE [dbo].[SP_DELETE_MEMBER_INFO]
	@memberId char(10)
AS
BEGIN
	DELETE FROM TB_MEMBER_INFO
	 WHERE [MEMBER_ID] = @memberId
END
