USE Movies
GO

ALTER PROC [dbo].[spFilmCriteria]
	(	
	@MinLength AS INT = NULL,
	@MaxLength AS INT = NULL,
	@Title AS VARCHAR(MAX)
	)
AS
BEGIN

SELECT 
	film.FilmName,
	film.FilmRunTimeMinutes

FROM tblFilm AS film

WHERE 
	(@MaxLength IS NULL OR film.FilmRunTimeMinutes >= @MinLength) AND
	(@MaxLength IS NULL OR film.FilmRunTimeMinutes <= @MaxLength) AND
	film.FilmName LIKE '%' + @Title + '%'


ORDER BY FilmRunTimeMinutes ASC
END