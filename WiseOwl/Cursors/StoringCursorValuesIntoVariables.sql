--Reading Values into variables
DECLARE @ID INT
DECLARE @Name VARCHAR(MAX)
DECLARE @Date DATETIME

DECLARE FilmCursor CURSOR 
	FOR 
		SELECT
			F.FilmID,
			F.FilmName,
			F.FilmReleaseDate
		FROM
			tblFilm AS F

OPEN FilmCursor
	
	FETCH NEXT FROM FilmCursor
		INTO @ID , @Name, @Date
	WHILE @@FETCH_STATUS = 0
	BEGIN
		EXECUTE dbo.spListCharacters @ID , @Name, @Date

		FETCH NEXT FROM FilmCursor
			INTO @ID , @Name, @Date
	END

CLOSE FilmCursor
DEALLOCATE FilmCursor