USE Movies
GO

DECLARE @NameList VARCHAR(MAX)
SET @NameList = ''

SELECT 
	@NameList = @NameList + A.ActorName + CHAR(10)
	--Char(10) carraige return
FROM 
	tblActor as A
WHERE
	YEAR(A.ActorDOB) = 1970

PRINT @NameList