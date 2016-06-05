 CREATE TABLE #TempFilms
 (
	Title VARCHAR(MAX),
	Release DATETIME
 )

 EXECUTE spInsertIntoTemp 'star'
 EXECUTE spSelectFromTemp

