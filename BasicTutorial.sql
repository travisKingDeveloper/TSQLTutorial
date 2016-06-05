﻿﻿--DEMONSTRATION CODE FOR YOUTUBE VIDEO : Introduction to Transact-SQL (T-SQL) using Microsoft SQL Server  
/*taken individually these tasks can be pretty useful for basic understanding
Try and Create the db firstby doing copying and pasting tasks one, two, and three into a new query and 
doing the rest of the tasks in order in individual query windows*/

/* START TASK ONE : Create a Database called "Sandboxlearning" */

CREATE DATABASE Sandboxlearning

/* FINISH TASK ONE  */



/* START TASK TWO : Create a new Table, with six columns within a database */

USE [Sandboxlearning]
GO
CREATE TABLE Disasters
(
PrimaryID  int PRIMARY KEY IDENTITY,
Year  varchar(255),
Country  varchar(255),
Location  varchar(255),
Killed int,
DisasterID int
)

/* FINISH TASK TWO */

/* START TASK THREE : Inserting data into the Disaster database */
/* This specifies to insert the data 5 columns, the PrimaryID column will autoincrement */

USE [Sandboxlearning]
GO
INSERT INTO Disasters (Year, Country, Location,	Killed,	DisasterID)
VALUES ('1996','Nigeria','Akwa Ibom','220','10'),
('2008','Philippines','Cebu','644','9'),
('2000','Nigeria','Warri','260','5'),
('1988','India','Ahmadabad','130','10'),
('1960','Morocco','Agadir','12000','1'),
('1997','Ethiopia','Afder and Liben districts','297','4'),
('1998','Turkey','Adana, Ceyhan, Hatay','145','1'),
('2005','Nigeria','Adamawa','561','2'),
('2004','Indonesia','Aceh province (Sumatra)','165708','1'),
('2000','Mexico','Acatlan de Perez Figueroa','120','4'),
('1957','Mexico','Acapulco','160','1'),
('1909','Mexico','Acapulco','250','8'),
('2000','Cote dIvoire','Abidjan','169','10'),
('1966','United Kingdom','Wales','140','7'),
('2004','Morocco','Aït Kamra, Tamassint','628','1'),
('1967','Turkey','West Turkey ','183','1'),
('1994','Madagascar','Vatomandry','200','9'),
('1967','Brazil',' Rio, Sao Paulo','785','4'),
('1973','Philippines','Central','270','9'),
('1970','Philippines',' Bulacan','137','9'),
('1970','Philippines','Bicol area','1551','9'),
('1986','El Salvador',' San Salvador','1100','1'),
('1961','Brazil',' Niteroi','323','8'),
('2000','Chad',' Logone Occidental','607','2'),
('1994','China P Rep','Xinjiang Province','325','8'),
('1960','Japan',' Honshu Island','138','1'),
('1986','Bangladesh',' Dhaleswari river','500','10'),
('2004','Bangladesh','Tekhnaf','153','9'),
('1985','Italy','Dolomite','329','8')

/* FINISH TASK THREE  */


/* START TASK FOUR : Write a SELECT ALL query */

USE [Sandboxlearning]
GO
SELECT * FROM Disasters

/* FINISH TASK FOUR  */



/* START TASK FIVE : SELECT  only data from the "Country" and "Location" columns*/

USE [Sandboxlearning]
GO
SELECT Country, Location FROM Disasters

/* FINISH TASK FIVE  */



/* START TASK SIX : Join two columns together in a new columnn (Concatenation) */

USE [Sandboxlearning]
GO
SELECT Killed, Country + ' , ' + Location AS DetailedLocation
FROM Disasters

/* FINISH TASK SIX */



/* START TASK SEVEN : Sort in Ascending order */

USE [Sandboxlearning]
GO
SELECT * FROM Disasters
ORDER BY Killed ASC

/* FINISH TASK SEVEN  */



/* START TASK EIGHT: Update Records */

USE [Sandboxlearning]
GO
UPDATE Disasters
SET Location = 'RenamedColumn Akwa-Ibom'
WHERE Location = 'Akwa Ibom'

/* FINISH TASK EIGHT */




/* START TASK NINE : Average by a GROUP */

USE [Sandboxlearning]
GO
SELECT Country, AVG(Killed) AS AvKilled FROM Disasters
GROUP BY Country

/* FINSH TASK NINE  */


/* START TASK TEN : Wildcard - A substitute for zero or more characters */

USE [Sandboxlearning]
GO
SELECT * FROM Disasters
WHERE Country LIKE 'B%'

/* FINISH TASK TEN  */



/* START TASK ELEVEN : IN clause - specify multiple values in a WHERE clause */

USE [Sandboxlearning]
GO
SELECT * FROM Disasters
WHERE Country IN ('Mexico','Philippines')

/* FINISH TASK ELEVEN  */


/* START TASK TWELEVE : BETWEEN clause */

USE [Sandboxlearning]
GO
SELECT * FROM Disasters
WHERE Killed
BETWEEN '500' AND '1000'

/* FINISH TASK TWELEVE */





/* START TASK THIRTEEN : Create a new table called "Reference" */

USE [Sandboxlearning]
GO
CREATE TABLE Reference
(
DisasterType  varchar(255),
DisasterID int
)

/* FINISH TASK THIRTEEN */



/* START TASK FOURTEEN : INSERT data into "Reference" database */

INSERT INTO Reference (DisasterType, DisasterID)
VALUES ('Earthquake ','1'),
('Epidemic','2'),
('Extreme temperature','3'),
('Flood','4'),
('Industrial Accident','5'),
('Mass movement dry','6'),
('Mass movement wet','7'),
('Miscellaneous accident','8'),
('Storm','9'),
('Transport Accident','10'),
('Volcano','11'),
('Wildfire','12')

/* FINISH TASK FOURTEEN */



/* START TASK FIFTEEN : Joining two tables with an INNER JOIN */

USE [Sandboxlearning]
GO
SELECT Disasters.Country,Disasters.Location, Reference.[DisasterType], Reference.DisasterID,Disasters.DisasterID
FROM Disasters
INNER JOIN Reference
ON Disasters.DisasterID=Reference.DisasterID

/* FINISH TASK FIFTEEN  */



/* START TASK SIXTEEN : Backup Table */

USE [Sandboxlearning]
GO
SELECT *
INTO Ref_Backup 
FROM Reference

/* FINISH TASK SIXTEEN  */

/* START TASK SEVENTEEN : Deleting Specific values */

USE [SandboxLearning]
GO
DELETE FROM Reference
WHERE DisasterType = 'Flood'


/* START TASK SEVENTEEN */


/* START TASK EIGHTEEN : Removing just the data from a table */
 
USE [Sandboxlearning]
GO
TRUNCATE TABLE Disasters

/* FINISH TASK EIGHTEEN  */



/* START TASK NINETEEN : DELETING a table */

USE [Sandboxlearning]
GO
DROP TABLE Disasters

/* FINISH TASK NINETEEN  */



/* START TASK TWENTY : DELETING a database */
/* Note don't include "USE" and "GO" syntax as you can't be inside a database when you delete it */


DROP DATABASE Sandboxlearning

/* FINISH TASK TWENTY */
