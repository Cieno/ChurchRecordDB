CREATE PROCEDURE [dbo].[SP_INSERT_ATTENDANCE_INFO]
 @worshipId	        char(14) output
,@memberId          nvarchar(450)
,@attendanceType    varchar(30)
,@estimatedArrival  time(7)
,@signAgreement     bit
,@initial		    varchar(20)
,@descr             nvarchar(300)
--,@signImage    image
AS
BEGIN
	INSERT INTO TB_ATTENDANCE_LIST
	(
		WORSHIP_ID
	   ,MEMBER_ID
	   ,ATTENDANCE_TYPE
	   ,REGISTER_DT
	   ,ESTIMATED_ARRIVAL
	   ,SIGN_AGREEMENT
	   ,INITIAL
	   ,DESCR
	   --,SIGN_IMG
	)
	VALUES
	(
	    @worshipId
	   ,@memberId
	   ,@attendanceType
	   ,GETDATE()
	   ,@estimatedArrival
	   ,@signAgreement
	   ,@initial
	   ,@descr
	   --,@signImage
	)

END
