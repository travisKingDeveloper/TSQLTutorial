USE Movies
GO

CREATE FUNCTION FilmsInYear
(
	@Year INT
)
RETURNS TABLE
AS
RETURN 
	SELECT
		F.FilmName,
		F.FilmReleaseDate,
		F.FilmRunTimeMinutes
	FROM
		tblFilm AS F
	WHERE
		YEAR(F.FilmReleaseDate) = @Year