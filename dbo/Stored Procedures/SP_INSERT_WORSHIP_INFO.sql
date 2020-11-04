CREATE PROCEDURE [dbo].[SP_INSERT_WORSHIP_INFO]
 @worshipId			CHAR(14) output
,@worshipDate		DATETIME 
,@worshipType		CHAR(4)
,@worshipLocation	VARCHAR(200)
,@description		VARCHAR(250)
AS
BEGIN
DECLARE @newId char(14) = dbo.FN_GET_WORSHIP_ID(@worshipDate);
    INSERT INTO TB_WORSHIP_INFO
    (
         [WORSHIP_ID]
        ,[WORSHIP_DATE]
        ,[WORSHIP_TYPE] 
        ,[WORSHIP_LOCATION] 
        ,[DESCRIPTION]
    )
    VALUES
    (
         @newId			
        ,@worshipDate			
        ,@worshipType		
        ,@worshipLocation	
        ,@description		
    )
    SET @worshipId = @newId
END