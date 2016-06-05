USE Movies

--Method 1 of creating temp table
CREATE TABLE #TempFiles
(
	Title VARCHAR(MAX),
	ReleaseDate DATETIME
)
INSERT INTO #TempFiles
SELECT
	FilmName,
	FilmReleaseDate
FROM 
	tblFilm

SELECT * FROM #TempFiles


--METHOD 2 of creating temp table
SELECT
	FilmName,
	FilmReleaseDate
INTO
	#TempFilms
FROM
	tblFilm
WHERE
	FilmName LIKE '%star%'

SELECT * FROM #TempFilms