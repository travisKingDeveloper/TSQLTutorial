SELECT * FROM tblActor WHERE ActorDateOfDeath IS NOT NULL

SELECT ActorDateOfDeath FROM tblActor WHERE ActorDateOfDeath = 'TODAY'
UPDATE tblActor SET ActorDateOfDeath = 'TODAY' WHERE ActorName = 'TEST ACTOR'