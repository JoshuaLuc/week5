﻿CREATE TABLE [dbo].[Author]
(
	AuthorId INT NOT NULL PRIMARY KEY,
	Fname VARCHAR(30) NOT NULL,
	Lname VARCHAR(30) NOT NULL,
	TaxFileNumber INT NOT NULL
)