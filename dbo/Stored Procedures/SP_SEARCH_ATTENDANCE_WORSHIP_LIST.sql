
CREATE PROCEDURE [dbo].[SP_SEARCH_ATTENDANCE_WORSHIP_LIST]
 @memberId char(10)
AS
BEGIN
	SELECT 
		   ATT.WORSHIP_ID                       AS WorshipId
		  ,WOR.WORSHIP_DATE		  				AS WorshipDate
		  ,ATT.MEMBER_ID						AS MemberId
		  ,MEM.LastName + ' ' + MEM.FirstName   AS MemberName
		  ,ATT.ATTENDANCE_TYPE					AS AttendanceType
		  ,ATT.REGISTER_DT						AS RegisterDt
		  ,ATT.ESTIMATED_ARRIVAL                AS EstimatedArrival
		  ,ATT.SIGN_AGREEMENT                   AS SignAgreement
		  ,ATT.INITIAL                          AS Initial
		  ,ATT.DESCR                            AS Descr
		  --,ATT.SIGN_IMG
		  --,MEM.SIGN_IMG
	  FROM TB_ATTENDANCE_LIST  ATT
	  JOIN AspNetUsers      MEM  --JOIN TB_MEMBER_INFO      MEM
	    ON ATT.MEMBER_ID = MEM.Id
	  JOIN TB_WORSHIP_INFO     WOR
	    ON ATT.WORSHIP_ID = WOR.WORSHIP_ID
	 WHERE ATT.WORSHIP_ID = @memberId
END
RETURN @@ROWCOUNT