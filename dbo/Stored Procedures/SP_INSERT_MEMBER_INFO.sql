CREATE PROCEDURE [dbo].[SP_INSERT_MEMBER_INFO]

 @memberId     char(10) output
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
DECLARE @newId char(10) = dbo.FN_GET_MEMBER_ID();
	INSERT INTO TB_MEMBER_INFO
	(
		   [MEMBER_ID]
		  ,[REGISTER_DATE]
		  ,[FIRST_NAME]
		  ,[LAST_NAME]
		  ,[EMAIL_ADDR]
		  ,BIRTH_DATE
		  ,[PHONE_NUM]
		  --,[PHOTO_IMG]
		  --,[SIGN_IMG]
		  ,[FAMILY_ID]
		  ,[GROUP_CD]
		  ,[TEAM_CD]
	)
	VALUES
	(
		   @newId
		  ,GETDATE()
		  ,@firstName
		  ,@lastName
		  ,@emailAddress
		  ,@birthDate
		  ,@phoneNumber
		  --,@photoImage
		  --,@signImage
		  ,@familyId
		  ,@groupCode
		  ,@teamCode
	)
	SET @memberId = @newId
END

