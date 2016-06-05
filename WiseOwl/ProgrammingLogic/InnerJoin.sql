SELECT 
	* 
FROM 
	tblFilm AS F
		INNER JOIN tblDirector AS D
		ON F.FilmDirectorID = D.DirectorID
WHERE 
	FilmName = 'Iron Man 3'

DELETE FROM
tblFilm
WHERE 
FilmName = 'Iron Man 3'