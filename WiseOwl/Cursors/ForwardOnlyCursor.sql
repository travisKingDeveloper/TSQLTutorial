--Cursor Introduction
	--allows you to move iteratively through a set
	--NOT QUICK

--Declaring a cursor
DECLARE FilmCursor CURSOR
	FOR SELECT FilmID , FilmName , FilmReleaseDate FROM tblFilm

--Initialize it
OPEN FilmCursor

	FETCH NEXT FROM FilmCursor

	WHILE @@FETCH_STATUS = 0
		FETCH NEXT FROM FilmCursor


--Close the connection to it
CLOSE FilmCursor
--Deallocate the memory used
DEALLOCATE FilmCursor


