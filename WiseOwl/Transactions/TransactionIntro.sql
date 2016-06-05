--Transactions Basics
	--Something that occurs that changes data in database

--Adding New Records By explicitely beginning transaction
BEGIN TRANSACTION 

INSERT INTO tblFilm(FilmName, FilmReleaseDate)
VALUES ('Iron Man 3' , '2013-04-25')

SELECT * FROM tblFilm WHERE tblFilm.FilmName = 'Iron Man 3'

ROLLBACK TRANSACTION

SELECT * FROM tblFilm WHERE tblFilm.FilmName = 'Iron Man 3'

--IF YOU EXPLICITELY BEGIN TRANSACTION YOU MUST EXPLICITLY COMMIT IT
	--because we rollback we don't need this
--COMMIT TRANSACTION



