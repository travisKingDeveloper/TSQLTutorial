USE Movies
GO

CREATE TRIGGER trgActorInserted
ON tblActor
INSTEAD OF INSERT
AS
BEGIN
	RAISERROR('No more actors can be inserted' , 16, 1)
END