CREATE PROCEDURE [dbo].[SP_UPDATE_MEMBER_INFO]
 @memberId     char(10)   output
,@firstName	   varchar(30)
,@lastName	   varchar(20)
,@emailAddress varchar(50)
,@birthDate    date
,@phoneNumber  varchar(20)
--,@photoImage   image
--,@signImage    image
,@familyId	   char(11)
,@groupCode	   char(4)
,@teamCode	   char(4)
AS
BEGIN
	UPDATE TB_MEMBER_INFO
	   SET [FIRST_NAME]  = @firstName	  
		  ,[LAST_NAME]	 = @lastName	  
		  ,[EMAIL_ADDR]	 = @emailAddress
		  ,BIRTH_DATE   = @birthDate
		  ,[PHONE_NUM]	 = @phoneNumber 
		  --,[PHOTO_IMG] = @photoImage
		  --,[SIGN_IMG]	 = @signImage 
		  ,[FAMILY_ID]	 = @familyId	  
		  ,[GROUP_CD]	 = @groupCode  
		  ,[TEAM_CD]	 = @teamCode	  
     WHERE MEMBER_ID     = @memberId

END
