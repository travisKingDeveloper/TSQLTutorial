USE Movies
GO

ALTER FUNCTION FilmsInYear
(
	@StartYear INT,
	@EndYear INT
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
		YEAR(F.FilmReleaseDate) BETWEEN @StartYear AND @EndYear