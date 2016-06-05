USE Movies
GO

ALTER PROC spFilmsInYear
	(
		@Year INT,
		@FilmList VARCHAR(MAX) OUTPUT,
		@FilmCount INT OUTPUT
	)
AS
BEGIN

	DECLARE @Films VARCHAR(MAX)
	SET @Films = ''

	SELECT
		@Films = @Films + FilmName + ', '
	FROM 
		tblFilm
	WHERE 
		YEAR(FilmReleaseDate) = @Year
	ORDER BY
		FilmName ASC

	SET @FilmCount = @@ROWCOUNT
	SET @FilmList = @Films

	RETURN @FilmCount
END