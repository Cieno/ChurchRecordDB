CREATE PROCEDURE [dbo].[SP_SEARCH_USER_LIST]
	
AS
BEGIN
	SELECT UT.[Id]
		  ,[UserName]
		  ,[NormalizedUserName]
		  ,[Email]
		  ,[NormalizedEmail]
		  ,[EmailConfirmed]
		  ,[PasswordHash]
		  ,[SecurityStamp]
		  ,UT.[ConcurrencyStamp]
		  ,[PhoneNumber]
		  ,[PhoneNumberConfirmed]
		  ,[TwoFactorEnabled]
		  ,[LockoutEnd]
		  ,[LockoutEnabled]
		  ,[AccessFailedCount]
		  ,[FirstName]
		  ,[LastName]
		  ,URT.RoleId
		  ,RT.[Name]   AS RoleName    
	  FROM [AspNetUsers]   UT
	  JOIN AspNetUserRoles   URT
		ON UT.Id = URT.UserId
	  JOIN AspNetRoles   RT
		ON URT.RoleId = RT.Id
END
RETURN @@ROWCOUNT
