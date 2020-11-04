CREATE PROCEDURE [dbo].[SP_UPDATE_ATTENDANCE_INFO]
 @worshipId	        char(14) output
,@memberId          nvarchar(450)
,@attendanceType    varchar(30)
,@estimatedArrival  time(7)
,@signAgreement     bit
,@initial		    varchar(20)
,@descr             nvarchar(300)

AS
BEGIN
		UPDATE TB_ATTENDANCE_LIST
		   SET ATTENDANCE_TYPE   = @attendanceType
		      ,ESTIMATED_ARRIVAL = @estimatedArrival
			  ,SIGN_AGREEMENT    = @signAgreement
			  ,INITIAL           = @initial
			  ,DESCR             = @descr
		 WHERE WORSHIP_ID        = @worshipId
		   AND MEMBER_ID         = @memberId
END
