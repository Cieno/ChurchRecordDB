CREATE PROCEDURE [dbo].[SP_SEARCH_MEMBER_INFO]
	@memberId char(10)
AS
BEGIN
	SELECT 
		   [MEMBER_ID]       AS MemberId
		  ,[REGISTER_DATE]	 AS RegisterDate
		  ,[FIRST_NAME]		 AS FirstName
		  ,[LAST_NAME]		 AS LastName
		  ,[EMAIL_ADDR]		 AS EmailAddr
		  ,BIRTH_DATE		 AS BirthDate
		  ,[PHONE_NUM]		 AS PhoneNum
		  ,[PHOTO_IMG]		 AS PhotoImg
		  ,[SIGN_IMG]		 AS SignImg
		  ,[FAMILY_ID]		 AS FamilyId
		  ,[GROUP_CD]		 AS GroupCd
		  ,[TEAM_CD]		 AS TeamCd
	  FROM TB_MEMBER_INFO
	 WHERE [MEMBER_ID] = @memberId
END

