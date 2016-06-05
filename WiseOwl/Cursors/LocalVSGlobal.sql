-- Local, cannot EXECUTE outside of a batch, which are seperated by a go. uncomment and run to see this
DECLARE FilmCursor CURSOR LOCAL
	FOR SELECT FilmID, FilmName, FilmReleaseDate FROM tblFilm

--GO
OPEN FilmCursor

CLOSE FilmCursor
DEALLOCATE FilmCursor

-- Global can be refferec anywhere in connection
DECLARE FilmCursor CURSOR GLOBAL
	FOR SELECT FilmID , FilmName , FilmReleaseDate FROM tblFilm

OPEN FilmCursor

	--Call Stored Procedures and they will have access to them

CLOSE FilmCursor
DEALLOCATE FilmCursor
--Default is specified in database

---------------------------------------------------------------

