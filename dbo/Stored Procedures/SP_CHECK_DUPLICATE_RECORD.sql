CREATE PROCEDURE [dbo].[SP_CHECK_DUPLICATE_RECORD]
	@idValue varchar(30)
   ,@itemCount int output
AS
BEGIN
	DECLARE @tableName varchar(50)
	DECLARE @keyColumn varchar(30)
	DECLARE @keyValue varchar(30) = @idValue

	SELECT @tableName = TABLE_NAME 
	      ,@keyColumn = KEY_COLUMN 
	  FROM TB_ID_MAPPING_MST 
	 WHERE key_value = @keyValue

	IF @tableName IS NOT NULL 
		BEGIN
			EXEC('SELECT COUNT(*) FROM ' + @tableName + ' WHERE ' + @keyColumn + ' = ''' + @keyValue +'''')
			SET @itemCount = @@ROWCOUNT 
		END
	ELSE
		BEGIN
			SET @itemCount = 0
		END
END
