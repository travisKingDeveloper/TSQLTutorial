CREATE PROC spSelectFromTemp
AS
BEGIN
	SELECT
		*
	FROM 
		#TempFilms
	ORDER BY
		Release DESC
END