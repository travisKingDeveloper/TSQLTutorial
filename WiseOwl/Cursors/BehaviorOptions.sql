--Controlling what data set is returned from FilmCursor
--Four options : STATIC DYNAMIC KEYSET FAST_FORWARD

--Uses a read only forward only cursor. optimizes the search of data
DECLARE FilmCursor4 CURSOR FAST_FORWARD
	FOR SELECT FilmID , FilmName , FilmReleaseDate FROM tblFilm

--STATIC creates a copy of select statements in tempDB database //Not linked to original db
DECLARE FilmCursor3 CURSOR STATIC

--KEYSET creates a copy of key values and stores in TempDB. Changes to non key values will be seen
DECLARE FilmCursor2 CURSOR KEYSET

--Dynamic reflects all changes in tempdb
DECLARE FilmCursor1 CURSOR DYNAMIC

--More technical details found here https://msdn.microsoft.com/en-gb/library/ms180169.aspx