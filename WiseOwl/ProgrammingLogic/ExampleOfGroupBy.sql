--GroupingQuery

SELECT
	C.CountryName,
	COUNT(F.FilmID) AS [Number of Films]
FROM
	tblCountry AS C
	INNER JOIN tblFilm AS F
	ON C.CountryID = F.FilmCountryID
GROUP BY
	CountryName