USE Movies 
GO

ALTER TRIGGER trgActorsChanged
ON tblActor 
AFTER INSERT
AS
BEGIN

	SELECT * FROM inserted

END
GO