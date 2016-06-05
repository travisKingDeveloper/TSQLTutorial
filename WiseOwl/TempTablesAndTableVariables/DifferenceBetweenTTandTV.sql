USE Movies
GO
--This is a Table Variable example
--Taken from previous example
--Different from table variable because temporary tables exists as long as the connection is open
--This is annoying because of the fact that a table exists as long as the connection is open
--Table variables only persist as long as the code is running
--temp tables dont need to explicitely be declared 
--Select * into #temp ...
--generally table variables are better than temp tables
--small data table variables, large data is better for temp tables
	--this is because temp tables are indexed
DECLARE @TempPeople TABLE
(
	PersonName VARCHAR(MAX),
	PersonDOB  DATETIME
)

INSERT INTO @TempPeople
SELECT
	A.ActorName,
	A.ActorDOB
FROM
	tblActor AS A
WHERE
	A.ActorDOB < '1950-01-01'

SELECT * FROM @TempPeople