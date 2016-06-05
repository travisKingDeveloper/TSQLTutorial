USE Movies
GO 
--Example of Scalar Valued Functions

SELECT
	a.ActorName,
	dbo.fnFirstName(a.ActorName)
FROM
	tblActor as a

