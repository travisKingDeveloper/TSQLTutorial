USE Movies
GO

CREATE FUNCTION PeopleInYear
(
	@BirthYear INT
)
RETURNS @t TABLE
(
	PersonName VARCHAR(MAX),
	PersonDOB  DATETIME,
	PersonJob  VARCHAR(8)
)
AS

BEGIN

	INSERT INTO @t
	SELECT
		d.DirectorName,
		d.DirectorDOB,
		'Director'
	FROM	
		tblDirector as d
	WHERE 
		YEAR(d.DirectorDOB) = @BirthYear

	INSERT INTO @t
	SELECT
		a.ActorName,
		a.ActorDOB,
		'Actor'
	FROM	
		tblActor AS a
	WHERE
		YEAR(a.ActorDOB) = @BirthYear

	RETURN
	--Explicetly declared the table you use 
END

