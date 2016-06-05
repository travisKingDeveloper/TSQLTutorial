DECLARE @FilmOscars INT
DECLARE @TotalOscars INT

SET @TotalOscars = 0

DECLARE FilmCursor CURSOR
	FOR SELECT F.FilmOscarWins FROM tblFilm as F
	FOR UPDATE OF F.FilmCumulativeOscars
	--This ensures that the interpreter will let you update this field

OPEN FilmCursor

	FETCH NEXT FROM FilmCursor INTO @FilmOscars

	WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @TotalOscars += @FilmOscars

			UPDATE tblFilm
			SET FilmCumulativeOscars = @TotalOscars
			WHERE CURRENT OF FilmCursor


			FETCH NEXT FROM FilmCursor INTO @FilmOscars
		END

CLOSE FilmCursor
DEALLOCATE FilmCursor