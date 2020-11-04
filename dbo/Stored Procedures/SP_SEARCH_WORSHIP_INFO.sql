CREATE PROCEDURE [dbo].[SP_SEARCH_WORSHIP_INFO]
	@worshipId char(14)
AS
BEGIN
	SELECT 
		   [WORSHIP_ID]         AS worshipId
		  ,[WORSHIP_DATE]       AS worshipDate
		  ,[WORSHIP_TYPE]       AS worshipType
		  ,[WORSHIP_LOCATION]   AS [location]
		  ,[DESCRIPTION]
	  FROM TB_WORSHIP_INFO
	 WHERE WORSHIP_ID = @worshipId
END

