﻿CREATE TABLE [dbo].Book
(
	ISBN VARCHAR(50) NOT NULL PRIMARY KEY,
	TITLE VARCHAR(50) NOT NULL,
	YEARPUB INT NOT NULL,
	StuId VARCHAR(10) NULL,
	AuthorId INT NOT NULL FOREIGN KEY REFERENCES Author,
	FOREIGN KEY (StuId) REFERENCES Student(StuId),
	
)
