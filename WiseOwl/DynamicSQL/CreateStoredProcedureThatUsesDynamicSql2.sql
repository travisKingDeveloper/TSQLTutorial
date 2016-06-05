--Dynamic SQL and the IN operator

CREATE PROC spFilmYears
(
	@YearList NVARCHAR(MAX)
)
AS
BEGIN

	DECLARE @SQLString NVARCHAR(MAX)

	SET @SQLString =	N'SELECT * FROM 
						tblFilm WHERE YEAR(FilmReleaseDate) IN (' + @YearList + ')
						ORDER BY FilmReleaseDate'

	EXECUTE sp_executesql @SQLString

END
