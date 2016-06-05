USE Movies
GO

CREATE TRIGGER trgCastMemberAdded
ON tblCast
AFTER INSERT 
AS 
BEGIN

	IF EXISTS(
		SELECT * 
		FROM 
			tblActor AS A
			INNER JOIN inserted AS I
				ON A.ActorID = I.CastActorID

			WHERE 
				A.ActorDateOfDeath IS NOT NULL
	)
	BEGIN

		RAISERROR('ACTOR IS DEAD!' , 16, 1)
		ROLLBACK TRANSACTION
		RETURN

	END
END
