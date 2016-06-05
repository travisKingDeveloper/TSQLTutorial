--Concatenating a SQL string

DECLARE @TableName NVARCHAR(128)
DECLARE @SQLString NVARCHAR(MAX)

SET @TableName = N'tblFilm'

SET @SQLString = N'SELECT * FROM ' + @TableName

EXEC sp_executesql @SQLString

