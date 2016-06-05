USE Movies

DECLARE @MaxOscars INT
SET @MaxOscars = (SELECT MAX(FilmOscarWins) FROM tblFilm)

DECLARE @NumFilms INT
SET @NumFilms = 0

DECLARE @Counter INT
SET @Counter = 0

WHILE @Counter <= @MaxOscars
	BEGIN
		SET @NumFilms = 
		(SELECT COUNT(*) FROM tblFilm WHERE FilmOscarWins = @Counter)

		IF @NumFilms = 0
			BEGIN 
				SET @Counter = @Counter + 1	
				CONTINUE
			END

		PRINT 'The number of films with ' + CAST(@Counter AS VARCHAR(MAX)) + ' oscar(s) is ' + CAST(@NumFilms AS VARCHAR(MAX))
		SET @Counter = @Counter + 1		
	END
