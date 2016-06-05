CREATE PROC spGetDirector(@DirectorName VARCHAR(MAX))
AS 
BEGIN 
	SAVE TRAN AddDirector

	INSERT INTO tblDirector (DirectorName)
	VALUES (@DirectorName)

	IF(SELECT COUNT(*) FROM tblDirector WHERE DirectorName = @DirectorName) > 1
		BEGIN
			PRINT 'DIRECTOR ALREADY EXISTED'
			ROLLBACK TRAN AddDirector
		END

	RETURN @@IDENTITY

END