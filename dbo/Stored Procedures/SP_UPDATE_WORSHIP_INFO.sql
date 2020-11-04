CREATE PROCEDURE [dbo].[SP_UPDATE_WORSHIP_INFO]
 @worshipId			CHAR(14)
,@worshipDate		DATETIME 
,@worshipType		CHAR(4)
,@worshipLocation	VARCHAR(200)
,@description		VARCHAR(250)
AS
BEGIN
	UPDATE TB_WORSHIP_INFO
	   SET [WORSHIP_DATE]      = @worshipDate			
          ,[WORSHIP_TYPE]      = @worshipType		
          ,[WORSHIP_LOCATION]  = @worshipLocation	
          ,[DESCRIPTION]       = @description		
     WHERE WORSHIP_ID = @worshipId

END