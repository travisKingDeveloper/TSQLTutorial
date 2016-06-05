USE Movies

GO

DECLARE @ID INT
DECLARE @Name VARCHAR(MAX)
DECLARE @Date DATETIME
DECLARE @MyDate DATETIME

SET @MyDate = '1970-01-01'

SELECT TOP 1
	@ID = A.ActorID,
	@Name = A.ActorName,
	@Date = A.ActorDOB

FROM 
	tblActor as A
WHERE 
	ActorDOB >= @MyDate
ORDER BY
	ActorDOB ASC

SELECT @Name , @Date , @ID


SELECT 
	f.FilmName,
	c.CastCharacterName
FROM	
	tblFilm as F
	INNER JOIN tblCast AS c on f.FilmID = c.CastFilmID
WHERE 
	c.CastActorID = @ID