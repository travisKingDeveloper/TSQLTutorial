--A basic pivot

SELECT * FROM 
(
SELECT
	C.CountryName,
	F.FilmId
FROM 
	tblCountry AS C 
	INNER JOIN tblFilm AS F
	ON C.CountryID = F.FilmCountryID
) AS BaseData
PIVOT(
	COUNT(FilmID)
	FOR CountryName in ([China] , [France] , [Germany], [Japan] , [New Zealand], [Russia] , [United States]) 
) AS PivotTable