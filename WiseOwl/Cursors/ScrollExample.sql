--You can instantiate a SCROLL Cursor

--Declaring a cursor
DECLARE FilmCursor CURSOR SCROLL
	FOR SELECT FilmID , FilmName , FilmReleaseDate FROM tblFilm

--Initialize it
OPEN FilmCursor

	FETCH ABSOLUTE 10 FROM FilmCursor
	--FETCH ABSOLUTE -10 FROM FilmCursor
	--This grabs the tenth from the bottom -1 would be the last one

	WHILE @@FETCH_STATUS = 0
		FETCH RELATIVE 10 FROM FilmCursor
		--Move 10 at a time from start to end
		--FETCH RELATIVE -10 FROM FilmCursor
		--Move 10 at a time from end to start


--Close the connection to it
CLOSE FilmCursor
--Deallocate the memory used
DEALLOCATE FilmCursor