SELECT 
	f.FilmName,
	f.FilmReleaseDate,
	[dbo].[fnLongDate](f.FilmReleaseDate)
FROM
	tblFilm AS f
ORDER BY
	f.FilmReleaseDate DESC