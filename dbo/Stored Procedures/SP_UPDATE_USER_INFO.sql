CREATE PROCEDURE [dbo].[SP_UPDATE_USER_INFO]
 @id          nvarchar(450) output
,@firstName   nvarchar(100)
,@lastName    nvarchar(100)
,@email       nvarchar(max)
,@phoneNumber nvarchar(450)
,@roleId      nvarchar(450)

AS
BEGIN
		UPDATE AspNetUsers
		   SET Id          = @id         
		      ,FirstName   = @firstName  
			  ,LastName	   = @lastName   
			  ,Email	   = @email      
			  ,PhoneNumber = @phoneNumber
		 WHERE Id = @id;

        UPDATE AspNetUserRoles
           SET RoleId = @roleId
         WHERE UserId = @id;
END