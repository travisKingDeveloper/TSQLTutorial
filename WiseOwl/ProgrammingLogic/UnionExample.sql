--Wise owl tutorial found on youtube

USE Movies 
GO

SET NOCOUNT ON

DECLARE @MyDate DATETIME 
SET @MyDate = '1970-01-01'

DECLARE @NumFilms INT
SET @NumFilms = (SELECT COUNT(*) FROM tblFilm WHERE FilmReleaseDate >= @MyDate)

DECLARE @NumActors INT
SET @NumActors = (SELECT COUNT(*) FROM tblActor WHERE ActorDOB >= @MyDate)

DECLARE @NumDirectors INT
SET @NumDirectors = (SELECT COUNT(*) FROM tblDirector WHERE DirectorDOB >= @MyDate)

SELECT 'Number OF Films' , @NumFilms
UNION
SELECT 'Number of Actors' , @NumActors
UNION
SELECT 'Number of Directors' , @NumDirectors

PRINT 'Number of Actors = ' + CAST(@NumActors AS VARCHAR(MAX))
PRINT 'Number of Films = ' + CAST(@NumFilms AS VARCHAR(MAX))
PRINT 'Number of Directors = ' + CAST(@NumDirectors AS VARCHAR(MAX))

SELECT 
	FilmName AS [Name],
	FilmReleaseDate AS [Date],
	'Film' AS [Type]
FROM 
	tblFilm
WHERE 
	FilmReleaseDate >= @MyDate

UNION ALL

SELECT 
	ActorName, ActorDOB, 'Actor'
FROM 
	tblActor
WHERE 
	ActorDOB >= @MyDate

UNION ALL

SELECT director.DirectorName , director.DirectorDOB, 'Director'
FROM tblDirector as director
WHERE DirectorDOB >= @MyDate
ORDER BY [DATE] ASC



