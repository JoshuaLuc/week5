﻿/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


IF '$(LoadTestData)' = 'true'

BEGIN

DELETE FROM STUDENT;
DELETE FROM BOOK;
DELETE FROM AUTHOR;



INSERT INTO AUTHOR (AUTHORID, FNAME, LNAME, TAXFILENUMBER) VALUES
(32567, 'Edgar','Codd', 150111222 ),
(76543, 'Vinton', 'Cerf', 150222333),
(12345,'Alan', 'Turing', 150333444);


INSERT INTO BOOK (ISBN, TITLE, YEARPUB, STUID, AUTHORID) VALUES
('978-3-16-148410-0', 'Relationships with Databases, the ins and outs', 1970,NULL,32567),
('978-3-16148410-1','Normalisation, how to make a database geek fit in', 1973,NULL, 32567),
('978-3-16148410-2','TCP/IP, the protocol for the masses', 1983,NULL,76543),
('978-3-16148410-3','The Man, the Bombe, and the Enigma', 1940,NULL, 12345);


INSERT INTO STUDENT (STUID, FNAME, LNAME, EMAIL, MOBILENO) VALUES
('s12345678', 'Fred', 'Flintstone', '12345678@student.swin.edu.au', 0400555111),
('s23456789', 'Barney', 'Rubble', '23456789@student.swin.edu.au', 0400555222),
('s34567890', 'Bam-Bam', 'Rubble', '34567890@student.swin.edu.au', 0400555333);

END;