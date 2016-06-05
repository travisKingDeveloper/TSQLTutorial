--Scroll is used to do things other than FETCH NEXT
DECLARE FilmCursor CURSOR GLOBAL SCROLL
	FOR SELECT FilmID , FilmName , FilmReleaseDate FROM tblFilm

OPEN FilmCursor

	--FETCH FIRST ...
	--FETCH LAST  ...


	--Call Stored Procedures and they will have access to them

CLOSE FilmCursor
DEALLOCATE FilmCursor


--Forward_Only is used to do FETCH NEXT
DECLARE FilmCursor CURSOR GLOBAL FORWARD_ONLY
	FOR SELECT FilmID , FilmName , FilmReleaseDate FROM tblFilm

OPEN FilmCursor

	--FETCH FIRST ...
	--FETCH LAST  ...


	--Call Stored Procedures and they will have access to them

CLOSE FilmCursor
DEALLOCATE FilmCursor