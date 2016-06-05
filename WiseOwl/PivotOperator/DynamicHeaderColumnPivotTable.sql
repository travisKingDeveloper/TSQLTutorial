USE Movies


DECLARE @ColumnNames NVARCHAR(MAX) = ''
DECLARE @PivotTableSQL NVARCHAR(MAX)

SELECT
	@ColumnNames += QUOTENAME(CountryName) + ','
FROM
	tblCountry

SET @ColumnNames = LEFT(@ColumnNames, LEN(@ColumnNames) - 1)

SET @PivotTableSQL = 'SELECT * FROM 
(
	SELECT 
		C.CountryName , 
		YEAR(F.FilmReleaseDate) AS [FilmYear],
		F.FilmID
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
	('+
		@ColumnNames
	+ ')
)
AS PivotTable'

EXECUTE sp_executesql @PivotTableSQl