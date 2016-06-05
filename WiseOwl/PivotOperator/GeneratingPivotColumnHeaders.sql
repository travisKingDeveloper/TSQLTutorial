SELECT * FROM
	(
	SELECT 
		C.CountryName,
		F.FilmID,
		YEAR(F.FilmReleaseDate) AS [Film Year] ,
		DATENAME(MM,F.FilmReleaseDate) AS [Film Month]
	FROM 
		tblCountry AS C 
		INNER JOIN tblFilm AS F
		ON C.CountryID = F.FilmCountryID
	)
AS BaseData

PIVOT
(
	COUNT(FilmID)
	FOR CountryName
	IN 
	(
		[China]
		,[France]
		,[Japan]
		,[New Zealand]
		,[United Kingdom]
		,[United States]
		,[Germany]
		,[Russia]
	)
)
AS PivotTable


--This list was generated from this query
SELECT
	',' + QUOTENAME(CountryName , '[]')
FROM	
	tblCountry AS C