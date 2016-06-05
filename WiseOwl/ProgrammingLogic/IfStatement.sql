DECLARE @NumFiles INT

SET @NumFiles = (SELECT COUNT(*) FROM tblFilm WHERE FilmBudgetDollars > 1000000)

IF @NumFiles > 500
	BEGIN
		PRINT 'THERE ARE A LOT OF MOVIES WITH HUGE BUDGETS ' + CAST(@NumFiles as VARCHAR(MAX))
	END
ELSE IF @NUMFiles > 250
	BEGIN
		PRINT 'There are not a lot of huge budgets ' +  CAST(@NumFiles as VARCHAR(MAX))
	END
ELSE 
	BEGIN
		PRINT 'There are barely any huge budgets'
	END