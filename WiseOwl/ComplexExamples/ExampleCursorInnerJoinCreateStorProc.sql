CREATE PROC spListCharacters
(
	@FilmID INT,
	@FilmName VARCHAR(MAX),
	@FilmDate DATETIME
)
AS
BEGIN

	PRINT @FilmName + ' was released on ' + dbo.fnLongDate(@FilmDate)
	PRINT '=========================================================='
	PRINT 'List of characters'
	PRINT '=========================================================='

	DECLARE CharactersAndActorsCursor CURSOR 
		FOR
			SELECT
				C.CastCharacterName,
				A.ActorName
			FROM
				tblCast AS C
				INNER JOIN
					tblActor AS A
					ON C.CastActorID = A.ActorID
			WHERE
				C.CastFilmID = @FilmID

	DECLARE @CharacterName VARCHAR(MAX)
	DECLARE @ActorName VARCHAR(MAX)
	
	OPEN CharactersAndActorsCursor
	
		FETCH NEXT FROM CharactersAndActorsCursor
			INTO @CharacterName, @ActorName

		WHILE @@FETCH_STATUS = 0
	
		BEGIN
			PRINT @CharacterName + ' (' + @ActorName + ')'

			FETCH NEXT FROM CharactersAndActorsCursor
				INTO @CharacterName, @ActorName

		END
	CLOSE CharactersAndActorsCursor
	DEALLOCATE CharactersAndActorsCursor
END