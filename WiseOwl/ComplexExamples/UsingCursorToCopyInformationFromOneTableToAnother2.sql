USE Movies

DECLARE @DirectorDOB DATETIME
DECLARE @DirectorGender NVARCHAR(250)
DECLARE @DirectorName NVARCHAR(250)

DELETE FROM tblDirector2;

DECLARE FilmCopy CURSOR FORWARD_ONLY FOR 
	SELECT
		D.DirectorDOB,
		D.DirectorGender,
		D.DirectorName
	FROM 
		tblDirector AS D

	OPEN FilmCopy

		FETCH NEXT FROM FilmCopy
		INTO 
			@DirectorDOB,
			@DirectorGender,
			@DirectorName

	WHILE @@FETCH_STATUS = 0
	BEGIN 
		INSERT INTO tblDirector2
		(
			DirectorDOB,
			DirectorGender,
			DirectorName
		)
		VALUES
		(
			@DirectorDOB,
			@DirectorGender,
			@DirectorName
		)		
		FETCH NEXT FROM FilmCopy
		INTO 
			@DirectorDOB,
			@DirectorGender,
			@DirectorName
	END

CLOSE FilmCopy
DEALLOCATE FilmCopy

SELECT * FROM tblDirector2