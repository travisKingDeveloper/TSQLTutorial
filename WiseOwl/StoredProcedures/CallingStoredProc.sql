--EXEC spFilmCriteria @MinLength=120 , @MaxLength=200 , @Title = "star"

DECLARE @Names VARCHAR(MAX)
DECLARE @Count INT
DECLARE @ReturnValue INT

EXEC @ReturnValue = spFilmsInYear 
	@Year = 2001,
	@FilmList = @Names OUTPUT,
	@FilmCount = @Count OUTPUT

PRINT @Names
PRINT CAST(@Count AS VARCHAR(MAX))
PRINT 'THIS IS THE RETURN VALUE ' + CAST(@ReturnValue AS VARCHAR(MAX))
SELECT @Names AS Names , @Count AS OutputCount , @ReturnValue as ReturnValue
