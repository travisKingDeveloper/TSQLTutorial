--Creating Stored Procedure that uses dynamic sql

CREATE PROC spVariableTable
(
	@TableName NVARCHAR(128)
)
AS
BEGIN

	DECLARE @SQLString NVARCHAR(128)
	SET @SQLString = N'SELECT * FROM ' + @TableName

	EXECUTE sp_executesql @SQLString

END