DECLARE @Number INT
DECLARE @NumberString NVARCHAR(4)
DECLARE @SQLString NVARCHAR(MAX)

SET @Number = 10
SET @NumberString = CAST(@Number AS NVARCHAR(4))
--Need to cast because of no implicit conversion
SET @SQLString = N'SELECT TOP ' + @NumberString + ' * FROM tblFilm ORDER BY FilmReleaseDate'

EXEC sp_executesql @SQLString