--Naming Transactions

--You can name it like this
BEGIN TRANSACTION AddIronMan3

INSERT INTO tblFilm (FilmName, FilmReleaseDate)
VALUES ('Iron Man 3' , '2013-04-25')

COMMIT TRANSACTION AddIronMan3

