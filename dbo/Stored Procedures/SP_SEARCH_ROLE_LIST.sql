﻿CREATE PROCEDURE [dbo].[SP_SEARCH_ROLE_LIST]

AS
BEGIN
		SELECT [Id]
		      ,[Name]
		  FROM AspNetRoles
END

