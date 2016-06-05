DECLARE @DirectorID INT

BEGIN TRAN AddIM

	INSERT INTO tblFilm (FilmName , FilmReleaseDate)
	VALUES ('Iron Man 3', '2013-04-25')

	--Call stored Procedure to get Director ID
	EXEC @DirectorID = spGetDirector 'Shane Black'

	UPDATE tblFilm
	SET FilmDirectorID = @DirectorID
	WHERE FilmName = 'Iron Man 3'

COMMIT TRAN AddIM

