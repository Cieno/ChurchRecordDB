CREATE PROCEDURE [dbo].[SP_DELETE_ATTENDANCE_INFO]
	@worshipId char(14) output
   ,@memberId  nvarchar(450)
AS
BEGIN
	DELETE FROM TB_ATTENDANCE_LIST
	 WHERE [WORSHIP_ID] = @worshipId
	   AND MEMBER_ID = @memberId
END
