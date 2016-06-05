CREATE PROC spInsertIntoTemp(@Text AS VARCHAR(MAX))
AS
BEGIN
	INSERT INTO #TempFilms
	SELECT
		FilmName,
		FilmReleaseDate
	FROM 
		tblFilm
	WHERE
		FilmName LIKE '%' + @Text + '%'
END