DECLARE @FilmBoxOfficeDollars INT
DECLARE @FilmBudgetDollars INT
DECLARE @FilmCertificateID INT
DECLARE @FilmCountryID INT
DECLARE @FilmCumulativeOscars INT
DECLARE @FilmDirectorID INT
DECLARE @FilmLanguageID INT
DECLARE @FilmName VARCHAR(MAX)
DECLARE @FilmOscarNominations INT
DECLARE @FilmOscarWins INT
DECLARE @FilmReleaseDate DATETIME
DECLARE @FilmRunTimeMinutes INT
DECLARE @FilmStudioID INT
DECLARE @FilmSynopsis VARCHAR(MAX)

DELETE FROM tblFilm2;

DECLARE FilmCopy CURSOR FORWARD_ONLY FOR 
	SELECT
		F.FilmBoxOfficeDollars,
		F.FilmBudgetDollars,
		F.FilmCertificateID,
		F.FilmCountryID,
		F.FilmCumulativeOscars,
		F.FilmDirectorID,
		F.FilmLanguageID,
		F.FilmName,
		F.FilmOscarNominations,
		F.FilmOscarWins,
		F.FilmReleaseDate,
		F.FilmRunTimeMinutes,
		F.FilmStudioID,
		F.FilmSynopsis
	FROM 
		tblFilm AS F

	OPEN FilmCopy

		FETCH NEXT FROM FilmCopy
		INTO 
			@FilmBoxOfficeDollars,
			@FilmBudgetDollars,
			@FilmCertificateID,
			@FilmCountryID,
			@FilmCumulativeOscars,
			@FilmDirectorID,
			@FilmLanguageID,
			@FilmName,
			@FilmOscarNominations,
			@FilmOscarWins,
			@FilmReleaseDate,
			@FilmRunTimeMinutes,
			@FilmStudioID,
			@FilmSynopsis

	WHILE @@FETCH_STATUS = 0
		BEGIN 
		INSERT INTO tblFilm2
		(
			FilmBoxOfficeDollars,
			FilmBudgetDollars,
			FilmCertificateID,
			FilmCountryID,
			FilmCumulativeOscars,
			FilmDirectorID,
			FilmLanguageID,
			FilmName,
			FilmOscarNominations,
			FilmOscarWins,
			FilmReleaseDate,
			FilmRunTimeMinutes,
			FilmStudioID,
			FilmSynopsis
		)
		VALUES
		(
			@FilmBoxOfficeDollars,
			@FilmBudgetDollars,
			@FilmCertificateID,
			@FilmCountryID,
			@FilmCumulativeOscars,
			@FilmDirectorID,
			@FilmLanguageID,
			@FilmName,
			@FilmOscarNominations,
			@FilmOscarWins,
			@FilmReleaseDate,
			@FilmRunTimeMinutes,
			@FilmStudioID,
			@FilmSynopsis
		)		
		FETCH NEXT FROM FilmCopy
		INTO 
			@FilmBoxOfficeDollars,
			@FilmBudgetDollars,
			@FilmCertificateID,
			@FilmCountryID,
			@FilmCumulativeOscars,
			@FilmDirectorID,
			@FilmLanguageID,
			@FilmName,
			@FilmOscarNominations,
			@FilmOscarWins,
			@FilmReleaseDate,
			@FilmRunTimeMinutes,
			@FilmStudioID,
			@FilmSynopsis
		END

CLOSE FilmCopy
DEALLOCATE FilmCopy

SELECT * FROM tblFilm2