--ARBITRARY DOES NOT EXIST
--specifiying the order of triggers

USE MOVIES 
GO

EXEC sp_settriggerorder @triggername = trgFirstTrigger,
						@order = 'first',
						@stmttype='CREATE_TABLE',
						@namespace = 'DATABASE' 

EXEC sp_settriggerorder @triggername = trgSecondTrigger,
						@order = 'second',
						@stmttype='CREATE_TABLE',
						@namespace = 'DATABASE' 