-- AGGREGATE FUNCTION WITH CTE 
-- Remember you must use EVERY CTE you declare using the WITH statement
WITH EarlyFilms AS
(

	SELECT
		F.FilmName,
		F.FilmReleaseDate
	FROM
		tblFilm AS F
	WHERE
		FilmReleaseDate < '2000-01-01'
),
RecentFilms AS
(

	SELECT
		F.FilmName,
		F.FilmReleaseDate
	FROM
		tblFilm AS F
	WHERE
		FilmReleaseDate >= '2000-01-01'
)

SELECT 
	*
FROM
	EarlyFilms AS e
	INNER JOIN RecentFilms AS r
		ON e.FilmName = r.FilmName
