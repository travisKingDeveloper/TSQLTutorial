--Using Dynamic SQL

--Using EXECUTE
EXECUTE ('SELECT * FROM tblFilm')

--Using sp_executesql caches the query and therefore this is a preferred method
EXECUTE sp_executesql N'SELECT * FROM tblFilm'