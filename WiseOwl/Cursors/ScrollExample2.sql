--You can instantiate a SCROLL Cursor

--Declaring a cursor
DECLARE FilmCursor CURSOR SCROLL
	FOR SELECT FilmID , FilmName , FilmReleaseDate FROM tblFilm

--Initialize it
OPEN FilmCursor

	FETCH LAST FROM FilmCursor
	--FETCH FIRST FROM FilmCursor

	WHILE @@FETCH_STATUS = 0
		FETCH PRIOR FROM FilmCursor
		--FETCH NEXT FROM FILMCURSOR


--Close the connection to it
CLOSE FilmCursor
--Deallocate the memory used
DEALLOCATE FilmCursor