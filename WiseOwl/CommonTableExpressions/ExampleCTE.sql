--Common Table Expressions, or CTE's for short

WITH EarlyFilms AS
(
	SELECT 
		Films.FilmName,
		dbo.fnLongDate(FilmReleaseDate) AS FilmReleaseDate,
		Films.FilmRunTimeMinutes
	FROM 
		dbo.FilmsInYear(0 , 2000) as Films
)

SELECT 
	* 
FROM 
	EarlyFilms
WHERE
	EarlyFilms.FilmRunTimeMinutes > 100
ORDER BY 
	EarlyFilms.FilmRunTimeMinutes DESC